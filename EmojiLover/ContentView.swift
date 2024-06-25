//
//  ContentView.swift
//  EmojiLover
//
//  Created by Gloria Villa on 6/24/24.
// https://www.youtube.com/watch?v=nqTcAzPS3oc

import SwiftUI

enum Emoji: String, CaseIterable {
    // control command space
    case happy = "🥹"
    case freezing = "🥶"
    case phone = "☎️"
    case burger = "🍔"
}

struct ContentView: View {
    
    @State var selection: Emoji = .happy
    var body: some View {
    
        NavigationView {
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self)
                    {
                        emoji in
                        Text(emoji.rawValue)
                    }
                    
                }
                .pickerStyle(.segmented)
            }
            
            .navigationTitle("Emoji Fans!")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
