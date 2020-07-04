//
//  ItemDetail.swift
//  IDine
//
//  Created by Giannini Charles on 7/4/20.
//  Copyright © 2020 GCharlesStudy. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    var item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Button("Add to Order") {
                self.order.add(item: self.item)
            }.font(.headline)
            .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(5)
            Spacer()
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)

        .navigationBarItems(trailing:
            Button(action: {
                self.order.favorites.append(self.item)
            }) {
                Image(systemName: "heart")
                    .font(.headline)
            }
        )
    }
}

struct ItemDetail_Previews: PreviewProvider {
 static let order = Order()

 static var previews: some View {
    NavigationView {
        ItemDetail(item: MenuItem.example).environmentObject(order)
        }
    }
}
