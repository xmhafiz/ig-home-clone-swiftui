//
//  PostView.swift
//  InstaLayoutExample
//
//  Created by Hafiz on 02/05/2021.
//

import SwiftUI

struct PostView: View {
    @State private var comment: String = ""
    var body: some View {
        VStack (alignment: .leading) {
            // User profile
            HStack {
                Image("placeholder")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 4) {
                    Text("Lorem Ipsum").font(.subheadline).bold()
                    Text("Kuala Lumpur")
                        .font(.caption)
                        .opacity(0.8)
                }
                Spacer()
                Button(action: {
                    
                }) {
                    Text("...").bold()
                }
                .foregroundColor(.black)
            }
            .padding(.leading, 12)
            .padding(.trailing, 12)
            // image
            Image("placeholder")
                .resizable()
                .scaledToFill()
                .frame(height: 280)
                .frame(maxWidth: .infinity)
                .clipped()
            // buttons
            HStack (spacing: 16) {
                Button (action: {
                    // add action here
                }) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
                Button (action: {
                    // add action here
                }) {
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
                Button (action: {
                    // add action here
                }) {
                    Image(systemName: "location")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
                Spacer()
                Button (action: {
                    // add action here
                }) {
                    Image(systemName: "bookmark")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
            }
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            // Text
            VStack (alignment: .leading, spacing: 4) {
                Text("1.5K likes").font(.caption).bold()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et").font(.caption)
                // profile image and comment textfield
                HStack {
                    Image("placeholder")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    TextField("Add a comment...", text: $comment).font(.subheadline)
                }
                // datetime
                Text("3 hours ago")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
        .padding(.bottom, 24)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
