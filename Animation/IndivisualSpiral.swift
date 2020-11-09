//
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

//Define a class creats a spiral
// -a "class" is just a way to group data (properties) together
//  with behaviour (things we want to happen)
class IndivdualSpiral {
    
    //1. Properties
    //
    // A property is somthing that describes the item.
    // e.g.: A student at LCS has a house, a hair colour, a height
    
    
    //2. Initilazer has one job: give each property an initial
    //value
    
    // 3. Methods
    //
    // here we describe
}
class IndivisualSpiral: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
    }
    
}

