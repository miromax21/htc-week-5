//
//  File.swift
//  htc-week-5
//
//  Created by maxim mironov on 23/04/2019.
//  Copyright © 2019 maxim mironov. All rights reserved.
//

import Foundation
class Data {
    static var groupModel = [GropDataModel]()
    
    static func readTrips(completion: @escaping () -> ()){
        DispatchQueue.global(qos: .userInitiated).async {
            Data.groupModel = MockData.createGroupData()
        }
        
        DispatchQueue.main.async {
            completion()
        }
    }
}
