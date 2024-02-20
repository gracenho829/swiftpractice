//
//  LandmarkDetail.swift
//  swiftProject
//
//  Created by Grace Nho on 2024/02/19.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height:300)
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[1])
}
