//
//  DetailView.swift
//  WatchNotes WatchKit Extension
//
//  Created by Thomas Cowern New on 1/31/22.
//

import SwiftUI

struct DetailView: View {
    // MARK:  Properties
    let note: Note
    let count: Int
    let index: Int
    
    // MARK:  Body
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK:  Preview
struct DetailView_Previews: PreviewProvider {
    
    static var sampleData: Note = Note(id: UUID(), text: "Note One")
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
