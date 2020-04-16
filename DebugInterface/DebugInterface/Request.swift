//
//  Request.swift
//  DebugInterface
//
//  Created by Mitchell Budge on 4/16/20.
//  Copyright © 2020 Mitchell Budge. All rights reserved.
//

import SwiftUI

struct Request {
    let method: String
    let statusCode: Int
    let speed: Int
    let url: String
    
    init(method: String, statusCode: Int, speed: Int, url: String) {
        self.method = method
        self.statusCode = statusCode
        self.speed = speed
        self.url = url
    }
}
