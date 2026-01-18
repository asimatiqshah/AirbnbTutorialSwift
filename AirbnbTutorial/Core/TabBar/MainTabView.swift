//
//  MainTabView.swift
//  AirbnbTutorial
//
//  Created by syed asim atiq on 17/01/2026.
//

import SwiftUI
struct MainTabView : View {
    var body : some View {
        TabView{
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            Wishlists()
                .tabItem {
                    Label("Wishlists", systemImage: "heart")
                }
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
