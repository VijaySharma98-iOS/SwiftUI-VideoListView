//
//  VideoDetailView.swift
//  SwiftUI-VideoList
//
//  Created by Vijay Sharma on 09/07/24.
//

import SwiftUI

struct VideoDetailView: View {
    
    var video: Video
    var body: some View {
        VStack(spacing:20) {
            Spacer()
            Image(video.imageName)
                .resizable()
                .frame(width: 350,height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.bold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing:40) {
                
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url, label: {
                Text("Watch Now")
                    .bold()
                    .font(.title2)
                    .frame(width: 250, height: 50)
                    .foregroundStyle(.white)
                    .background(.red.gradient)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                

            })
                
        }
    }
}

#Preview {
    VideoDetailView(video: VideoList.topTen.first!)
}
