//
//  Config.swift
//  MoneyManagement
//
//  Created by Stephen Davis on 10/7/21.
//

import CloudKit

struct Config: RecordProtocol {
    fileprivate static let mxApiKeyKey = "mxApiKey"
    fileprivate static let mxClientIdKey = "mxClientId"
    fileprivate static let mxBasicAuthValueKey = "mxBasicAuthValue"
    fileprivate static let mxApiUrlKey = "mxApiUrl"
    
    var record: CKRecord?
    
    init() {}
    
    init?(record: CKRecord) {
        self.record = record
    }
    
    var mxApiKey: String {
        guard let record = record else { return "" }
        return record.value(forKey: Config.mxApiKeyKey, defaultValue: "")
    }
    
    var mxClientId: String {
        guard let record = record else { return "" }
        return record.value(forKey: Config.mxClientIdKey, defaultValue: "")
    }
    
    var mxBasicAuthValue: String {
        guard let record = record else { return "" }
        return record.value(forKey: Config.mxBasicAuthValueKey, defaultValue: "")
    }
    
    var mxApiUrl: URL? {
        guard let record = record else { return nil }
        let value = record.value(forKey: Config.mxApiUrlKey, defaultValue: "")
        return URL(string: value)
    }
}

extension CKRecord {
    func value(forKey key: String, defaultValue: @autoclosure () -> String) -> String {
        guard let value = self[key] as? String else {
            return defaultValue()
        }
        return value
    }
}
