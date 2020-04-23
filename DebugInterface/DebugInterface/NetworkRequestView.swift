//
//  NetworkRequestView.swift
//  MKDebugTools-iOS
//
//  Created by Mitchell Budge on 4/22/20.
//  Copyright © 2020 McKesson. All rights reserved.
//

import SwiftUI
import MKUICommon

struct NetworkRequestView: View {
    var body: some View {
        NavigationView {
            Form {
                List {
                    MKRowStyleDetail(title: "Request information", detail: "Detailed Information")
                }
            }
        .navigationBarTitle("Request name")
            .navigationBarItems(trailing: MKRowStyleButton(title: "Delete", action: {
                print("Delete button pressed")
            }))
        }
    }
}

struct NetworkRequestView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkRequestView()
    }
}

