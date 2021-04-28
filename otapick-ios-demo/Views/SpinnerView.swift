//
//  SpinnerView.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/29.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct SpinnerView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.gray)
                .frame(width: 100.0, height: 100.0, alignment: .center)
            ActivityIndicator(isAnimating: .constant(true), style: .white)
        }
    }
}

struct SpinnerView_Previews: PreviewProvider {
    static var previews: some View {
        SpinnerView()
    }
}
