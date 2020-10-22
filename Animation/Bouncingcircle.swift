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
    
    // Initial position of circle
    var x: Int = Int.random(in: 1...460)
    var y: Int = Int.random(in: 1...460)
    
    // change in position
    var dx: Int = 1
    var dy: Int = 1
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        
        // turn off boarders
        canvas.drawShapesWithBorders = false
        
        //animation speed
        canvas.framesPerSecond = 60
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // changing position of the circle
        x+=dx
        y+=dy
        
        //making it soot for the syafkjqwpeifh
        if x >= 480 {
            dx = -1
        } else if x <= 20 {
            dx = 1
        } else if y >= 480 {
            dy = -1
        } else if y <= 20 {
            dy = 1
        }
        
        //draw rectangle
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        // draw the circle
        canvas.fillColor = Color.black
        canvas.drawEllipse(at: Point(x: x, y: y ), width: 40, height: 40)
        
    }
        
}
