//
//  FiveCircles.swift
//  Animation
//
//  Created by Noah Soubliere on 2020-10-16.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//
import Foundation
import CanvasGraphics

class FiveCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circles and introducing variables
    var x: Int
    var x1: Int
    var x2: Int
    var x3: Int
    var x4: Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position for all the X
        x = 250
        x1 = 250
        x2 = 250
        x3 = 250
        x4 = 250

        //slow down animation
        canvas.framesPerSecond = 60
        
        // turn off boarders
        canvas.drawShapesWithBorders = false
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        //Colour
        canvas.fillColor = Color(hue: 260, saturation: 0, brightness: 0, alpha: 100)
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x, y: 50), width: 50, height: 50)
       
        // Change position
        x1 -= 1
        //Colour
        canvas.fillColor = Color(hue: 260, saturation: 100, brightness: 75, alpha: 100)
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x1, y: 150), width: 50, height: 50)
       
        // Change position
        x2 += 1
        //Colour
        canvas.fillColor = Color(hue: 140, saturation: 100, brightness: 100, alpha: 100)
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x2, y: 250), width: 50, height: 50)
       
        // Change position
        x3 -= 1
        //Colour
        canvas.fillColor = Color(hue: 40, saturation: 100, brightness: 100, alpha: 100)
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x3, y: 350), width: 50, height: 50)
        
        // Change position
        x4 += 1
        //Colour
        canvas.fillColor = Color(hue: 280, saturation: 100, brightness: 80, alpha: 100)
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x4, y: 450), width: 50, height: 50)
    }
}
   

