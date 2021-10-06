//
//  UIViewController.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 28/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation

public protocol AbstractUIViewController {
    func displayUI(parcel: Parcel) -> Void
    func buildUI(parcel: Parcel) -> Void
    func createPrivateChannel(parcel: Parcel) -> Void
    func hideUI() -> Void
    func showTransactionApprovedScreen() -> Void
    func showTransactionDeclinedScreen() -> Void
}
