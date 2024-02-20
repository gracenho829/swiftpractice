//
//  SwiftUIView.swift
//  swiftProject
//
//  Created by Grace Nho on 2024/02/19.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene{
        WindowGroup{
            ContentView()
                .environment(modelData)
        }
    }
}
