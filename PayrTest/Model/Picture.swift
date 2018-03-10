//
//  Picture.swift
//  PayrTest
//
//  Created by Jyo Mithun on 09/03/2018.
//  Copyright © 2018 Jyo Mithun. All rights reserved.
//

import Foundation
import Foundation
import ObjectMapper

class Picture: Mappable {
    
    var large: String?
    var medium: String?
    var thumbnail: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        large <- map["tilargetle"]
        medium <- map["medium"]
        thumbnail <- map["thumbnail"]
    }
    
}

