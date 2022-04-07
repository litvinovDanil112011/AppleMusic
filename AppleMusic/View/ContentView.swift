//
//  ContentView.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 03.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isButton = false

    var body: some View {
        
        NavigationView{
            ZStack{
                TabBar()
                PlayerView()
                    .offset(y: 225)
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: NavigationLink("Править", destination: {
                LibraryView()
            }))
              }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
