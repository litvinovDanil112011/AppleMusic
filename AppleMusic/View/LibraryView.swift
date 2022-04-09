//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 03.04.2022.
//

import SwiftUI

struct LibraryView: View {
    
    @Environment(\.presentationMode) var prepresentationMode
    @State private var selectedRow: String?
    
    @State var arrayCellsLibrary: [ModelCells] = [
    ModelCells(imageCell: Image(systemName: "music.note.list"), title: "Плейлисты", isToggle: true),
    ModelCells(imageCell: Image(systemName: "music.mic"), title: "Артисты", isToggle: true),
    ModelCells(imageCell: Image(systemName: "square.stack"), title: "Альбомы", isToggle: true),
    ModelCells(imageCell: Image(systemName: "music.note"), title: "Песни", isToggle: true),
    ModelCells(imageCell: Image(systemName: "tv"), title: "Телешоу и фильмы", isToggle: true),
    ModelCells(imageCell: Image(systemName: "music.note.tv"), title: "Видеоклипы", isToggle: true),
    ModelCells(imageCell: Image(systemName: "person.3"), title: "Жанры", isToggle: true),
    ModelCells(imageCell: Image(systemName: "person.2.crop.square.stack"), title: "Сбориники", isToggle: true),
    ModelCells(imageCell: Image(systemName: "music.quarternote.3"), title: "Авторы", isToggle: true),
    ModelCells(imageCell: Image(systemName: "arrow.down.circle"), title: "Загружено", isToggle: true)
    ]
    
    var body: some View {
        NavigationView{
            ZStack{
        List(selection: $selectedRow){
            ForEach(arrayCellsLibrary) { cells in
                HStack{
                    Text(cells.imageCell)
                        .foregroundColor(.red)
                    Text(cells.title)
                        .foregroundColor(.red)
                }
            }
          //  .onMove(perform: more)
        }
        .navigationBarItems(trailing: Button("Готово") {
        self.prepresentationMode.wrappedValue.dismiss()
        })
        }
    .navigationBarBackButtonHidden(true)
        }
}
}
    
struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
