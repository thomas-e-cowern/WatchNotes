//
//  HeaderView.swift
//  WatchNotes WatchKit Extension
//
//  Created by Thomas Cowern New on 2/1/22.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK:  Properties
    var title: String = ""
    
    // MARK:  Body
    var body: some View {
        
        // Title
        if title != "" {
            Text(title.uppercased())
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
        }
        
        // Seperator
        ZStack {
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
                
            }// End of HStack
            .foregroundColor(.accentColor)
        }// End of VStack
    }
}

// MARK:  Preview
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView()
            
            HeaderView(title: "Credits")
        }
    }
}
