//
//  AppDelegate.swift
//  simplyBack
//
//  Created by Valentin Brosseau on 14/05/2016.
//  Copyright © 2016 Valentin Brosseau. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        monitor()
    }
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    
}