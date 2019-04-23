//
//  GroupDataModel.swift
//  htc-week-5
//
//  Created by maxim mironov on 23/04/2019.
//  Copyright © 2019 maxim mironov. All rights reserved.
//

import Foundation
class GropDataModel {
    var id: UUID
    var title: String!
    var data:[DataModel]?
    init(tittle:String,data:[DataModel]?){
        self.id = UUID()
        self.title = tittle
        self.data = data
    }
}
