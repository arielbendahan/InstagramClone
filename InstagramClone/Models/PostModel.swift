//
//  PostModel.swift
//  InstagramClone
//
//  Created by english on 2025-01-30.
//

import Foundation

struct PostData: Identifiable {
    var id: Int
    var profileImage: String
    var name: String
    var image: String
    var body: String
    var likes: Int
    var comments: Int
    var shares: Int
}
