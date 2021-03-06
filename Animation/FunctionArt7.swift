//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt7: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Add many functions
    // This is now a list, or an array, of functions
    var functions: [MathFunction] = []    // empty list
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        canvas.lineColor = Color.init(hue: Int.random(in: 1...360),
                                      saturation:  Int.random(in: 1...100),
                                      brightness:  Int.random(in: 1...100),
                                      alpha:  Int.random(in: 25...100))
        
        
        // Initialize many functions
        for i in 1...20 {
            
            // Create the function
            let newFunction = MathFunction(a: 1.0,
                                           k: 5.0,
                                           d: CGFloat(i) * 25 - CGFloat(canvas.width / 2),
                                           c: 0,
                                           canvas: canvas,
                                           type: .quadratic)
            //All of the types of functions
            //linear
            //quadratic
            //cubic
            //squareRoot
            //absoluteValue
            //exponential
            //reciprocal
            
            
            
            
            
            
            // Add it to the list
            functions.append(newFunction)
            
            
        }
        
        // Speed
        canvas.framesPerSecond = 120
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //clear the canvas
        canvas.fillColor = Color(hue: 0,
                                 saturation: 0,
                                 brightness: 100,
                                 alpha: 50)
       
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)
        
        
        // What frame are we on?
        //        print(canvas.frameCount)
        
        canvas.defaultLineWidth = 10
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))
     
        //raondomly change the verticla position
      //  let newC = Int.random(in: -150...150)
        
        
        //draw the entire list of functions all at once
        for x in 0...canvas.width {
   
            
            
            // Update the position of all functions
            for function in functions {
          
                //Gradually change the vertical stretch / compression
                function.a = 0.25 * sin(Degrees(canvas.frameCount).asRadians() / 0.25)
                
                //function.c = CGFloat(newC)
                function.update(on: canvas,
                                usingInputValue: x)
           
            }
            
            
            
        }
        
        
        
        
        
        
        
        
        
    }
    
}

