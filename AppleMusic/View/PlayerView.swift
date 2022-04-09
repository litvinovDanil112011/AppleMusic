//
//  PlayerView.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 07.04.2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        VStack{
            HStack {
            Image("1")
                .resizable()
                .frame(width: 50, height: 50)
            VStack {
                Text("Linkin Park")
                Text("Hibrid")
            }
            Spacer()
            HStack{
                Button {
                    print("play")
                } label: {
                    Image(systemName: "play.fill")
                }
                Button {
                    print("forward")
                } label: {
                    Image(systemName: "forward.fill")
                }
            }
            .foregroundColor(.black)
            
          }
            .padding()
            Divider()
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
