//
//  FccData.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 30/11/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation
import UIKit

@objc
public class FccData: NSObject, AbstractFccData {
    public var nativeHandler: NativeHandler
    public var controller: UIViewController

    @objc
    public init(nativeHandler: NativeHandler, controller: UIViewController) {
        self.nativeHandler = nativeHandler
        self.controller = controller
    }
}
