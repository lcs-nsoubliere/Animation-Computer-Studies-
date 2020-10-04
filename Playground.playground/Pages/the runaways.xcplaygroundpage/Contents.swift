//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
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




canvas.defaultBorderWidth = 0

// COLORS
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)
let limeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)

canvas.fillColor = pink

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


//All rectangles
canvas.fillColor = black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 175, height: 175)
canvas.drawRectangle(at: Point(x: 225, y: 0), width: 175, height: 175)
canvas.drawRectangle(at: Point(x: 0, y: 225), width: 175, height: 175)
canvas.drawRectangle(at: Point(x: 225, y: 225), width: 175, height: 175)

canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 150, height: 150)
canvas.drawRectangle(at: Point(x: 250, y: 0), width: 150, height: 150)
canvas.drawRectangle(at: Point(x: 0, y: 250), width: 150, height: 150)
canvas.drawRectangle(at: Point(x: 250, y: 250), width: 150, height: 150)

canvas.fillColor = beige
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 125, height: 125)
canvas.drawRectangle(at: Point(x: 275, y: 0), width: 125, height: 125)
canvas.drawRectangle(at: Point(x: 0, y: 275), width: 125, height: 125)
canvas.drawRectangle(at: Point(x: 275, y: 275), width: 125, height: 125)

canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 100, height: 100)
canvas.drawRectangle(at: Point(x: 300, y: 0), width: 100, height: 100)
canvas.drawRectangle(at: Point(x: 0, y: 300), width: 100, height: 100)
canvas.drawRectangle(at: Point(x: 300, y: 300), width: 100, height: 100)

canvas.fillColor = black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 75, height: 75)
canvas.drawRectangle(at: Point(x: 325, y: 0), width: 75, height: 75)
canvas.drawRectangle(at: Point(x: 0, y: 325), width: 75, height: 75)
canvas.drawRectangle(at: Point(x: 325, y: 325), width: 75, height: 75)

canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 50, height: 50)
canvas.drawRectangle(at: Point(x: 350, y: 0), width: 50e, height: 50)
canvas.drawRectangle(at: Point(x: 0, y: 350), width: 50, height: 50)
canvas.drawRectangle(at: Point(x: 350, y: 350), width: 50, height: 50)






// draw the axes with a scale
canvas.fillColor = limeGreen
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
