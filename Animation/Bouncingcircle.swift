//
//  MovingCircles.swift
//  Animation
//
//  Created by Noah Soubliere on 2020-10-20.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class Bouncingcircle: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var x: Int = 250
    var y: Int = 250
    
    // change in position
    var dx: Int = 1
    var dy: Int = 1
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        //animation speed
        canvas.framesPerSecond = 60
        
        // turn off boarders
        canvas.drawShapesWithBorders = false
        
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // changing position of the circle
        x+=dx
        y+=dy
        
        //making it bounce
        if x >= 500 {
            dx = -1
        } else if x <= 0 {
            dx = 1
        } else if y >= 500 {
            dy = -1
        } else if y <= 0 {
            dy = 1
        }
        
        // draw the circle
        canvas.drawEllipse(at: Point(x: Int.random(in: 1...460), y: Int.random(in: 1...460)), width: 40, height: 40)
        
    }
        
}
