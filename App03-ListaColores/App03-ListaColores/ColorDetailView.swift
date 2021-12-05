//
//  ColorDetailView.swift
//  App03-ListaColores
//
//  Created by user196198 on 9/26/21.
//

import SwiftUI

struct ColorDetailView: View {
    var body: some View {
        Text("Detalle del Color")
            .navigationBarTitle(Text("Detalle Color"), displayMode: .inline)
            .navigationBarColor(UIColor(.black), UIColor(.white))
    }
}

struct ColorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetailView()
    }
}
