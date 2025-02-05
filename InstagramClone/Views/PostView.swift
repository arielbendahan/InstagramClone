//
//  PostView.swift
//  InstagramClone
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct PostView: View {
    @State private var isLiked = false
    let posts: [PostData] = [
        .init(id: 1, profileImage: "pfp", name: "thepersistent2020", image: "image1", body: "Hello world!", likes: 120, comments: 15, shares: 5),
        .init(id: 2, profileImage: "eviljonkler", name: "Joker", image: "image2", body: "Why so serious?", likes: 300, comments: 50, shares: 20),
        .init(id: 3, profileImage: "restingoon", name: "coffeeplease!", image: "image3", body: "Need more coffee...", likes: 200, comments: 30, shares: 10),
        .init(id: 4, profileImage: "defaultpicture", name: "paperbagman", image: "image4", body: "Hiding in plain sight.", likes: 75, comments: 10, shares: 3),
        .init(id: 5, profileImage: "squigame!", name: "Oh Il-nam", image: "image5", body: "Green light, red light.", likes: 500, comments: 100, shares: 50),
        .init(id: 6, profileImage: "drake", name: "champagnepapi", image: "image6", body: "Started from the bottom.", likes: 800, comments: 150, shares: 60),
        .init(id: 7, profileImage: "druskii", name: "druski", image: "image7", body: "Coulda been records!", likes: 250, comments: 40, shares: 15),
        .init(id: 8, profileImage: "tyler", name: "feliciathegoat", image: "image8", body: "Call me if you get lost.", likes: 600, comments: 80, shares: 30),
        .init(id: 9, profileImage: "kendrick", name: "kendricklamar", image: "image9", body: "Be humble.", likes: 1000, comments: 200, shares: 90)
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(posts) { post in
                    HStack {
                        Image(post.profileImage)
                            .resizable()
                            .frame(width: 45, height: 45)
                            .clipShape(Circle())
                            .scaledToFit()
                        
                        Text(post.name)
                            .font(.headline)
                            .lineLimit(1)
                        
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                            .foregroundColor(.gray)
                            .font(.title2)
                    }.padding([.top, .horizontal])
                    
                    Image(post.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: 350)
                        .clipShape(Rectangle())
                    
                    VStack(alignment: .leading, spacing: 10) {

                        
                        HStack {
                            Button {
                                self.isLiked.toggle()
                            } label: {
                                Image(systemName: isLiked ? "heart.fill": "heart")
                                    .foregroundColor(isLiked ? .red : .black)
                                    .font(.system(size: 20))
                            }
                            Text("\(post.likes)")
                                .foregroundColor(.black)
                            Image(systemName: "bubble.right")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("\(post.comments)")
                                .foregroundColor(.black)
                            Image(systemName: "paperplane")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("\(post.shares)")
                                .foregroundColor(.black)
                            
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        HStack {
                            Text(post.name)
                                .font(.headline)
                            Text(post.body)
                                .font(.body)
                                .lineLimit(3)
                        }
                        Divider()
                    }
                    .padding([.horizontal, .bottom])
                }
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
