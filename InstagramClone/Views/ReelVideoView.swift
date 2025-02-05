//
//  ReelVideoView.swift
//  InstagramClone
//
//  Created by Ariel on 2025-02-02.
//

import SwiftUI
import AVKit

struct ReelVideoView: View {
    let videoURL: URL?
    @State private var player: AVPlayer?
    @State private var isPlaying: Bool = true
    @State private var isLiked = false
    var body: some View {
        ZStack {
            if let videoURL = videoURL {
                VideoPlayer(player: player)
                    .edgesIgnoringSafeArea(.all)
                    .onAppear {
                        player = AVPlayer(url: videoURL)
                        player?.play()
                        player?.isMuted = false
                    }
                    .onDisappear {
                        player?.pause()
                        player = nil
                    }
                    .onTapGesture {
                        if isPlaying {
                            player?.pause()
                        }
                        else {
                            player?.play()
                        }
                        isPlaying.toggle()
                    }
            } else {
                Color.black.overlay(Text("No Video Loaded").foregroundColor(.white))
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    VStack(spacing: 30) {
                        VStack {
                            Button(action: {
                                isLiked.toggle()
                            }) { Image(systemName: isLiked ? "heart.fill" : "heart").font(.system(size: 40)).foregroundColor(isLiked ? .red : .white) }
                            Text("320k")
                                .foregroundColor(.white).bold()
                        }
                        VStack {
                            Button(action: {}) { Image(systemName: "message").font(.system(size: 40)).foregroundColor(.white) }
                            Text("530").foregroundColor(.white).bold()
                        }
                        VStack {
                            Button(action: {}) { Image(systemName: "paperplane").font(.system(size: 40)).foregroundColor(.white) }
                            Text("41.5k").foregroundColor(.white).bold()
                        }
                        Button(action: {}) { Image(systemName: "ellipsis").font(.title).foregroundColor(.white) }
                    }
                    .padding()
                }
            }
        }
    }
}

struct ReelVideoView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleVideoURL = Bundle.main.url(forResource: "reel1", withExtension: "mp4")
        ReelVideoView(videoURL: sampleVideoURL)
    }
}
