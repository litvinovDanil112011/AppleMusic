//
//  ContentView.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 03.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            textScreenView
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: NavigationLink("Править", destination: {
                LibraryView()
            }))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
