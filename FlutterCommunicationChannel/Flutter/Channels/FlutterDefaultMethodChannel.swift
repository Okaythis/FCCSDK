//
//  FlutterDefaultMethodChannel.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 28/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation
import Flutter
import FccAbstractCore

class FlutterDefaultMethodChannel<T: FlutterMethodChannel>: Channel {
    
    typealias CT = T
    var channel: T
    internal let binaryMessenger: FlutterBinaryMessenger
    internal let channelName: String
    
    init(binaryMessenger: FlutterBinaryMessenger, channelName: String) {
        self.binaryMessenger = binaryMessenger
        self.channelName = channelName
        self.channel = FlutterMethodChannel(name: channelName, binaryMessenger: binaryMessenger) as! T
    }
    
    func flowThrough(receiver: CrossPlatformUIReceivers, parcel: Parcel?) {
        self.channel.invokeMethod(receiver.rawValue, arguments: parcel?.pack())
    }
}
