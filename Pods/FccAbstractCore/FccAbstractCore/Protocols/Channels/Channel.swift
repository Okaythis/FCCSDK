//
//  Channel.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 28/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation

public protocol Channel {
    associatedtype CT

    var channel: CT { get }
    
    func flowThrough(receiver: CrossPlatformUIReceivers, parcel: Parcel?) -> Void
}
