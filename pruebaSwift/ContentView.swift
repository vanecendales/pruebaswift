//
//  ContentView.swift
//  pruebaSwift
//
//  Created by user177748 on 8/20/20.
//  Copyright © 2020 user177748. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "transactions.json")

    var body: some View {
       NavigationView {
            List {
                ForEach(menu) { section in
                    Section {
                        ForEach(section.items) { item in
                            ItemRow(item:item)
                        }
                    }
                }
            }
            .navigationBarTitle("Transactions").font(.headline)
        
                
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
