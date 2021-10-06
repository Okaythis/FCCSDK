//
//  DisplayArtifact.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 08/09/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation

@objc
open class DisplayArtifact: NSObject, Parcel {
    private(set) var artifact = [UInt8]()
    
    public override init() {
        super.init()
    }
    
    @objc
    convenience public init(artifact: [UInt8]) {
        self.init()
        self.artifact = artifact
    }

    @objc
    public func pack() -> Any {
        // watermark functionality is off because of incompleted implementation
        // return FlutterStandardTypedData(bytes: Data(artifact))
        fatalError("Not implemented")
    }
}
