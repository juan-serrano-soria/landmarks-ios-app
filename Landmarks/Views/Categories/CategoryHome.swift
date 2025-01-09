//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Serrano Soria, Juan on 08/01/2025.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData

    var body: some View {
        NavigationSplitView {
            List {
                modelData.featured[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("特集される")
        } detail: {
            Text("観光名所を選んでください")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
