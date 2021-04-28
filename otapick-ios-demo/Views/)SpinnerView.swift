//
//  Spinnerv.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/29.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import SwiftUI

struct SpinnerView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.gray)
                .frame(width: 100.0, height: 100.0, alignment: .center)
            VStack {
                Text("💫")
                    .padding(.bottom, 10.0)
                    .font(.title)
                Text("Loading...")
                    .font(.body)
                    .bold()
                    .foregroundColor(.white)
            }
        }
    }
}

struct SpinnerView_Previews: PreviewProvider {
    static var previews: some View {
        SpinnerView()
    }
}
