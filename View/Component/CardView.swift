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
    var hospitalTelp: String = "(0361) 943049"
    
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
                        .font(.title3)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    
                    Button(action: {
                        let tel = "tel://"
                        let formattedString = tel + hospitalTelp
                        guard let url = URL(string: formattedString) else { return }
                        UIApplication.shared.open(url)
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
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1)
        )
        .padding([.top, .horizontal])
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(hospitalName: "RS Sanglah", province: "Bali", hospitalTelp: "(0361) 943049")
    }
}
