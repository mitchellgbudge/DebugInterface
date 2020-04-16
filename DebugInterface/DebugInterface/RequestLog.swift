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
    let requests = [Request(method: <#T##String#>, statusCode: <#T##Int#>, speed: <#T##Int#>, url: <#T##String#>), Request(method: <#T##String#>, statusCode: <#T##Int#>, speed: <#T##Int#>, url: <#T##String#>)]
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $inputText)
                List(requests) { request in
                    VStack(alignment: .leading) {
                        Text(request.method)
                        
                    }
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
