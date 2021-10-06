//
//  Parcel.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 27/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation

@objc
public protocol Parcel {
    func pack() -> Any
}
