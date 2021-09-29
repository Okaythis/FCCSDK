//
//  FlutterDefualtNotificationReceiver.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 28/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation
import Flutter
import FccAbstractCore

class FlutterDefaultChannelNotificationReceiver: NotificationReceiver {
    func handleNotification(channel: Any) {
        (channel as! FlutterMethodChannel).setMethodCallHandler { (call, flutterResult) in
            switch(call.method){
            // Silently notify SDK admin of possible attack
            default:
                print("UnAuthorized foreign method request!!!")
            }
        }
    }
    
    typealias CT = FlutterMethodChannel
    internal var channelNotificationhandler: ChannelNotificationHandler<BaseUIViewController<ChannelMessenger<FlutterDefaultMethodChannel<FlutterMethodChannel>>>, FlutterDefaultMethodChannel<FlutterMethodChannel>>
    
    init(channelNotificationhandler: ChannelNotificationHandler<BaseUIViewController<ChannelMessenger<FlutterDefaultMethodChannel<FlutterMethodChannel>>>, FlutterDefaultMethodChannel<FlutterMethodChannel>>){
        self.channelNotificationhandler = channelNotificationhandler
    }
}
