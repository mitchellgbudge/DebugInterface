//
//  Request.swift
//  DebugInterface
//
//  Created by Mitchell Budge on 4/16/20.
//  Copyright © 2020 Mitchell Budge. All rights reserved.
//

import SwiftUI

struct Request: Identifiable {
    let method: String
    let statusCode: Int
    let speed: Int
    let url: String
    let id: UUID
    var color: Color {
        if statusCode == 200 || statusCode == 201 {
            return Color.green
        } else {
            return Color.orange
        }
    }
    
    init(method: String, statusCode: Int, speed: Int, url: String, id: UUID = UUID(), color: Color = .green) {
        self.method = method
        self.statusCode = statusCode
        self.speed = speed
        self.url = url
        self.id = id
    }
    
    
}
