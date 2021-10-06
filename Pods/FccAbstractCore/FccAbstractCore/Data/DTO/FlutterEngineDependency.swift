//
//  FlutterEngineDependency.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 30/11/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation

@objc
public class FlutterEngineDependency: NSObject {
     public var flutterEngineId: String = ""
     public var secureChannelName: String = ""
//    let splashScreen: View?,
    
    public override init() {
        super.init()
    }
    
    @objc
    public convenience init(flutterEngineId: String, secureChannelName: String) {
        self.init()
        self.flutterEngineId = flutterEngineId
        self.secureChannelName = secureChannelName
    }
}
