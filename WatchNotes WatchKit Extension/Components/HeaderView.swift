//
//  HeaderView.swift
//  WatchNotes WatchKit Extension
//
//  Created by Thomas Cowern New on 2/1/22.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK:  Properties
    
    // MARK:  Body
    var body: some View {
        // Title
        
        
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
        HeaderView()
    }
}
