//
//  DataModel.swift
//  htc-week-5
//
//  Created by maxim mironov on 23/04/2019.
//  Copyright © 2019 maxim mironov. All rights reserved.
//

import Foundation
class DataModel {
    var id:UUID
    var tittle:String!
    init(tittle:String) {
        self.id = UUID()
        self.tittle = tittle
    }
}
