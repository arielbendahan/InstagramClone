//
//  NotificationsScreen.swift
//  InstagramClone
//
//  Created by Ariel on 2025-02-05.
//

import SwiftUI

struct NotificationsScreen: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "person.badge.plus")
                        .font(.system(size: 30))
                        .frame(maxWidth: 50, maxHeight: 50)
                        .background(Circle().stroke(.gray))
                    VStack(alignment: .leading) {
                        Text("Follow Requests")
                        Text("Approve or ignore request")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }.padding(.bottom)
                Text("Today")
                    .font(.title2)
                    .bold()
                HStack {
                    Image("eviljonkler")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                    VStack(alignment: .leading) {
                        Text("Joker ")
                            .font(.headline) +
                        Text("posted a thread you might like:")
                        Text("Why so serious? 🤡") +
                        Text("  12h")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    
                }.padding(.bottom)
                HStack {
                    Image("drake")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                    VStack(alignment: .leading) {
                        Text("champagnepapi ")
                            .font(.headline) +
                        Text("started following you.") +
                        Text("   15h")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                }.padding(.bottom)
                Text("Yesterday")
                    .font(.title2)
                    .bold()
                HStack {
                    Image("kendrick")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                    VStack(alignment: .leading) {
                        Text("kendricklamar")
                            .font(.headline) +
                        Text(", who you might know, is on Instagram.") +
                        Text("  20h")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    
                }.padding(.bottom)
                HStack {
                    Image(systemName: "line.3.horizontal.decrease")
                        .font(.system(size: 30))
                        .frame(maxWidth: 60, maxHeight: 60)
                        .background(Circle().stroke(.gray))
                    VStack(alignment: .leading) {
                        Text("Check out the latest results of ") +
                        Text("squigame!")
                            .font(.headline) +
                        Text("'s poll.") +
                        Text("  1d")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    
                }.padding(.bottom)
                Group {
                    Text("Last 7 Days")
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        Image("druskii")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                        VStack(alignment: .leading) {
                            Text("druskii ")
                                .font(.headline) +
                            Text("commented on your post:")
                            Text("😂🔥") +
                            Text("  3d")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }.padding(.bottom)
                    
                    HStack {
                        Image("defaultpicture")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                        VStack(alignment: .leading) {
                            Text("defaultpicture ")
                                .font(.headline) +
                            Text("liked your photo.") +
                            Text("  4d")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }.padding(.bottom)
                    
                    HStack {
                        Image("restingoon")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                        VStack(alignment: .leading) {
                            Text("restingoon ")
                                .font(.headline) +
                            Text("mentioned you in a story.") +
                            Text("  5d")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }.padding(.bottom)
                    
                    HStack {
                        Image("squigame!")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                        VStack(alignment: .leading) {
                            Text("squigame! ")
                                .font(.headline) +
                            Text("tagged you in a post.") +
                            Text("  6d")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }.padding(.bottom)
                    
                    HStack {
                        Image("tyler")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                        VStack(alignment: .leading) {
                            Text("tylerthecreator ")
                                .font(.headline) +
                            Text("posted a new reel.") +
                            Text("  7d")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }.padding(.bottom)
                    
                    Spacer()
                }
            }.padding(.horizontal)
            
            
                .navigationTitle("Notifications")
        }
    }
}

struct NotificationsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsScreen()
    }
}
