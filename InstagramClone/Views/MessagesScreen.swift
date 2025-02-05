//
//  MessagesScreen.swift
//  InstagramClone
//
//  Created by Ariel on 2025-02-04.
//

import SwiftUI

let messages: [MessageData] = [
    .init(id: 1, name: "Joker", picture: "eviljonkler", message: "Why so serious?"),
    .init(id: 2, name: "coffeeplease!", picture: "restingoon", message: "Need more coffee..."),
    .init(id: 3, name: "paperbagman", picture: "defaultpicture", message: "Hiding in plain sight."),
    .init(id: 4, name: "Oh Il-nam", picture: "squigame!", message: "Green light, red light."),
    .init(id: 5, name: "champagnepapi", picture: "drake", message: "Started from the bottom."),
    .init(id: 6, name: "druski", picture: "druskii", message: "Coulda been records!"),
    .init(id: 7, name: "feliciathegoat", picture: "tyler", message: "Call me if you get lost."),
    .init(id: 8, name: "kendricklamar", picture: "kendrick", message: "Be humble.")
]


struct MessagesScreen: View {
    @State private var text: String = ""
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "square.and.pencil")
                            .padding(.trailing)
                            .font(.system(size: 25))
                    }.padding(.bottom)
                    HStack {
                        Image(systemName: "magnifyingglass")
                        
                        TextField("Search", text: $text)
                            .foregroundColor(.primary)
                    }
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.bottom)
                    NoteView()
                    HStack {
                        Button(action:{
                            
                        }
                        ){
                            Text("Messages")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .frame(maxWidth: 150, maxHeight: 30)
                                .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                        }
                        Button(action: {
                            
                        }) {
                            Text("Channels")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .frame(maxWidth: 150, maxHeight: 30)
                                .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                        }
                        Button(action: {
                            
                        }) {
                            Text("Request")
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .frame(maxWidth: 150, maxHeight: 30)
                                .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                        }
                    }.padding([.horizontal, .bottom])
                    ForEach(messages, id: \.id) { message in
                        MessageView(data: message)
                    }
                    Spacer()
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MessagesScreen_Previews: PreviewProvider {
    static var previews: some View {
        MessagesScreen()
    }
}
