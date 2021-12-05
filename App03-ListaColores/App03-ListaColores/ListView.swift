//
//  ContentView.swift
//  App03-ListaColores
//
//  Created by user196198 on 9/26/21.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var colors = ColorModel()
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView{
            List {
                TextField("Search Color", text: $searchText)
                    .font(.title2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Section(header:
                            Text("FlatUI")
                            .font(.Gemunu(style: "Bold", size: 30))
                            .foregroundColor(Color("DarkText"))) {
                    ForEach(colors.flatUI.filter {
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }){ color in
                        NavigationLink(
                            destination: ColorView(color: color, pallet: "FlatUI"),
                            label: {
                                HStack {
                                    Image(systemName: color.dark ? "lightbulb.fill": "lightbulb")
                                        .font(.title2)
                                    Text(color.name)
                                        .font(.Gemunu(style: "Medium", size: 25))
                                        .foregroundColor(color.dark ? Color("LightText") : Color("DarkText"))
                                }
                            })
                            .padding(.vertical, 4)
                            .listRowBackground(color.colour)
                    }
                }
                Section(header:
                            Text("American")
                            .font(.Gemunu(style: "Bold", size: 30))
                            .foregroundColor(Color("DarkText"))){
                    ForEach(colors.american.filter {
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }){ color in
                        NavigationLink(
                            destination: ColorView(color: color, pallet: "American"),
                            label: {
                                HStack {
                                    Image(systemName: color.dark ? "lightbulb.fill": "lightbulb")
                                        .font(.title2)
                                    Text(color.name)
                                        .font(.Gemunu(style: "Medium", size: 25))
                                        .foregroundColor(color.dark ? Color("LightText") : Color("DarkText"))
                                }

                            })
                            .padding(.vertical, 4)
                            .listRowBackground(color.colour)
                    }
                }
                Section(header:
                            Text("Spanish")
                            .font(.Gemunu(style: "Bold", size: 30))
                            .foregroundColor(Color("DarkText"))) {
                    ForEach(colors.spanish.filter {
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }){ color in
                        NavigationLink(
                            destination: ColorView(color: color, pallet: "Spanish"),
                            label: {
                                HStack {
                                    Image(systemName: color.dark ? "lightbulb.fill": "lightbulb")
                                        .font(.title2)
                                    Text(color.name)
                                        .font(.Gemunu(style: "Medium", size: 25))
                                        .foregroundColor(color.dark ? Color(.white) : Color(.black))
                                }

                            })
                            .padding(.vertical, 4)
                            .listRowBackground(color.colour)
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .navigationBarTitle(Text("Colores"), displayMode: .inline)
            .navigationBarColor(UIColor(.black), UIColor(.white))
            .toolbar(content: {
                ToolbarItem(placement: .principal,
                    content: {
                        Text("Colores")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                })
            })
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
