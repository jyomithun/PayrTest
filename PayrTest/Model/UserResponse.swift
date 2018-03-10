//
//  UserResponse.swift
//  PayrTest
//
//  Created by Jyo Mithun on 09/03/2018.
//  Copyright © 2018 Jyo Mithun. All rights reserved.
//

import Foundation
import ObjectMapper

class UserResponse: Mappable {
    
    var userModelList : [UsersModel]?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        userModelList <- map ["results"]
    }
}

