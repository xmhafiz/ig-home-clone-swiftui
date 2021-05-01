//
//  DemoStore.swift
//  InstaLayoutExample
//
//  Created by Hafiz on 02/05/2021.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
}

struct DemoStore {
    static let shared = DemoStore()
    
    func getPersons() -> [Person] {
        var persons = [Person]()
        let lorem = Lorem.shared
        for _ in 0..<20 {
            let person = Person(name: lorem.words())
            persons.append(person)
        }
        return persons
    }
}

struct Lorem {
    static let shared = Lorem()
    let text = "Lorem ipsum dolor amet consectetur adipiscing elit eiusmod tempor incididunt labore dolore magna aliqua enim minim veniam quis nostrud exercitation ullamco laboris nisi aliquip commodo consequat Duis aute irure dolor reprehenderit voluptate velit esse cillum dolore fugiat nulla pariatur Excepteur sint occaecat cupidatat proident suntculpa officia deserunt mollit anim laborum"
    
    func words(_ size: Int = 1) -> String {
        let words = text.components(separatedBy: " ")
        var randomWordsArray = [String]()
        for _ in 0..<size {
            if let randomWord = words.randomElement() {
                randomWordsArray.append(randomWord)
            }
        }
        return randomWordsArray.joined(separator: " ")
    }
}
