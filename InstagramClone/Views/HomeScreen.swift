//
//  HomeScreen.swift
//  InstagramClone
//
//  Created by english on 2025-01-30.
//

import SwiftUI



struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack {
                    HStack {
                        Image("instagramlogo")
                            .resizable()
                            .frame(width: 125, height: 50)
                            .padding(.leading)
                        Spacer()
                        NavigationLink(destination: NotificationsScreen()) {
                            Image(systemName: "heart")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                        }
                        NavigationLink(destination: MessagesScreen()) {
                            Image(systemName: "text.bubble.rtl")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                                .padding(.horizontal)
                        }
                    }
                    StoriesView()
                    Spacer()
                    PostView()
                }
            }.navigationBarHidden(true)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
