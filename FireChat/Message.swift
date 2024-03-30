//
//  Message.swift
//  FireChat
//
//  Created by Yunior Sanchez on 3/30/24.
//

import Foundation

struct Message: Hashable, Identifiable, Codable {
    let id: String
    let text: String
    let timestamp: Date
    let username: String
}


extension Message {
    static let mockedMessages: [Message] = [
        "Hey Kingsley! What's up?",
        "Yo! Whats going on Cleo? So bored I've resorted to chasing my own tail. What about you?",
        "Just woke up from a long nap 😴",
        "Thinking of doing a squirrel patrol at the park. You know, make sure those pesky little critters aren't getting too comfortable. You down?",
        "Count me in! I could use the exercise, my family gave me all kinds of leftovers from the holiday diner 🍗😋",
        "Great! Meet you in the park at our fav spot 20?",
        "For sure!",
        "Awesome! I've got some new tricks to show you. Be ready to be amazed.",
        "Like the one where you tried to jump through a burning hoop and singed all your whiskers off? 💀💀💀",
        "I'm low key offended by that comment! Nah, this is going to be a truly PAW-some show! 🐾",
        "OMG! You are toooooo corny 🌽"
    ].enumerated().map { index, text in
        Message(id: UUID().uuidString, text: text, timestamp: Date(), username: index % 2 == 0 ? "cleo@dog.com" : "kingsley@dog.com")
    }
}
