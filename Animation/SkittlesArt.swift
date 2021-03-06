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
class SkittlesArt: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        //Slow the animation down
        canvas.framesPerSecond = 1
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //clear the backround each time
        canvas.fillColor = Color.white
        //canvas.drawRectangle(at: Point(x: 0, y: 0), width: 300, height: 300)
        
        //generate 7 random 0s or 1s
        let cellSize = 10

        for x in stride(from: 0, through: 300, by: cellSize) {
            
            //generate the random 0 or 1
            let skittle = Bool.random()
            
            //When the skittle is 1 ( or true)we draw first
            if skittle == true {
                //draw the line first, then go every other
                for y in stride(from: cellSize, through: 300 - cellSize, by: cellSize * 2) {
                    
                    //draw a line
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y + cellSize))
                }
            } else {
                //draw a gap first, then go every other
                for y in stride(from: 0, through: 300 - cellSize * 2, by: cellSize * 2) {
                    
                    //draw a line
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y + cellSize))
                }
            }
        }
        //now horizontally

        //generate 7 random 0s or 1s

        for y in stride(from: 0, through: 300, by: cellSize) {
            
            //generate the random 0 or 1
            let skittle = Bool.random()
            
            //When the skittle is 1 ( or true)we draw first
            if skittle == true {
                //draw the line first, then go every other
                for x in stride(from: cellSize, through: 300 - cellSize, by: cellSize * 2) {
                    
                    //draw a line
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + cellSize, y: y))
                }
            } else {
                //draw a gap first, then go every other
                for x in stride(from: 0, through: 300 - cellSize * 2, by: cellSize * 2) {
                    
                    //draw a line
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + cellSize, y: y))
                }
            }
        }

        
    }
    
}

