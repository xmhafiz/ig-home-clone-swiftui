//
//  StoryView.swift
//  InstaLayoutExample
//
//  Created by Hafiz on 02/05/2021.
//

import SwiftUI

struct StoryView: View {
    let persons = DemoStore.shared.getPersons()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(persons) { person in
                    StoryItemView(person: person)
                        .padding(4)
                }
            }
        }
        .padding(.leading, 10)
        .listRowInsets(EdgeInsets())
    }
}

struct StoryItemView: View {
    let person: Person
    var body: some View {
        VStack(spacing: 8) {
            Image("placeholder") // image with red border
                .resizable()
                .frame(width: 64, height: 64, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 2))
            Text(person.name)
                .font(.caption)
                .lineLimit(1)
        }
        .frame(width: 72) // fixed size
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
