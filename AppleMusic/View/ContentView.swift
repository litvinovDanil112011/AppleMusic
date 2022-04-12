//
//  ContentView.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 03.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isButtonToggle = true
    
    var body: some View {

        ZStack(alignment: .bottom){
                
            TabView{
            ScreenMainView()
                .tabItem {
                    Image(systemName: "square.stack.fill")
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
                PlayerView()
                    .offset(y: -48)
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
