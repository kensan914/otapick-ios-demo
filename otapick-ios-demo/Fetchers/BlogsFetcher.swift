//
//  BlogsFetcher.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/28.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import Foundation

class BlogsFetcher {
    private let group: Group
    private var url = "https://otapick.com/api/blogs/"
    private let qParams = "?sort=newer_post"
    
    init(group: Group) {
        self.group = group
        self.url = self.url + String(group.id) + "/"
    }

    func fetchBlogs(then: @escaping ([Blog]) -> Void) {
        print("fetchBlogs")
        URLSession.shared.dataTask(with: URL(string: url + qParams)!) { (data, response, error) in
            guard let data = data else { return }
            print(data)
            let decoder: JSONDecoder = JSONDecoder()
            do {
                let blogsData = try decoder.decode([Blog].self, from: data)
                DispatchQueue.main.async {
                    then(blogsData)
                }
            } catch {
                print("json convert failed in JSONDecoder. " + error.localizedDescription)
            }
        }.resume()
    }
}
