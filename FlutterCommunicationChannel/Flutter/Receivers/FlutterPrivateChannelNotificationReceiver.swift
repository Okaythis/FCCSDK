//
//  FlutterPrivateChannelNotification.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 01/12/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation
import Flutter
import FccAbstractCore

class FlutterPrivateChannelNotificationReceiver: NotificationReceiver {
    func handleNotification(channel: Any) {
        (channel as! FlutterMethodChannel).setMethodCallHandler { (call, flutterResult) in
            switch(call.method){
            case NativeReceivers.WATER_MARK_IMAGE_RECEIVER.rawValue:
                let nativeHandler = (self.channelNotificationhandler as ChannelNotificationHandler).nativeHandler!
                let flutterStandardTypedData = call.arguments as! FlutterStandardTypedData
                let bytes: [UInt8] = [UInt8](flutterStandardTypedData.data)
                nativeHandler.waterMarkScreen(bitmap: bytes)
                break
                
            case NativeReceivers.APPROVE_TRANSACTION_RECEIVER.rawValue:
                let nativeHandler = (self.channelNotificationhandler as ChannelNotificationHandler).nativeHandler!
                let data = call.arguments
                nativeHandler.approveTransaction(data: data)
                break
                
            case NativeReceivers.DECLINE_TRANSACTION_RECEIVER.rawValue:
                let nativeHandler = (self.channelNotificationhandler as ChannelNotificationHandler).nativeHandler!
                nativeHandler.declineTransaction()
                break
                
            case NativeReceivers.ON_SCREEN_READY.rawValue:
                let nativeHandler = (self.channelNotificationhandler as ChannelNotificationHandler).nativeHandler!
                nativeHandler.onScreenReady()
                break
                
            case NativeReceivers.ON_BACK_BUTTON_PRESSED.rawValue:
                let nativeHandler = (self.channelNotificationhandler as ChannelNotificationHandler).nativeHandler!
                nativeHandler.onBackButtonPressed()
                break
            case NativeReceivers.ON_PRIVATE_CHANNEL_READY.rawValue:
                FccApiImpl.getInstance().onPrivateChannelInit();
                break
            case NativeReceivers.DETECT_OVERLAY.rawValue:
                let nativeHandler = (self.channelNotificationhandler as ChannelNotificationHandler).nativeHandler!
                nativeHandler.detectOverlay()
                break
            default:
                let nativeHandler = (self.channelNotificationhandler as ChannelNotificationHandler).nativeHandler!
                nativeHandler.invalidMethodCall(methodName: call.method)
            }
        }
    }
    
    typealias CT = FlutterMethodChannel
    internal var channelNotificationhandler: ChannelNotificationHandler<BaseUIViewController<ChannelMessenger<FlutterDefaultMethodChannel<FlutterMethodChannel>>>, FlutterDefaultMethodChannel<FlutterMethodChannel>>
    
    init(channelNotificationhandler: ChannelNotificationHandler<BaseUIViewController<ChannelMessenger<FlutterDefaultMethodChannel<FlutterMethodChannel>>>, FlutterDefaultMethodChannel<FlutterMethodChannel>>){
        self.channelNotificationhandler = channelNotificationhandler
    }
}
