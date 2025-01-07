//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Serrano Soria, Juan on 07/01/2025.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .aspectRatio(contentMode: .fit) // so it does not get distorted
                .frame(width: 60, height: 60)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
        LandmarkRow(landmark: landmarks[2])
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: landmarks[6])
        LandmarkRow(landmark: landmarks[7])
        LandmarkRow(landmark: landmarks[8])
    }
}
