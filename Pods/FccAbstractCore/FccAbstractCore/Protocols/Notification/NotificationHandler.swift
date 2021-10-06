//
//  NotificationHandler.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 28/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation


public protocol NotificationHandler {
    func sendNotification(receiver: CrossPlatformUIReceivers, parcel: Parcel?) -> Void
    func registerNotificationReceiver(receiver: NotificationReceiver) -> Void
}
