//
//  monitorMouseEvents.swift
//  simplyBack
//
//  Created by Valentin Brosseau on 14/05/2016.
//  Copyright © 2016 Valentin Brosseau. All rights reserved.
//

import Foundation
import Cocoa

func acquirePrivileges() -> Bool {
    let accessEnabled = AXIsProcessTrustedWithOptions(
        [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String: true])
    
    if accessEnabled != true {
        print("Vous devez autoriser à contrôler voutr ordinateur.")
    }else{
        print ("… En attente …")
    }
    return accessEnabled == true
}

func monitor(){
    acquirePrivileges()
    
    NSEvent.addGlobalMonitorForEventsMatchingMask(
        NSEventMask.OtherMouseDownMask, handler: {(event: NSEvent) in
            //print ("")
            //print ("Evenement de souris : ")
            //print(event)
            
            if(event.buttonNumber == 3){
                command_left()
            }else if(event.buttonNumber == 4){
                command_right()
            }
    })
}