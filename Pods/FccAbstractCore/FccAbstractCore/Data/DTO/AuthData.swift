//
//  AuthData.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 27/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation

@objc
public class AuthData: NSObject, Codable {
    private(set) var uiJsonProperties: String = ""
    private(set) var useFallbackScreen: Bool = false
    
    public override init() {
        super.init()
    }
    
    @objc
    public convenience init(uiJsonProperties: String, useFallbackScreen: Bool) {
        self.init()
        self.uiJsonProperties = uiJsonProperties
        self.useFallbackScreen = useFallbackScreen
    }
}
