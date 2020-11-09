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
       
        let Grey = Color(hue: 303, saturation: 83, brightness: 9, alpha: 100)
       let Purple = Color(hue: 279, saturation: 74, brightness: 100, alpha: 100)
        
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 800)
        
        //draw sky
        canvas.fillColor = Purple
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 800, height: 800)
        
        //Draw Mountain
        canvas.fillColor = Grey
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
                
        //draw mountain top
        canvas.fillColor = Color.white
        var vertices1: [Point] = [] //empty list of vertices
        vertices1.append(Point(x: 300, y: 689))
        vertices1.append(Point(x: 350, y: 701))
        vertices1.append(Point(x: 400, y: 685))
        vertices1.append(Point(x: 300, y: 689))
        canvas.drawCustomShape(with: vertices1)
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
    }
    
}

