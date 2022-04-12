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
            .onMove(perform: move)
          }
        .environment(\.editMode, .constant(EditMode.active))
        }
    }
}
func move(from sourse: IndexSet, to distancion: Int){
    arrayCellsLibrary.move(fromOffsets: sourse, toOffset: distancion)
}
 
struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
