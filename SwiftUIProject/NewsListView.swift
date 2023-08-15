//
//  NewsListView.swift
//  SwiftUIProject
//
//  Created by Muhammad Alfaraby on 15/08/23.
//

import SwiftUI

struct NewsItem: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}

struct NewsListView: View {
    let newsItems: [NewsItem] = [
        NewsItem(title: "Breaking News 1", imageName: "newspaper"),
        NewsItem(title: "Latest Update", imageName: "newspaper"),
        NewsItem(title: "Special Report", imageName: "newspaper"),
        // Add more news items here
    ]

    var body: some View {
        List(newsItems) { news in
            HStack {
                Image(systemName:news.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                Text(news.title)
                    .font(.headline)
                    .padding(.leading, 10)
                Spacer() // Add space to push title to the right
            }
        }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
