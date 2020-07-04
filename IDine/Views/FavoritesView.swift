//
//  FavoritesView.swift
//  IDine
//
//  Created by Giannini Charles on 7/4/20.
//  Copyright © 2020 GCharlesStudy. All rights reserved.
//

import SwiftUI

struct FavoritesView: View {

   @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            List {
                ForEach(order.favorites) { favorite in
                    ItemRow(item: favorite)
                }
            }
            .navigationBarTitle("Favorites")
            .listStyle(GroupedListStyle())
        }
    }
}
