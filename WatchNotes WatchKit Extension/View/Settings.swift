//
//  Settings.swift
//  WatchNotes WatchKit Extension
//
//  Created by Thomas Cowern New on 2/1/22.
//

import SwiftUI

struct Settings: View {
    
    // MARK:  Properties
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    // MARK:  Body
    var body: some View {
        VStack(spacing: 8) {
            // Header
            HeaderView(title: "Settings")
            
            // Acutal line count
            Text("Lines \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // Slider
            Slider(value: $value, in: 1...4, step: 1)
                .accentColor(.accentColor)
            
        }// End of VStack
    }
}

// MARK:  Preview
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
