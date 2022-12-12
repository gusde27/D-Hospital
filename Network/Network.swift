//
//  Network.swift
//  D-Hospital
//
//  Created by I Gede Bagus Wirawan on 11/12/22.
//

import Foundation

//class Network: ObservableObject {
//    @Published var hospitals: [Hospital] = []
//
//    func getHospitals() {
//        guard let url = URL(string: "https://dekontaminasi.com/api/id/covid19/hospitals") else { fatalError("Missing URL") }
//
//        let urlRequest = URLRequest(url: url)
//
//        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
//            if let error = error {
//                print("Request error: ", error)
//                return
//            }
//
//            guard let response = response as? HTTPURLResponse else { return }
//
//            if response.statusCode == 200 {
//                guard let data = data else { return }
//                DispatchQueue.main.async {
//                    do {
//                        let decodedHospitals = try JSONDecoder().decode([Hospital].self, from: data)
//                        self.hospitals = decodedHospitals
//                    } catch let error {
//                        print("Error decoding: ", error)
//                    }
//                }
//            }
//        }
//
//        dataTask.resume()
//    }
//}
