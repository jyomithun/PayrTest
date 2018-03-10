//
//  UserModel.swift
//  PayrTest
//
//  Created by Jyo Mithun on 09/03/2018.
//  Copyright © 2018 Jyo Mithun. All rights reserved.
//

import Foundation
import ObjectMapper

class UsersModel: Mappable{
    
    
    var email: String?
    var name: Name?
    var picture: Picture?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
        email <- map["email"]
        name <- map["name"]
        picture <- map["picture"]

    }
    
}
