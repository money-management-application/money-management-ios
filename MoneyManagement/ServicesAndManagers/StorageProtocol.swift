//
//  StorageProtocol.swift
//  MoneyManagement
//
//  Created by Stephen Davis on 10/9/21.
//

import Foundation

protocol StorageProtocol {
    associatedtype RecordProtocol
    associatedtype RecordError: Error
    typealias Handler = (Result<RecordProtocol, RecordError>) -> Void
    func subscribeToRecordUpdates(recordType: String)
    func fetch(record recordName: String, completion: @escaping Handler)
}
