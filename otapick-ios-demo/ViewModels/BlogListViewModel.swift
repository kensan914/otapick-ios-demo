//
//  BlogListViewModel.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/28.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import Foundation

class BlogListViewModel: ObservableObject {
    let fetcher: BlogsFetcher
    @Published var blogsData: [Blog] = []
    @Published var isShowIndicator = true

    init(group: Group) {
        self.fetcher = BlogsFetcher(group: group)
        self.fetcher.fetchBlogs { (blogs) in
            self.blogsData = blogs
            self.isShowIndicator = false
        }
    }
}
