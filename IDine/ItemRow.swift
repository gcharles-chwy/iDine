//
//  ItemRow.swift
//  IDine
//
//  Created by Giannini Charles on 7/4/20.
//  Copyright © 2020 GCharlesStudy. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem

    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            VStack(alignment: .leading) {
                Text(item.name)
                Text(String("$\(item.price)"))
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider { static var previews: some View {
    ItemRow(item: MenuItem.example) }
}
