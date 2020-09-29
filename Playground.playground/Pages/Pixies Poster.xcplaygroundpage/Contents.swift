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

canvas.defaultBorderWidth = 0


// draw the axes with a scale
canvas.drawAxes(withScale: true, by: 50)

// Draw all remaining shapes with  fill
//black rectangle
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height:400)



// draw a line of circles
let limeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
canvas.fillColor = limeGreen
for y in stride(from: 0,
                to: 450,
                by: 50) {
    
    for x in stride(from: 0,
                   to: 450,
                by: 50) {
       
        
        //code in this block is repeated 10 times
        x
        //draw circle
        canvas.fillColor = limeGreen

        canvas.drawEllipse(at: Point(x: x + 0, y: y + 0),
                           width: 45,
                             height:45)
  
    }

    
}

//green rectangle
canvas.fillColor = limeGreen
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height:200)

//Text

canvas.drawText(message: "pixies", at: Point(x: 25, y: 415), size: 65, kerning: 4.20)

canvas.drawText(message: "saturday", at: Point(x: 25, y: 545), size: 15, kerning: 2)
canvas.drawText(message: "december 13th 1989", at: Point(x: 25, y: 525), size: 15, kerning: 2)
canvas.drawText(message: "9 pm over 21", at: Point(x: 25, y: 505), size: 15, kerning: 2)

canvas.drawText(message: "at the rat", at: Point(x: 230, y: 545), size: 15, kerning: 2)
canvas.drawText(message: "528 commonwealth", at: Point(x: 230, y: 525), size: 15, kerning: 2)
canvas.drawText(message: "boston,bass", at: Point(x: 230, y: 505), size: 15, kerning: 2)


//White Circles
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 50, y: 50), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 100, y: 50), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 150, y: 50), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 200, y: 50), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 250, y: 50), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 300, y: 50), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 350, y: 50), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 50, y: 100), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 100, y: 100), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 150, y: 100), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 200, y: 100), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 250, y: 100), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 200, y: 100), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 250, y: 100), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 300, y: 100), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 50, y: 150), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 100, y: 150), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 150, y: 150), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 200, y: 150), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 250, y: 150), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 50, y: 200), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 100, y: 200), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 150, y: 200), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 200, y: 200), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 50, y: 250), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 100, y: 250), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 150, y: 250), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 50, y: 300), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 100, y: 300), width: 45, height: 45)
canvas.drawEllipse(at: Point(x: 50, y: 350), width: 45, height: 45)











// draw the axes with a scale
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
