//
//  TriggerKeyEvent.swift
//  test2
//
//  Created by Valentin Brosseau on 13/05/2016.
//  Copyright © 2016 Valentin Brosseau. All rights reserved.
//

import Foundation

func command_space(){
    let src = CGEventSourceCreate(CGEventSourceStateID.HIDSystemState)
    
    let spcd = CGEventCreateKeyboardEvent(src, 0x31, true)
    let spcu = CGEventCreateKeyboardEvent(src, 0x31, false)
    
    CGEventSetFlags(spcd, CGEventFlags.MaskCommand)
    CGEventSetFlags(spcu, CGEventFlags.MaskCommand)
    
    
    let loc = CGEventTapLocation.CGHIDEventTap
    
    CGEventPost(loc, spcd)
    CGEventPost(loc, spcu)
}

func command_left(){
    let src = CGEventSourceCreate(CGEventSourceStateID.HIDSystemState)
    
    let spcd = CGEventCreateKeyboardEvent(src, 0x7B, true)
    let spcu = CGEventCreateKeyboardEvent(src, 0x7B, false)
    
    CGEventSetFlags(spcd, CGEventFlags.MaskCommand)
    CGEventSetFlags(spcu, CGEventFlags.MaskCommand)
    
    
    let loc = CGEventTapLocation.CGHIDEventTap
    
    CGEventPost(loc, spcd)
    CGEventPost(loc, spcu)
}

func command_right(){
    let src = CGEventSourceCreate(CGEventSourceStateID.HIDSystemState)
    
    let spcd = CGEventCreateKeyboardEvent(src, 0x7C, true)
    let spcu = CGEventCreateKeyboardEvent(src, 0x7C, false)
    
    CGEventSetFlags(spcd, CGEventFlags.MaskCommand)
    CGEventSetFlags(spcu, CGEventFlags.MaskCommand)
    
    
    let loc = CGEventTapLocation.CGHIDEventTap
    
    CGEventPost(loc, spcd)
    CGEventPost(loc, spcu)
}