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
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
//Colours
let offWhite = Color(hue: 60, saturation: 25, brightness: 100, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
let deepRed = Color(hue: 5, saturation: 100, brightness: 100, alpha: 100)

//Fill Canvas
canvas.fillColor = black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

canvas.drawShapesWithBorders = false

//draw squares
for y in stride(from: 0, to: 600, by: 25) {
    for x in stride(from: 0, to: 400, by: 100){
        canvas.fillColor = deepRed
        
        canvas.drawRectangle(at: Point(x: x, y: y), width: 400, height: 10)
        
    }
}

//draw custom shape (backround)
canvas.fillColor = deepRed
var vertices: [Point] = [] //empty list of vertices
vertices.append(Point(x: 50, y: 0))
vertices.append(Point(x: 100, y: 600))
vertices.append(Point(x: 300, y: 600))
vertices.append(Point(x: 350, y: 0))
canvas.drawCustomShape(with: vertices)

//draw rectangles (black
for y in stride(from: 0, to: 600, by: 50) {
    for x in stride(from: 0, to: 400, by: 100){
        canvas.fillColor = black
        
        canvas.drawRectangle(at: Point(x: x, y: y), width: 400, height: 10)
        
    }
}

//draw the Zeplin (fins)
canvas.fillColor = deepRed
canvas.drawShapesWithBorders = true
canvas.defaultBorderWidth = 5
var vertices2: [Point] = []
vertices.append(Point(x: 385, y: 440))
vertices.append(Point(x: 385, y: 290))
vertices.append(Point(x: 345, y: 320))
vertices.append(Point(x: 345, y: 400))
vertices.append(Point(x: 385, y: 440))
canvas.drawCustomShape(with: vertices)

//Draw Zeplin (ellipse)
canvas.fillColor = deepRed

canvas.drawEllipse(at: Point(x: 200, y: 360), width: 370, height: 140)

canvas.defaultBorderWidth = 1

//Draw Zeplin (black ellipse for text)
canvas.fillColor = black
canvas.drawEllipse(at: Point(x: 200, y: 349), width: 350, height: 100)

//Draw Zeplin (Text)
canvas.textColor = deepRed
canvas.drawText(message: "MOTHERSHIP", at: Point(x: 50, y: 320), size: 45, kerning: 1)

//Building
canvas.fillColor = offWhite
canvas.drawShapesWithBorders = true
canvas.borderColor = black

//to little tower things
canvas.drawEllipse(at: Point(x: 115, y: 190), width: 20, height: 20)
canvas.drawEllipse(at: Point(x: 285, y: 190), width: 20, height: 20)

// body of the building
canvas.drawRectangle(at: Point(x: 80, y: 0), width: 240, height: 140)
canvas.drawRectangle(at: Point(x: 80, y: 0), width: 70, height: 190)
canvas.drawRectangle(at: Point(x: 250, y: 0), width: 70, height: 190)

// black part for windows
canvas.fillColor = black
canvas.drawEllipse(at: Point(x: 115, y: 150), width: 30, height: 30)
canvas.drawEllipse(at: Point(x: 285, y: 150), width: 30, height: 30)
canvas.drawEllipse(at: Point(x: 115, y: 50), width: 30, height: 30)
canvas.drawEllipse(at: Point(x: 285, y: 50), width: 30, height: 30)

//red part for windows
canvas.fillColor = deepRed
canvas.drawEllipse(at: Point(x: 115, y: 150), width: 20, height: 20)
canvas.drawEllipse(at: Point(x: 285, y: 150), width: 20, height: 20)
canvas.drawEllipse(at: Point(x: 115, y: 50), width: 20, height: 20)
canvas.drawEllipse(at: Point(x: 285, y: 50), width: 20, height: 20)

//center window
canvas.drawEllipse(at: Point(x: 200, y: 100), width: 40, height: 40)
canvas.fillColor = offWhite
canvas.drawEllipse(at: Point(x: 200, y: 100), width: 35, height: 35)

//door
canvas.fillColor = black
canvas.drawRectangle(at: Point(x: 185, y: 0), width: 30, height: 45)
canvas.fillColor = offWhite
canvas.drawRectangle(at: Point(x: 190, y: 0), width: 20, height: 40)

// draw the axes with a scale
canvas.textColor = Color.yellow
canvas.drawAxes(withScale: true, by: 50)
/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

//: [Next](@next)

//: [Next](@next)
