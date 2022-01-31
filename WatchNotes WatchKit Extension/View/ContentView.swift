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
                    // Action
                    
                } label: {
                    Image(systemName: "plus")
                }
            }// End of HStack
        } //: VStack
        .navigationTitle("Notes")
    }
}

// MARK:  Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
