//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Serrano Soria, Juan on 07/01/2025.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("観光名所")
        } detail: {
            Text("S観光名所を選んでください")
        }
    }
}

#Preview {
    LandmarkList()
}
