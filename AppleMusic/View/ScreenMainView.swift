//
//  ScreenMainView.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 10.04.2022.
//

import SwiftUI

struct ScreenMainView: View {
    
    @State private var isButtonToggle = true
    
    var body: some View {
        NavigationView{
            ZStack{
                if isButtonToggle {
                    textScreenView
                } else {
                    LibraryView()
                }
            }
            .navigationBarItems(trailing: Button {
                self.isButtonToggle.toggle()
            } label: {
                if isButtonToggle {
                    Text("Править")
                } else {
                    Text("Готово")
                }
            })
            .navigationTitle("Медиатека")
        }
    }
}

struct ScreenMainView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenMainView()
    }
}
