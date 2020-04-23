//
//  MockRequest.swift
//  MKDebugTools-iOS
//
//  Created by Mitchell Budge on 4/22/20.
//  Copyright © 2020 McKesson. All rights reserved.
//

import Foundation

public struct MockRequest: Identifiable, Decodable {
    public var id: Int
    public var requestURL: String
    public var date: String
    public var statusCode: Int
    public var httpMethod: String
    public var speed: Int
}

public enum HTTPMethod: String {
    case get = "GET"
    case put = "PUT"
    case post = "POST"
    case delete = "DELETE"
    case head = "HEAD"
    case connect = "CONNECT"
    case options = "OPTIONS"
    case trace = "TRACE"
    case patch = "PATCH"
}
