//
//  TabBar.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 04.04.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            textScreenView
                .tabItem {
                    Image(systemName: "music.note.tv.fill")
                    Text("Медиатека")
                }
            Text("Two")
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
            Text("Three")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
