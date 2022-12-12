//
//  ContentView.swift
//  D-Hospital
//
//  Created by I Gede Bagus Wirawan on 11/12/22.
//

import SwiftUI

struct HomeView: View {
    
    //Model
    //@EnvironmentObject var network: Network
    @StateObject var viewModel = HospitalViewModel()

    //Variable
    @State private var searchText = ""
    
    //Boolean
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                ScrollView {
                    ForEach(viewModel.hospitals, id: \.self) { hospital in
                        CardView(hospitalName: hospital.name ?? "", province: hospital.province ?? "", hospitalTelp: hospital.phone ?? "")
                    }
                    .searchable(text: $searchText) {
                        ForEach(searchResults, id: \.self) { result in
                            Text("Are you looking for \(result)?").searchCompletion(result)
                        }
                    }
                }
                
                
            }
            .navigationTitle("D-Hospital")
            .navigationBarBackButtonHidden(true)
            .onAppear {
                viewModel.fetchHospitalData()
            }
            
        } //Navigation
        
    } //View
    
//    var searchResults: [ Hospital ] {
//        if searchText.isEmpty {
//            return viewModel.hospitals
//        } else {
//            return viewModel.hospitals.filter { $0.contains(searchText) }
//        }
//    }
    
}

//for show the preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            //.environmentObject(Network())
    }
}
