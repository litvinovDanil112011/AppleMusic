//
//  TabBar.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 04.04.2022.
//

import SwiftUI

struct TabBar: View {
    
    @State var isButton = false
    
    var body: some View {

        TabView{

            textScreenView
                .tabItem {
                    Image(systemName: "music.note.tv.fill")
                    Text("Медиатека")
                }
            RadioTabView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
            SearchTabView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
            }
        }
        .accentColor(.red)
        }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
