//
//  MockRequestsListViewModel.swift
//  MKDebugTools-iOS
//
//  Created by Mitchell Budge on 4/22/20.
//  Copyright © 2020 McKesson. All rights reserved.
//

import SwiftUI
import Combine

class MockRequestsListViewModel: ObservableObject {
    @Published var mockRequests = [MockRequest]()
    public let baseURL = "https://my.api.mockaroo.com/mock_request_schema.json?key=a0a06c80"
    func fetchRequests() {
        guard let url = URL(string: baseURL) else { return }
        URLSession.shared.dataTask(with: url) { data, res, error in
            if let error = error {
            print("Error: \(error)")
            }
            guard let response = res as? HTTPURLResponse, response.statusCode == 200 else {
                print("Invalid response: \(String(describing: res))")
                return
            }
            guard let data = data else {
                print("No data returned from data task")
                return
            }
            do {
                let decoder = JSONDecoder()
                let decodedRequests = try decoder.decode([MockRequest].self, from: data)
                self.mockRequests = decodedRequests
            } catch {
                print("Error decoding JSON from data")
            }
        }
        .resume()
    }
}

