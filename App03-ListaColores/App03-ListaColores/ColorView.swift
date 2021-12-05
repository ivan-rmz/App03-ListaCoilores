//
//  ColorView.swift
//  App03-ListaColores
//
//  Created by user196198 on 9/26/21.
//

import SwiftUI

struct ColorView: View {
    var color: Colour
    var pallet: String
    
    var body: some View {
        ZStack{
            color.colour
            VStack(spacing: 20){
                Text(color.name)
                    .font(.largeTitle)
                    .foregroundColor(color.dark ? Color("LightText") : Color("DarkText"))
                Text(pallet)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle(Text("Color"), displayMode: .inline)
            .navigationBarColor(UIColor(.black), UIColor(.white))
        .toolbar(content: {
            ToolbarItem(placement: .principal,
                content: {
                    Text(color.name)
                        .font(.title)
                        .foregroundColor(.white)
            })
        })
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: Colour.Alizarin, pallet: "FlatUI")
    }
}
