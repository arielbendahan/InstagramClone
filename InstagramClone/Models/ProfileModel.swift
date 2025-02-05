//
//  ProfileModel.swift
//  InstagramClone
//
//  Created by english on 2025-01-30.
//

import Foundation

struct ProfileModel: Identifiable {
    var id: Int
    var picture: String
    var name: String
    var realname: String
    var posts: Int
    var followers: Int
    var following: Int
}
