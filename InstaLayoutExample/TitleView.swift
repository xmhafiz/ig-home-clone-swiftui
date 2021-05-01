//
//  TitleView.swift
//  InstaLayoutExample
//
//  Created by Hafiz on 02/05/2021.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        HStack {
            Text("Instagram").font(.title)
            Spacer() // spacer needed to push buttons to right
            HStack(spacing: 16) { // right buttons
                // plus button a bit tricky with overlay border
                Button (action: {
                    // add action here
                }) {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .padding(4)
                }
                .overlay(RoundedRectangle(cornerSize: CGSize(width: 4, height: 4)).stroke(Color.black))
                Button (action: {
                    // add action here
                }) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Button (action: {
                    // add action here
                }) {
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
            }
            .foregroundColor(.black) // make sure all button tint is black
        }
        .padding(EdgeInsets(top: 12, leading: 12, bottom: 4, trailing: 12))
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
