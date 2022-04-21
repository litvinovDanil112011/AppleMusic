//
//  RadioTabView.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 07.04.2022.
//

import SwiftUI

struct RadioTabView: View {
    
    let rows: [GridItem] = Array(repeating: .init(.fixed(200)), count: 1)
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
    
    var body: some View {
        NavigationView{
        ScrollView{
            ScrollView(.horizontal, showsIndicators: false){
                LazyHGrid(rows: rows, spacing: 10) {
                    ForEach(arrayInfoRadioStation) { items in
                        VStack(alignment: .leading){
                            Text(items.nameRadioStation)
                                .font(.title)

                            Text(items.infoRadioStation)
                                .font(.title2)
                                .foregroundColor(.gray)
                            items.imageRadioStation
                                .resizable()
                                .frame(width: 350, height: 250, alignment: .bottom)
                        }
                        .padding(.bottom)
                        .padding(.leading)
                    }
                }
            }
            Divider()
            LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
                    ForEach(arrayInfoRadioStation) { items in
                        HStack{
                            items.imageRadioStation
                                .resizable()
                                .frame(width: 85, height: 75)
                            VStack(alignment: .leading){
                            Text(items.nameRadioStation)
                                    .font(.title2)
                            Text(items.infoRadioStation)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.leading)
        }
        .navigationTitle("Радио")
                    }
            }
        }
    }
}

struct RadioTabView_Previews: PreviewProvider {
    static var previews: some View {
        RadioTabView()
    }
}
