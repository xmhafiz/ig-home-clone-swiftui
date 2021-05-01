//
//  ContentView.swift
//  InstaLayoutExample
//
//  Created by Hafiz on 02/05/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TitleView() // TitleView at top not scrollable
        ScrollView {
            LazyVStack {
                StoryView()
                Divider()
                Spacer()
                // multiple post
                PostView()
                PostView()
                PostView()
                PostView()
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
