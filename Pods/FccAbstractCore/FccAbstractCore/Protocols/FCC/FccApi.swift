//
//  FccApi.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 27/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation
import UIKit

@objc
public protocol FccApi {
    /**
     * Sends the watermarked screen to be displayed by the Flutter UI Module
     * */
    func displayUI(parcel: Parcel)
    
    /**
     * Transfers transaction details after starting Flutter engine.
     * Flutter uses the transaction details passed in here to build the screen*/
    func buildUI(parcel: Parcel)
    
    /***
     * Starts the flutter engine*/
    func attachView(fccData: FccData)
    
    
    /// Prepares method channels
    /// - Parameter flutterEngineDependency: Object used to initialize Flutter Engine
    func prepare(flutterEngineDependency: FlutterEngineDependency)
                
    /**
     * Shuts down the flutter engine*/
    func hideUI()
    
    /**
     * Commands the Flutter UI module to display the approved screen*/
    func showTransactionApprovedScreen()
    
    /**
     * Commands the Flutter UI module to display the rejection screen*/
    func showTransactionDeclinedScreen()
}
