
//
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FourCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    // Position of circles and introducing variables
    var x: Int
    var x1: Int
    var x2: Int
    var x3: Int
    var y: Int
    var y1: Int
    var y2: Int
    var y3: Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        // Set starting position for all the X
        x = 250
        x1 = 250
        x2 = 250
        x3 = 250
        y = 250
        y1 = 250
        y2 =  250
        y3 = 250
  
        //animation speed
        canvas.framesPerSecond = 60
        
        // turn off boarders
        canvas.drawShapesWithBorders = false
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        // Change position
        x += 1
        y += 1
        //Colour
        canvas.fillColor = Color.red
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
       
        // Change position
        x1 -= 1
        y1 -= 1
        //Colour
        canvas.fillColor = Color.yellow
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x1, y: y1), width: 50, height: 50)
       
        // Change position
        x2 -= 1
        y2 += 1
        //Colour
        canvas.fillColor = Color.green
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x2, y: y2), width: 50, height: 50)
       
        // Change position
        x3 += 1
        y3 -= 1
        //Colour
        canvas.fillColor = Color.blue
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x3, y: y3), width: 50, height: 50)
        
    }
    
}

