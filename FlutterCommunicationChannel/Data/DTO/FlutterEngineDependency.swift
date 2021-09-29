//
//  FlutterEngineDependency.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 30/11/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation
import FccAbstractCore

@objc
public class FlutterEngineDependency: NSObject, AbstractFlutterEngineDependency {
     var flutterEngineId: String = ""
     var secureChannelName: String = ""
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
