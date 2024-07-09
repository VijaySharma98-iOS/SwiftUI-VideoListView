//
//  VideoListView.swift
//  SwiftUI-VideoList
//
//  Created by Vijay Sharma on 09/07/24.
//

import SwiftUI

struct VideoListView: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationStack {
            
            List(videos, id: \.id) { video in
                
                NavigationLink(destination: VideoDetailView(video: video)) {
                    VideoListViewCell(video: video)
                }
                
                
                
            }
            .navigationTitle("Sean's Top 10")
        }
    }
}


#Preview {
    VideoListView()
}

struct VideoListViewCell: View {
    
    var video: Video
    
    var body: some View {
        HStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 4))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }
}
