//
//  ChannelMessenger.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 28/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation
import FccAbstractCore


class ChannelMessenger<CH: Channel>: Messenger {
    typealias C = CH
    
    func send(reciever: CrossPlatformUIReceivers, parcel: Parcel?, channel: CH) {
        channel.flowThrough(receiver: reciever, parcel: parcel)
    }
}
