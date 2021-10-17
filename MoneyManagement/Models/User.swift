//
//  User.swift
//  MoneyManagement
//
//  Created by Stephen Davis on 9/29/21.
//

import Firebase

struct User {
    private(set) var uid: String? = nil
    var displayName: String? = nil
    
    init() {}
    
    init(firebaseUser: Firebase.User) {
        self.uid = firebaseUser.uid
    }
}
