//
//  ImgViewManager.swift
//  react-native-img
//
//  Created by Yusuf Zeren on 22.05.2023.
//

import React
import UIKit

@objc(ImgViewManager)
public class ImgViewManager: RCTViewManager {
    var myView: ImgViewComponent?
    
    public override func view() -> (ImgViewComponent) {
        myView = ImgViewComponent()
        return myView!
    }
    
    func methodQueue() -> DispatchQueue {
        return bridge.uiManager.methodQueue
    }
    @objc public override static func requiresMainQueueSetup() -> Bool {
        return false
    }

}
