//
//  CreditsView.swift
//  WatchNotes WatchKit Extension
//
//  Created by Thomas Cowern New on 1/31/22.
//

import SwiftUI

struct CreditsView: View {
    // MARK:  Properties
    
    // MARK:  Body
    var body: some View {
        VStack(spacing: 3) {
            // Profile Image
            Image("Developer_TC")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // Header
            HeaderView(title: "Credits")
            
            // Content
            Text("Thomas Cowern")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        }// End of VStack
    }
}

// MARK:  Preview
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
