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
  //  let requests = []
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $inputText)
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
