//
//  ColorModel.swift
//  App03-ListaColores
//
//  Created by user196198 on 9/26/21.
//

import SwiftUI

class ColorModel: ObservableObject{
    
    @Published var flatUI = [Colour]()
    @Published var spanish = [Colour]()
    @Published var american = [Colour]()
    
    init(){
        loadColors()
    }
    
    func loadColors(){
        flatUI.append(contentsOf: Colour.flatUI)
        spanish.append(contentsOf: Colour.spanish)
        american.append(contentsOf: Colour.american)
    }
}
