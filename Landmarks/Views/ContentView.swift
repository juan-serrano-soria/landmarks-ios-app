//
//  ContentView.swift
//  Landmarks
//
//  Created by Serrano Soria, Juan on 25/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .featured

    enum Tab {
        case featured
        case list
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            CategoryHome()
                .tabItem {
                    Label("特集される", systemImage: "star")
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem {
                    Label("リスト", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
