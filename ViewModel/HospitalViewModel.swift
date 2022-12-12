//
//  HospitalViewModel.swift
//  D-Hospital
//
//  Created by I Gede Bagus Wirawan on 12/12/22.
//

import Foundation
import SwiftUI

class HospitalViewModel: ObservableObject {
    @Published var hospitals: [Hospital] = []
    
    func fetchHospitalData(){
        guard let url = URL(string: "https://dekontaminasi.com/api/id/covid19/hospitals") else {
            print("Invalid url...")
            return
        }
        
        let hospital = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data =  data, error == nil else {
                return
            }
            
            //convert to JSON
            do {
                let hospitals = try JSONDecoder().decode([Hospital].self, from: data)
                DispatchQueue.main.async {
                    self?.hospitals = hospitals
                }
            }
            catch {
                print(error)
            }
        }
        print(hospital)

        hospital.resume()
        
    }
}
