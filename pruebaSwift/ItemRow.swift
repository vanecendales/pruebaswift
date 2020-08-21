    //
    //  ItemRow.swift
    //  pruebaSwift
    //
    //  Created by user177748 on 8/20/20.
    //  Copyright © 2020 user177748. All rights reserved.
    //
    
    import SwiftUI

    struct ItemRow : View {
                
            var item: MenuItem

   //         NavigationLink(destination: Text(item.name)) {
            var body: some View {
                
                HStack (spacing: 15){
         
                    VStack(alignment: .leading) {
                        Text(item.name)
                            
                        Text(item.description)
                    }
                    Spacer()
                    ForEach(item.restrictions, id: \.self) { restriction in
                        
                        Text(restriction)
                            .font(.caption)
                            .fontWeight(.black)
                            .padding(5)
                            
                            .clipShape(Circle())
                            .foregroundColor(.white)
                    }
                    
                        Text(String("$\(item.price)"))
                    }
                
              }
        }
        
    

    struct ItemRow_Previews: PreviewProvider {
        static var previews: some View {
            ItemRow(item: MenuItem.example)
        }
    }
