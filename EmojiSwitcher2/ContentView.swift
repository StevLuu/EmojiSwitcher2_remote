//
//  ContentView.swift
//  EmojiSwitcher2
//
//  Created by Steven Luu on 11/8/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🚎, 🚌, 🥇, 🥘
}

struct ContentView: View {
   @State var selection: Emoji = .🥘
    
    var body: some View {
        NavigationView{
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 250))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach( Emoji.allCases, id: \.self) {emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Picker")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
