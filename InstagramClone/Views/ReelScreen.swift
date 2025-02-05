//
//  ReelScreen.swift
//  InstagramClone
//
//  Created by Ariel on 2025-02-02.
//

import SwiftUI

struct ReelScreen: View {
    let videoFiles: [String] = ["reel1", "reel2", "reel3"]
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                ForEach(videoFiles, id: \.self) { fileName in
                    if let videoURL = Bundle.main.url(forResource: fileName, withExtension: "mp4") {
                        ReelVideoView(videoURL: videoURL)
                            .frame(height: UIScreen.main.bounds.height)
                    }
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }

}

struct ReelScreen_Previews: PreviewProvider {
    static var previews: some View {
        ReelScreen()
    }
}
