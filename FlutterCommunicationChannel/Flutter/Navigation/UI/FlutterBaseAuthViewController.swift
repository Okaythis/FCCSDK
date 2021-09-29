//
//  FlutterBaseAuthViewController.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 07/09/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import UIKit
import Flutter

class FlutterBaseAuthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let flutterViewController = FlutterViewController(project: nil, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true, completion: nil)
    }
}
