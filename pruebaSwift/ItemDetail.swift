//
//  ItemDetail.swift
//  pruebaSwift
//
//  Created by user177748 on 8/20/20.
//  Copyright © 2020 user177748. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    var item: MenuItem
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ItemDetail_Previews: PreviewProvider {
   static var previews: some View {
        ItemDetail(item: MenuItem.example)
    }
}

