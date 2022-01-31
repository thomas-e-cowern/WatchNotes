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
            Text("Hello, World!")
                .padding()
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
