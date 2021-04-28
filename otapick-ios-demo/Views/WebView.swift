//
//  WebView.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/29.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import SwiftUI

struct WebView: View {
    typealias UIViewControllerType = SFSafariViewController

    var url: URL?

    func makeUIViewController(context: UIViewControllerRepresentableContext<WebView>) -> SFSafariViewController {
        return SFSafariViewController(url: url!)
    }

    func updateUIViewController(_ safariViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<WebView>) {
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
