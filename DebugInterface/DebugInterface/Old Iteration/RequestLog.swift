//
//  RequestLog.swift
//  DebugInterface
//
//  Created by Mitchell Budge on 4/16/20.
//  Copyright © 2020 Mitchell Budge. All rights reserved.
//

import SwiftUI

struct RequestLog : View {
    
    @State private var inputText: String = ""
    
    let requests = [
        Request(method: "GET", statusCode: 200, speed: 526, url: "https://jsonplaceholder.typicode.com/posts/24"),
        Request(method: "GET", statusCode: 404, speed: 490, url: "https://jsonplaceholder.typicode.com/posts/120"),
        Request(method: "GET", statusCode: 200, speed: 501, url: "https://jsonplaceholder.typicode.com/posts/9"),
        Request(method: "GET", statusCode: 200, speed: 347, url: "https://jsonplaceholder.typicode.com/posts/photos"),
        Request(method: "GET", statusCode: 404, speed: 210, url: "https://jsonplaceholder.typicode.com/posts/wrongURL"),
        Request(method: "POST", statusCode: 201, speed: 438, url: "https://jsonplaceholder.typicode.com/posts/posts"),
        Request(method: "GET", statusCode: 200, speed: 192, url: "https://jsonplaceholder.typicode.com/posts/1")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $inputText)
                List(requests) { request in
                    VStack(alignment: .leading, spacing: 3) {
                        Text(request.method)
                            .bold()
                        Text(" \(request.statusCode) ")
                            .foregroundColor(request.color)
                            .padding(2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8, style: .circular)
                                    .stroke(request.color))
                        Text("\(request.speed)ms")
                    }
                    Spacer()
                    Text(request.url)
                    
                }
            }
            .navigationBarTitle("Requests")
        }
    }
    
    
}

struct RequestLog_Previews: PreviewProvider {
    static var previews: some View {
        RequestLog()
    }
}
