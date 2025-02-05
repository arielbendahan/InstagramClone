//
//  ProfileScreen.swift
//  InstagramClone
//
//  Created by Ariel on 2025-02-01.
//

import SwiftUI

struct ProfileScreen: View {
    let profile: ProfileModel
    var body: some View {
        VStack {
            HStack {
                Text(profile.name)
                    .padding(.leading)
                    .font(.title2)
                Spacer()
                Text("@")
                    .font(.system(size: 30))
                Image(systemName: "plus.app")
                    .font(.system(size: 30))
                    .padding(.horizontal, 10)
                Image(systemName: "line.3.horizontal")
                    .font(.system(size: 30))
                    .padding(.trailing)
            }.padding(.bottom, 30)
            HStack {
                Image(profile.picture)
                    .resizable()
                    .frame(width: 125, height: 125)
                    .clipShape(Circle())
                    .padding(.leading)

                VStack(alignment: .center) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(profile.posts)")
                                .font(.headline)
                            Text("Posts")
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity)

                        VStack(alignment: .leading) {
                            Text("\(profile.followers)")
                                .font(.headline)
                            Text("Followers")
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity)

                        VStack(alignment: .leading) {
                            Text("\(profile.following)")
                                .font(.headline)
                            Text("Following")
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity)
                    }
                }.padding(.horizontal)
                
            }.padding(.bottom, 10)
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello!")
                    Text("Welcome to my profile")
                }.padding(.leading)
                Spacer()
            }.padding(.bottom, 30)

            HStack {
                Button(action:{
                    
                }
                ){
                    Text("Edit Profile")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: 35)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                }
                Button(action: {
                    
                }) {
                    Text("Share Profile")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: 35)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "person.badge.plus")
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                        .frame(width: 35, height: 35)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                }
            }.padding(.horizontal)
            HStack(spacing: 100) {
                VStack(spacing: 4) {
                    Image(systemName: "square.grid.3x3.fill")
                        .font(.system(size: 30))
                    Rectangle()
                        .frame(height: 3)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        .padding(.leading, 5)
                    
                }
                VStack(spacing: 4) {
                    Image(systemName: "play.square")
                        .font(.system(size: 30))
                    Rectangle()
                        .frame(height: 3)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        .opacity(0)
                }
                VStack(spacing: 4) {
                    Image(systemName: "person.crop.square")
                        .font(.system(size: 30))
                    Rectangle()
                        .frame(height: 3)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        .opacity(0)
                }
            }.padding(.top, 50)
            HStack{
                VStack(alignment: .leading) {
                    Image("profilepost")
                        .resizable()
                        .frame(width: 155, height: 200)
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen(profile: ProfileModel(id: 1, picture: "pfp", name: "thepersistent2020", realname: "Ariel Bendahan", posts: 1, followers: 80, following: 135))
    }
}
