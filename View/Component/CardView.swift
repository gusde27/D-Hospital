//
//  CardView.swift
//  D-Hospital
//
//  Created by I Gede Bagus Wirawan on 11/12/22.
//

import SwiftUI

struct CardView: View {
    
    //variable
    var hospitalName: String = ""
    var province: String = ""
    var hospitalTelp: String = ""
    
    var body: some View {
        
        VStack {
//            Image("swiftui-button")
//                .resizable()
//                .aspectRatio(contentMode: .fit)

            HStack {
                VStack(alignment: .leading) {
                    Text(province)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(hospitalName)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("telp".uppercased())
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(.blue)
                            .cornerRadius(10)
                    })
                    
                }
                .layoutPriority(100)

                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(hospitalName: "RS Sanglah", province: "Bali")
    }
}
