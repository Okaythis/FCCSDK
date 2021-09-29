//
//  FlutterUIViewController.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 28/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import FccAbstractCore

class BaseUIViewController<M: Messenger>: AbstractUIViewController {
    
    internal let messenger: M
    internal var channel: M.C
    
    init(channel: M.C, messenger: M){
        self.channel = channel
        self.messenger = messenger
    }
    
    
    func displayUI(parcel: Parcel) {
        messenger.send(reciever: CrossPlatformUIReceivers.DISPLAY_UI, parcel: parcel, channel: self.channel)
    }
    
    func createPrivateChannel(parcel: Parcel) {
        messenger.send(reciever: CrossPlatformUIReceivers.CREATE_PRIVATE_CHANNEL, parcel: parcel, channel: self.channel)
    }
    
    func buildUI(parcel: Parcel) {
        messenger.send(reciever: CrossPlatformUIReceivers.BUILD_UI, parcel: parcel, channel: self.channel)
    }
    
    func hideUI() {
        messenger.send(reciever: CrossPlatformUIReceivers.HIDE_UI, parcel: nil, channel: self.channel)
    }
    
    func showTransactionApprovedScreen() {
        messenger.send(reciever: CrossPlatformUIReceivers.SHOW_TRANSACTION_APPROVED_SCREEN, parcel: nil, channel: self.channel)
    }
    
    func showTransactionDeclinedScreen() {
        messenger.send(reciever: CrossPlatformUIReceivers.SHOW_TRANSACTION_DECLINED_SCREEN, parcel: nil, channel: self.channel)
    }
}
