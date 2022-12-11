//
//  ContentView.swift
//  D-Hospital
//
//  Created by I Gede Bagus Wirawan on 11/12/22.
//

import SwiftUI

struct HomeView: View {
    
    //Variable
    
    //Boolean
    
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                List {
                    
                }
                
            }
            .navigationTitle("D-Hospital")
            .navigationBarBackButtonHidden(true)
            
        } //Navigation
        
    }
}

//for show the preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
