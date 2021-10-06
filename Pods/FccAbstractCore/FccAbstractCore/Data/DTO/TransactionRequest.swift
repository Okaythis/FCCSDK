//
//  TransactionRequest.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 27/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation

@objc
public class TransactionRequest: NSObject, Codable, Parcel {
    private(set) var authType: Int = 0
    private(set) var data: AuthData = AuthData()
    
    public override init() {
        super.init()
    }
    
    @objc
    public convenience init(authType: Int, data: AuthData) {
        self.init()
        self.authType = authType
        self.data = data
    }
    
    public func pack() -> Any {
        let jsonData = try! JSONEncoder().encode(self)
        return String(data: jsonData, encoding: .utf8)!
    }
}
