//
//  ContentView.swift
//  Shared
//
//  Created by Brando Lugo on 5/25/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { items in
                    NavigationLink(
                        destination: FruitDetailView(fruit: items),
                        label: {
                            FruitRowView(fruit: items)
                                .padding(.vertical, 4)
                        })
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
