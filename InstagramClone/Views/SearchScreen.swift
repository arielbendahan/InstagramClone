//
//  SearchScreen.swift
//  InstagramClone
//
//  Created by Ariel on 2025-02-03.
//

import SwiftUI

let images: [String] = ["image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8", "image9", "image10", "image11", "image12", "image13", "image14", "image15", "image16", "image17"]

struct SearchScreen: View {
    @State private var text: String = ""
    
    let columns = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2)
    ]
    
    var body: some View {
        VStack {
            // Search bar
            HStack {
                Image(systemName: "circle")
                    .foregroundColor(.blue)
                    .shadow(color: .purple, radius: 5)
                
                TextField("Ask Meta AI or Search", text: $text)
                    .foregroundColor(.primary)
            }
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 2) {
                    ForEach(images, id: \.self) { image in
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 150)
                            .clipped()
                    }
                }
                .padding(.horizontal, 2)
            }
        }
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}
