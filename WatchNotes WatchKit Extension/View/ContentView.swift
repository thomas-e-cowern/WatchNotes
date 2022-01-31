//
//  ContentView.swift
//  WatchNotes WatchKit Extension
//
//  Created by Thomas Cowern New on 1/31/22.
//

import SwiftUI

struct ContentView: View {
    // MARK:  Properties
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""


    // MARK: Function

    // MARK: Body
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                
                Button {
                    // Run button action when text is not empty
                    // Create a note itme and initialize it with text value
                    // Add a new note to the notes array (append)
                    // Save the notes array (Funtcion)
                    
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                }
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)

            }// End of HStack
            
            Spacer()
        }// End of VStack
        .navigationTitle("Notes")
    }
}

// MARK:  Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
