//
//  ContentView.swift
//  WatchNotes WatchKit Extension
//
//  Created by Thomas Cowern New on 1/31/22.
//

import SwiftUI
// MARK:  Properties
@State private var notes: [Note] = []
@State private var text: String = ""

// MARK: Function

// MARK: Body
struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .padding()
    }
}

// MARK:  Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
