//
//  CrossPlatformUIReceivers.swift
//  FccAbstractCore
//
//  Created by Ben Ogie on 04/06/2021.
//

import Foundation

public enum CrossPlatformUIReceivers: String {
    case DISPLAY_UI = "displayUI"
    case HIDE_UI = "hideUI"
    case BUILD_UI = "buildUI"
    case SHOW_TRANSACTION_APPROVED_SCREEN = "authorizationApproved"
    case SHOW_TRANSACTION_DECLINED_SCREEN = "authorizationDeclined"
    case CREATE_PRIVATE_CHANNEL = "createPrivateChannel"
}
