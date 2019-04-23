//
//  MockData.swift
//  htc-week-5
//
//  Created by maxim mironov on 23/04/2019.
//  Copyright © 2019 maxim mironov. All rights reserved.
//

import Foundation
class MockData {
    static func createGroupData() -> [GropDataModel]{
        var mockData = [GropDataModel]()
        mockData.append(GropDataModel(tittle: "first", data:createData(group: "first")))
        mockData.append(GropDataModel(tittle: "second", data:createData(group: "second")))
        mockData.append(GropDataModel(tittle: "third", data:createData(group: "third")))
        mockData.append(GropDataModel(tittle: "fourth", data:createData(group: "fourth")))
        mockData.append(GropDataModel(tittle: "fifth", data:createData(group: "fifth")))
        return mockData
    }
    static func createData(group:String) -> [DataModel]{
        var dataModels = [DataModel]()
        dataModels.append(DataModel(tittle: "\(group) string one dsfksfsfi shfishfihsi fhsiofhsiofh  ifwiosdhi s ssihfi  fiosfio siweh4i2h42"))
        dataModels.append(DataModel(tittle: "\(group) string two"))
        dataModels.append(DataModel(tittle: "\(group) string three"))
        dataModels.append(DataModel(tittle: "\(group) string four"))
        return dataModels
    }
    
}
