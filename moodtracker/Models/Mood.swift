//
//  Mood.swift
//  moodtracker
//
//  Created by Maegan Wilson on 8/9/19.
//  Copyright © 2019 MW. All rights reserved.
//

import Foundation

struct Mood: Codable {
    let id: UUID = UUID()
    var mood: String
    var date_logged: Date
    
    func returnDateString() -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        let datelogged = formatter.string(from: self.date_logged)
        return datelogged
    }
}