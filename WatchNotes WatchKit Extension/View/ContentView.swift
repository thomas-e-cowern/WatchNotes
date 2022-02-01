//
//  ContentView.swift
//  WatchNotes WatchKit Extension
//
//  Created by Thomas Cowern New on 1/31/22.
//

import SwiftUI

struct ContentView: View {
    // MARK:  Properties
    
    @AppStorage("lineCount") var lineCount: Int = 1
    
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""


    // MARK: Function
    
    func getDocumentDirectory() -> URL {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return path[0]
    }
    
    func save() {
//        dump(notes)
        print("In save function")
        do {
            // convert the notes array to data using JSONEncoder
            let data = try JSONEncoder().encode(notes)
            
            // create a new url to save the file using the getDocumentDirectory
            let url = getDocumentDirectory().appendingPathComponent("notes")
            
            // write the data to the given url
            try data.write(to: url)
            
        } catch {
            print("Saving data has failed")
        }
    }
    
    func load() {

        DispatchQueue.main.async {
            do {
                // get the notes url path
                let url = getDocumentDirectory().appendingPathComponent("notes")
                
                // create a new property for the data
                let data = try Data(contentsOf: url)
                
                // decode data and assign value to property
                notes = try JSONDecoder().decode([Note].self, from: data)
                
            } catch {
                // Do nothing if no data available
                print("failure in load")
            }
        }
    }
    
    func delete(offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
            save()
        }
    }
    
    // MARK: Body
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                
                Button {
                    // Run button action when text is not empty
                    guard text.isEmpty == false else { return }
                    
                    // Create a note itme and initialize it with text value
                    let note = Note(id: UUID(), text: text)
                    
                    // Add a new note to the notes array (append)
                    notes.append(note)
                    
                    // Empty the text field
                    text = ""
                    
                    // Save the notes array (Funtcion)
                    save()
                    
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                }
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)

            }// End of HStack
            
            Spacer()
            
            if notes.count >= 1 {
                List {
                    ForEach(0..<notes.count, id:\.self) { i in
                        NavigationLink(destination:DetailView(note: notes[i], count: notes.count, index: i)) {
                            HStack {
                                Capsule()
                                    .frame(width: 4)
                                    .foregroundColor(.accentColor)
                                Text(notes[i].text)
                                    .lineLimit(lineCount)
                                    .padding(.leading, 5)
                            }
                        }// End of HStack
                    }// End of ForEach
                    .onDelete(perform: delete)
                }// End of list
            } else {
                Spacer()
                Image(systemName: "note.text")
                Spacer()
            }// End of if
        }// End of VStack
        .navigationTitle("Notes")
        .onAppear(perform: {
            load()
        })
    }
}

// MARK:  Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
