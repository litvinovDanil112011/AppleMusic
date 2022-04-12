//
//  TextScreenView.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 03.04.2022.
//

import SwiftUI


    var textScreenView: some View {
        VStack{
            Text("Ищите свою музыку?")
                .font(.title)
                .foregroundColor(.black)
                .padding()
            Text("Здесь появиться купленная Вами в")
                .foregroundColor(.gray)
                .font(.system(size: 15))
            Text("iTenus Store музыка.")
                .foregroundColor(.gray)
                .font(.system(size: 15))
        }
        .offset(y: -100)
    }

