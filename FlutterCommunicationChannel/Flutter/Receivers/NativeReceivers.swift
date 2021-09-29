//
//  NativeReceivers.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 08/09/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation

enum NativeReceivers: String {
    case WATER_MARK_IMAGE_RECEIVER = "waterMarkImage"
    case APPROVE_TRANSACTION_RECEIVER = "approveTransaction"
    case DECLINE_TRANSACTION_RECEIVER = "declineTransaction"
    case ON_SCREEN_READY = "onScreenReady"
    case ON_BACK_BUTTON_PRESSED = "onBackButtonPressed"
    case DETECT_OVERLAY = "detectOverlay"
    case ON_PRIVATE_CHANNEL_READY = "onPrivateChannelReady"
}
