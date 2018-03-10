//
//  APIClient.swift
//  PayrTest
//
//  Created by Jyo Mithun on 09/03/2018.
//  Copyright © 2018 Jyo Mithun. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
class APIClient: NSObject {
    var _usersList = [UsersModel] ()
    
    var usersList: [UsersModel] {
        return _usersList
    }
    
    // to download users data Json from the API
    func downloadUser(complete: @escaping DownloadComplete) {
        
        Alamofire.request(url).responseObject{ (response: DataResponse<UserResponse>) in
            
            let list = response.result.value
            
            if let usersModel = list?.userModelList {
                
                for(_ , user) in usersModel.enumerated() {
                    
                    self._usersList.append(user)
                }
            }
            complete()
        }
    }
    
}
