//
//  ContentView.swift
//  Landmarks
//
//  Created by Serrano Soria, Juan on 25/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("姫路城")
                    .font(.title)
                HStack {
                    Text("兵庫県姫路市")
                    Spacer()
                    Text("関西")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("姫路城について")
                    .font(.title2)
                Text("姫路城（ひめじじょう）は、兵庫県姫路市にある日本の城。江戸時代初期に建てられた天守や櫓等の主要建築物が現存し、国宝や重要文化財に指定されている。")
            }
            .padding()
            Spacer() // to move all the content to the top
        }
    }
}

#Preview {
    ContentView()
}
