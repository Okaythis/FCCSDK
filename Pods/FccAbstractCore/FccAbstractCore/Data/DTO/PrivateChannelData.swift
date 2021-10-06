//
//  PrivateChannelData.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 30/11/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation

public class PrivateChannelData: Parcel, Codable {
    public func pack() -> Any {
        let jsonData = try! JSONEncoder().encode(self)
        return String(data: jsonData, encoding: .utf8)!
    }
    
    public var channelName: String
    
    public init(channelName: String) {
        self.channelName = channelName
    }
}
