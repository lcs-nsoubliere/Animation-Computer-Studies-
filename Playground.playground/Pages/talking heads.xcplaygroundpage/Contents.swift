//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas


//COLORS & vertices
let deepOrange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let brightYellow = Color(hue: 46, saturation: 71, brightness: 98, alpha: 100)

//canvas color
canvas.fillColor = deepOrange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// turn off boarders
canvas.drawShapesWithBorders = false

// tryangles
for y in stride(from: 200, through: 600, by: 45) {
    for x in stride(from: 0, through: 400, by: 45) {
        if x==0 {
            canvas.fillColor = offWhite
        } else if x==400 {
            canvas.fillColor = offWhite
        } else if y==600 {
            canvas.fillColor = offWhite
        } else if y==0 {
            canvas.fillColor = offWhite
        } else if x==0 {
            canvas.fillColor = offWhite
        } else if x + y == 600 && x != 250 && x != 250 {
            canvas.fillColor = offWhite
        } else if x + y == 600 {
            canvas.fillColor = offWhite
        } else {
            canvas.fillColor = brightYellow
        }
        
        var vertices: [Point] = [] //empty list of vertices
        vertices.append(Point(x: x, y: y)) //start
        vertices.append(Point(x: 45 + x, y: y))
        vertices.append(Point(x: 45 + x, y: 45 + y)) //end
        
        canvas.drawCustomShape(with: vertices)
        
    }
}

//WHITE text
canvas.textColor = offWhite

canvas.drawText(message: "talking heads", at: Point(x: 15, y: 140), size: 42, kerning: 3)

canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 17, y: 28), size: 9, kerning: 0.05)

canvas.drawText(message: "at cbgband omfug", at: Point(x: 150, y: 28), size: 9, kerning: 0.05)

canvas.drawText(message: "also appearing:", at: Point(x: 270, y: 28), size: 9, kerning: 0.05)

canvas.drawText(message: "september 12, 13, 14 1975", at: Point(x: 17, y: 10), size: 9, kerning: 0.05)

canvas.drawText(message: "315 bowery, new york city", at: Point(x: 150, y: 10), size: 9, kerning: 0.05)

canvas.drawText(message: "from brooklyn the shirts", at: Point(x: 270, y: 10), size: 9, kerning: 0.05)

// draw the axes with a scale
canvas.drawAxes(withScale: true, by: 50)
