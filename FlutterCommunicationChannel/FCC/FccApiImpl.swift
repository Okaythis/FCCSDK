//
//  FccApiImpl.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 28/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation
import Flutter
import FlutterPluginRegistrant
import FccAbstractCore

@objc
public final class FccApiImpl: NSObject, FccApi {
    
    
    private static var instance: FccApiImpl?
    private var isPrivateChannelInit = false
    internal static let singleton = FccApiImpl()
    private var notificationHandler: ChannelNotificationHandler<BaseUIViewController<ChannelMessenger<FlutterDefaultMethodChannel<FlutterMethodChannel>>>, FlutterDefaultMethodChannel<FlutterMethodChannel>>?
    private var privateNotificationHandler: ChannelNotificationHandler<BaseUIViewController<ChannelMessenger<FlutterDefaultMethodChannel<FlutterMethodChannel>>>, FlutterDefaultMethodChannel<FlutterMethodChannel>>?
    internal var binaryMessenger: FlutterBinaryMessenger?
    internal var nativeHandler: NativeHandler?
    private  var flutterEngine: FlutterEngine?
    private var flutterViewController: FlutterViewController?
    
    override private init() {
        super.init()
    }
    
    @objc
    public static func getInstance() -> FccApiImpl {
        return FccApiImpl.instance ?? FccApiImpl.singleton
    }
    
    func onPrivateChannelInit() {
        isPrivateChannelInit = true
    }
    
    @objc
    public func prepare(flutterEngineDependency: FlutterEngineDependency){
        let fe = flutterEngineDependency
        flutterEngine = FlutterEngine(name: fe.flutterEngineId)
        flutterEngine!.run()
        
        self.flutterViewController = FlutterViewController(engine: self.flutterEngine!, nibName: nil, bundle: nil)
        self.binaryMessenger = self.flutterViewController!.binaryMessenger
        
        GeneratedPluginRegistrant.register(with: self.flutterEngine!)
        
        initChannelsAndHandlers(privateChannelName: fe.secureChannelName)
        createPrivateChannel(channelName: fe.secureChannelName)
    }
    
    
    @objc
    public func displayUI(parcel: Parcel) {
        self.privateNotificationHandler?.sendNotification(receiver: .DISPLAY_UI, parcel: parcel)
    }
    
    @objc
    public func buildUI(parcel: Parcel) {
        self.privateNotificationHandler?.sendNotification(receiver: .BUILD_UI, parcel: parcel)
    }
    
    @objc
    public func attachView(fccData: FccData)  {
        
        if(!isPrivateChannelInit){
            // Notify admin if possible attack
            return
        }
        
        self.notificationHandler?.setNativeHandler(nativeHandler: fccData.nativeHandler)
        self.privateNotificationHandler?.setNativeHandler(nativeHandler: fccData.nativeHandler)
        fccData.nativeHandler.onScreenReady()
        self.flutterViewController!.modalPresentationStyle = .fullScreen
        fccData.controller.present(self.flutterViewController!, animated: true, completion: nil)
    }
    
    @objc
    public func hideUI() {
        self.privateNotificationHandler?.sendNotification(receiver: .HIDE_UI, parcel: nil)
        self.nativeHandler = nil
    }
    
    public func showTransactionApprovedScreen() {
        self.privateNotificationHandler?.sendNotification(receiver: .SHOW_TRANSACTION_APPROVED_SCREEN, parcel: nil)
    }
    
    public func showTransactionDeclinedScreen() {
        self.privateNotificationHandler?.sendNotification(receiver: .SHOW_TRANSACTION_DECLINED_SCREEN, parcel: nil)
    }
    
    private func createPrivateChannel(channelName: String) {
        self.notificationHandler?.sendNotification(receiver: .CREATE_PRIVATE_CHANNEL, parcel: PrivateChannelData(channelName: channelName))
    }
    
    private func initChannelsAndHandlers(privateChannelName: String) {
        let channelMethod = FlutterDefaultMethodChannel<FlutterMethodChannel>(binaryMessenger: self.binaryMessenger!, channelName: ChannelNotificationUtil.DEFAULT_CHANNEL_NOTIFICATION_KEY)
        let privateChannelMethod = FlutterDefaultMethodChannel<FlutterMethodChannel>(binaryMessenger: self.binaryMessenger!, channelName: privateChannelName)
        
        let uiViewController = BaseUIViewController(channel: channelMethod , messenger: ChannelMessenger<FlutterDefaultMethodChannel<FlutterMethodChannel>>())
        let privateUiViewController = BaseUIViewController(channel: privateChannelMethod , messenger: ChannelMessenger<FlutterDefaultMethodChannel<FlutterMethodChannel>>())
        
        self.notificationHandler = ChannelNotificationHandler(channelMethod: channelMethod, uiController: uiViewController)
        self.privateNotificationHandler = ChannelNotificationHandler(channelMethod: privateChannelMethod, uiController: privateUiViewController)
        
        self.notificationHandler?.registerNotificationReceiver(receiver: FlutterDefaultChannelNotificationReceiver(channelNotificationhandler: self.notificationHandler!))
        self.privateNotificationHandler?.registerNotificationReceiver(receiver: FlutterPrivateChannelNotificationReceiver(channelNotificationhandler: self.privateNotificationHandler!))
    }
    
    public typealias H = NativeHandler
    public typealias P = Parcel
}
