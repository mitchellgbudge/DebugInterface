//
//  NetworkDebuggerMainView.swift
//  MKDebugTools-iOS
//
//  Created by Mitchell Budge on 4/22/20.
//  Copyright © 2020 McKesson. All rights reserved.
//

import SwiftUI
import MKUICommon

struct NetworkDebuggerMainView: View {
    @ObservedObject var mockRequestsVM = MockRequestsListViewModel()
    var body: some View {
        NavigationView {
            Form {
                List(mockRequestsVM.mockRequests) { request in
                    NavigationLink(destination: NetworkRequestView()) {
                        MKRowStyleDetail2(title: "\(request.requestURL)", subtitle: "\(request.date)", detail: "\(request.statusCode)", subdetail: "\(request.httpMethod)", usesSecondaryFont: false)
                    }
                }
            }
            .navigationBarTitle("Requests")
            .navigationBarItems(leading: MKRowStyleButton(title: "Start Session", action: {
                self.mockRequestsVM.fetchRequests()
            }),
                trailing: MKRowStyleButton(title: "Done", action: { print("Done button tapped")}))
        }
    }
}

struct NetworkDebuggerMainView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkDebuggerMainView()
    }
}
