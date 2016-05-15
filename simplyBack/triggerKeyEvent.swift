//
//  TriggerKeyEvent.swift
//  test2
//
//  Created by Valentin Brosseau on 13/05/2016.
//  Copyright © 2016 Valentin Brosseau. All rights reserved.
//

import Foundation

func press_key(key: UInt16, command: Bool = false){
    let src = CGEventSourceCreate(CGEventSourceStateID.HIDSystemState)
    
    let pressed  = CGEventCreateKeyboardEvent(src, key, true)
    let released = CGEventCreateKeyboardEvent(src, key, false)
    
    if(command){
        CGEventSetFlags(pressed, CGEventFlags.MaskCommand)
        CGEventSetFlags(released, CGEventFlags.MaskCommand)
    }
    
    let loc = CGEventTapLocation.CGHIDEventTap
    
    CGEventPost(loc, pressed)
    CGEventPost(loc, released)
}


func command_space(){
    press_key(0x31, command: true)
}

func command_left(){
    press_key(0x7B, command: true)
}

func command_right(){
    press_key(0x7C, command: true)
}