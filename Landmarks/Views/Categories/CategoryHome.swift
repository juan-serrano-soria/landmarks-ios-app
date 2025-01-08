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
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
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
