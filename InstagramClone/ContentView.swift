//
//  ContentView.swift
//  InstagramClone
//
//  Created by english on 2025-01-30.
//

import SwiftUI

// Test commit

struct ContentView: View {
    var body: some View {
        TabView() {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            SearchScreen()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            CreatePostScreen()
                .tabItem {
                    Image(systemName: "plus.app")
                }
            ReelScreen()
                .tabItem {
                    Image(systemName: "play.square.fill")
                }
            ProfileScreen(profile: ProfileModel(id: 1, picture: "pfp", name: "thepersistent2020", realname: "Ariel Bendahan", posts: 1, followers: 80, following: 823))
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
