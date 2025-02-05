//
//  NoteView.swift
//  InstagramClone
//
//  Created by Ariel on 2025-02-04.
//

import SwiftUI

let profiles: [ProfileModel] = [
    .init(id: 1, picture: "pfp", name: "Your note", realname: "Ariel Bendahan" ,posts: 1, followers: 80, following: 135),
    .init(id: 2, picture: "eviljonkler", name: "jonklergaming",realname: "Joker" ,posts: 10, followers: 500, following: 120),
    .init(id: 3, picture: "restingoon", name: "coffeeplease!", realname: "Nautica" ,posts: 25, followers: 300, following: 150),
    .init(id: 4, picture: "defaultpicture", name: "paperbagman", realname: "Paper Man" ,posts: 5, followers: 50, following: 40),
    .init(id: 5, picture: "squigame!", name: "squigame!", realname: "Oh Il-nam" ,posts: 8, followers: 1200, following: 80),
    .init(id: 6, picture: "drake", name: "champagnepapi", realname: "Drake",posts: 100, followers: 1000000, following: 500),
    .init(id: 7, picture: "druskii", name: "druski", realname: "Druski", posts: 15, followers: 400, following: 200),
    .init(id: 8, picture: "tyler", name: "feliciathegoat", realname: "Tyler, the Creator",posts: 50, followers: 900000, following: 300),
    .init(id: 9, picture: "kendrick", name: "kendricklamar", realname: "Kendrick Lamar",posts: 60, followers: 800000, following: 250)
]

struct NoteView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(profiles) {profile in
                    VStack {
                        Image(profile.picture)
                            .resizable()
                            .frame(width: 85, height: 85)
                            .clipShape(Circle())
                            .scaledToFit()
                        Text(profile.name)
                            .font(.system(size: 12))
                            .lineLimit(1)
                            .frame(width: 95)
                            .multilineTextAlignment(.center)
                    }
                }
                
            }
        }
        .padding()
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
