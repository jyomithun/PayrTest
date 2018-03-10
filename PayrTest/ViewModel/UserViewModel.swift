//
//  UserViewModel.swift
//  PayrTest
//
//  Created by Jyo Mithun on 09/03/2018.
//  Copyright © 2018 Jyo Mithun. All rights reserved.
//

import Foundation
class UserViewModel: NSObject {
    //object for Apiclient
    @IBOutlet var apiClient: APIClient!
    var usersList = [UsersModel]()
    func getUsers(comlete: @escaping DownloadComplete) {
        
        self.apiClient.downloadUser {
            self.usersList = self.apiClient._usersList
            comlete()
        }
        
    }
    
    func numberOfItemsToDisplay(in section: Int) -> Int {
        return usersList.count
    }
    
    
}
