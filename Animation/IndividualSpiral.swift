//
//  IndividualSpiral.swift
//  Animation
//
//  Created by Russell Gordon on 2020-11-09.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//
import Foundation
import CanvasGraphics

// Define a class that creates a spiral
// - a "class" is just a way to group data (properties) together
//   with behaviour (things that we want to happen)
class IndividualSpiral {
    
    // 1. Properties
    //
    //    A property is something that describes the item.
    //    e.g.: A student at LCS has a house, a hair color, a height
    var lastPoint: Point
    var angleOffset: Int
    var hue: Float
    var brightness: Float
    var saturation: Float

    // 2. Initializer
    //
    //    An initializer has one job: give each property an initial
    //    value
    init(angleOffset: Int, hue: Float, brightness: Float = 90, saturation: Float = 80) {
        
        // I want every spiral to begin at the same position
        self.lastPoint = Point(x: 0, y: 0)
        
        // Each spiral begins at a slightly different angle
        self.angleOffset = angleOffset
        
        // Set the color characteristic
        self.hue = hue
        self.brightness = brightness
        self.saturation = saturation
        
    
    }
    
    // 3. Methods
    //
    //    Here we describe what behaviour we want to have happen.
    
    // Update (or draw) the position of this spiral
    func update(on canvas: Canvas) {
        
        // Start drawing after the first frame
        if canvas.frameCount > 0 {
            
            //set line width
            canvas.defaultLineWidth = 10
            
            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 5
            
            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + angleOffset)
            
            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius
            
            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
            
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
            //            print(nextPoint)
            
            // Set the line color
            canvas.lineColor = Color(hue: hue,
                                     saturation: saturation,
                                     brightness: brightness,
                                     alpha: 10)
            
            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint, to: nextPoint)
            
            // Set the "new" last point, now that the line is drawn
            lastPoint = nextPoint

        }
        
        
        
    }
    
}
