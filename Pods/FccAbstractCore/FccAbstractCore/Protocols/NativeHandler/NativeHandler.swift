//
//  NativeHandler.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 27/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation

@objc
public protocol NativeHandler {
    func waterMarkScreen(bitmap: [UInt8])
    func approveTransaction(data: Any?)
    func declineTransaction()
    func onScreenReady()
    func detectOverlay()
    func onBackButtonPressed()
    func invalidMethodCall(methodName: String)
}
