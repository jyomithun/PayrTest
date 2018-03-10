//
//  Name.swift
//  PayrTest
//
//  Created by Jyo Mithun on 09/03/2018.
//  Copyright © 2018 Jyo Mithun. All rights reserved.
//

import Foundation
import ObjectMapper

class Name: Mappable {
    
    var title: String?
    var first: String?
    var last: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        title <- map["title"]
        first <- map["first"]
        last <- map["last"]
    }
    
    func getFullName()-> String {
        
        return title! + ": " + first! + " " + last!
    }
}

