//
//  Mountain design thingy.swift
//  Animation
//
//  Created by Noah Soubliere on 2020-11-06.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class MountainDesign: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
      
        let fuchsia = Color(hue: 279, saturation: 74, brightness: 100, alpha: 100)
        
      
      
        // Create canvas size
        canvas = Canvas(width: 800, height: 800)
        
        //draw sky
        canvas.fillColor = fuchsia
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 800, height: 800)
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //design for stars
        canvas.defaultLineWidth = 4
        
        for y in stride(from: 0, to: 800, by: 25) {
            for x in stride(from: 0, to: 800, by: 25){
                canvas.defaultLineWidth = 5
                canvas.lineColor = Color.yellow
               
                // Change position
                
                canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y))
                
                
            }
            
        }
        //Draw Mountain
        canvas.fillColor = Color.purple
        var vertices: [Point] = [] //empty list of vertices
        vertices.append(Point(x: 0, y: 0))
        vertices.append(Point(x: 0, y: 600))
        vertices.append(Point(x: 50, y: 590))
        vertices.append(Point(x: 100, y: 610))
        vertices.append(Point(x: 150, y: 584))
        vertices.append(Point(x: 200, y: 613))
        vertices.append(Point(x: 250, y: 648))
        vertices.append(Point(x: 300, y: 689))
        vertices.append(Point(x: 350, y: 701))
        vertices.append(Point(x: 400, y: 685))
        vertices.append(Point(x: 450, y: 643))
        vertices.append(Point(x: 500, y: 601))
        vertices.append(Point(x: 550, y: 546))
        vertices.append(Point(x: 600, y: 501))
        vertices.append(Point(x: 650, y: 507))
        vertices.append(Point(x: 700, y: 543))
        vertices.append(Point(x: 750, y: 599))
        vertices.append(Point(x: 800, y: 621))
        vertices.append(Point(x: 800, y: 0))
        canvas.drawCustomShape(with: vertices)
        
        //draw mountain top (SNOW)
        canvas.fillColor = Color.white
        var vertices1: [Point] = [] //empty list of vertices
        vertices1.append(Point(x: 250, y: 650))
        vertices1.append(Point(x: 300, y: 689))
        vertices1.append(Point(x: 350, y: 701))
        vertices1.append(Point(x: 400, y: 685))
        vertices1.append(Point(x: 450, y: 644))
        vertices1.append(Point(x: 422, y: 623))
        vertices1.append(Point(x: 370, y: 600))
        vertices1.append(Point(x: 310, y: 611))
        vertices1.append(Point(x: 270, y: 633))
        canvas.drawCustomShape(with: vertices1)
        
        canvas.drawAxes(withScale: true, by: 50)
    }
}
