//
//  ContentView.swift
//  EmojiLover
//
//  Created by Gloria Villa on 6/24/24.
// https://www.youtube.com/watch?v=nqTcAzPS3oc

import SwiftUI

enum Emoji: String {
    // control command space
    case happy = "🥹"
    case freezing = "🥶"
    case phone = "☎️"
    case burger = "🍔"
}

struct ContentView: View {
    
    var selection: Emoji = .happy
    var body: some View {
        Text(selection.rawValue)
            .font(.system(size: 150))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
