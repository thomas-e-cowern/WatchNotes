//
//  Note.swift
//  WatchNotes WatchKit Extension
//
//  Created by Thomas Cowern New on 1/31/22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
