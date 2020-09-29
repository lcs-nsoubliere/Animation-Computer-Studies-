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
                           width: 50,
                             height:50)
  
    }

    
}

//green rectangle

canvas.fillColor = limeGreen
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height:200)





















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
