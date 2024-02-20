//
//  LandmarkList.swift
//  swiftProject
//
//  Created by Grace Nho on 2024/02/19.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    var filteredLandmarks: [Landmark] {
        landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks){
                    landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label:{
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.interactiveSpring, value:filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail:{
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
