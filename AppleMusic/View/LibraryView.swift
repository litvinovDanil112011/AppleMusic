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
    
    var body: some View {
        List(selection: $selectedRow){
            ModelLibraryCell(imageCell: Image(systemName: "music.note.list"), title: "Плейлисты")
            ModelLibraryCell(imageCell: Image(systemName: "music.mic"), title: "Артисты")
            ModelLibraryCell(imageCell: Image(systemName: "square.stack"), title: "Альбомы")
            ModelLibraryCell(imageCell: Image(systemName: "music.note"), title: "Песни")
            ModelLibraryCell(imageCell: Image(systemName: "tv"), title: "Телешоу и фильмы")
            ModelLibraryCell(imageCell: Image(systemName: "music.note.tv"), title: "Видеоклипы")
            ModelLibraryCell(imageCell: Image(systemName: "person.3"), title: "Жанры")
            ModelLibraryCell(imageCell: Image(systemName: "person.2.crop.square.stack"), title: "Сбориники")
            ModelLibraryCell(imageCell: Image(systemName: "music.quarternote.3"), title: "Авторы")
            ModelLibraryCell(imageCell: Image(systemName: "arrow.down.circle"), title: "Загружено")
        }
        .navigationBarItems(trailing: Button("Готово") {
        self.prepresentationMode.wrappedValue.dismiss()
    })
   
    .navigationBarBackButtonHidden(true)
}
    
}
    


struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
