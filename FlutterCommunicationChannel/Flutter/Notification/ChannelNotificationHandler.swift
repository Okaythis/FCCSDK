//
//  ChannelNotificationHandler.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 28/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation
import FccAbstractCore


class ChannelNotificationHandler<CNT: AbstractUIViewController, CH: Channel>: NotificationHandler {
    internal var channelMethodChannel: CH
    internal var uiViewController: CNT
    public var nativeHandler: NativeHandler?
    
    
    init(channelMethod: CH, uiController: CNT) {
        self.channelMethodChannel = channelMethod
        self.uiViewController = uiController
    }
    
    
    func sendNotification(receiver: CrossPlatformUIReceivers, parcel: Parcel?) {
        switch(receiver) {
        case .DISPLAY_UI:
            uiViewController.displayUI(parcel: parcel!)
            break
        case .HIDE_UI:
            uiViewController.hideUI()
            break
        case .BUILD_UI:
            uiViewController.buildUI(parcel: parcel!)
            break
        case .SHOW_TRANSACTION_APPROVED_SCREEN:
            uiViewController.showTransactionApprovedScreen()
            break
        case .SHOW_TRANSACTION_DECLINED_SCREEN:
            uiViewController.showTransactionDeclinedScreen()
            break
        case .CREATE_PRIVATE_CHANNEL:
            uiViewController.createPrivateChannel(parcel: parcel!)
            break
        }
    }
    
    func setNativeHandler(nativeHandler: NativeHandler){
        self.nativeHandler = nativeHandler
    }
    
    func registerNotificationReceiver(receiver: NotificationReceiver) {
        receiver.handleNotification(channel:   channelMethodChannel.channel)
    }
}
