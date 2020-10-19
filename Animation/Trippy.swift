
//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class Trippy: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var x: Int
    var x1: Int
    var y: Int
    var y1: Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250

        //slow down animation
        canvas.framesPerSecond = 10
        
        
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // draw circles
        for y1 in stride(from: 0,
                        to: 500,
                        by: 5) {
            
            for x1 in stride(from: 0,
                           to: 500,
                        by: 5) {
               
                
                //code in this block is repeated 10 times
                
                canvas.fillColor = Color.black
                canvas.drawEllipse(at: Point(x: 250, y: 250), width: x1 + 1, height: y1 + 1)
            
            
            
            }

            
        }
    }
    
}
