//
//  MessageView.swift
//  InstagramClone
//
//  Created by Ariel on 2025-02-04.
//

import SwiftUI

let sampleData = MessageData(id: 0, name: "Joker", picture: "eviljonkler", message: "Why so serious?")



struct MessageView: View {
    var data: MessageData
    var body: some View {
        VStack {
            HStack {
                Image(data.picture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(data.name)
                        .font(.system(size: 18))
                    Text(data.message)
                        .foregroundColor(.gray)
                }.padding(.leading, 10)
                Spacer()
                Image(systemName: "camera")
                    .font(.system(size: 25))
            }.padding(.horizontal)
        }.padding(.bottom)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(data: sampleData)
    }
}
