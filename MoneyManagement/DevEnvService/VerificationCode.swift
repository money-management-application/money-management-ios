//
//  VerificationCode.swift
//  MoneyManagement
//
//  Created by Stephen Davis on 9/28/21.
//

import Foundation

struct TopLevelVerificationCodes: Decodable {
    let verificationCodes: [VerificationCode]
}

struct VerificationCode: Decodable {
    let code: String
}
