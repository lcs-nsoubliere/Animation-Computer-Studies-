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
let preferredWidth = 600

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

//Changing line thicknest
canvas.defaultLineWidth = 5

// Draw the six lines to start design (bottom-left courner)
canvas.drawAxes()
canvas.defaultLineWidth = 6
canvas.drawLine(from: Point(x: 0, y: 7 * 60), to: Point(x: 600 , y: 7 * 60))
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 6 * 60), to: Point(x: 600 , y: 6 * 60))
canvas.defaultLineWidth = 4
canvas.drawLine(from: Point(x: 0, y: 5 * 60), to: Point(x: 600 , y: 5 * 60))
canvas.defaultLineWidth = 3
canvas.drawLine(from: Point(x: 0, y: 4 * 60), to: Point(x: 600 , y: 4 * 60))
canvas.defaultLineWidth = 2
canvas.drawLine(from: Point(x: 0, y: 3 * 60), to: Point(x: 600 , y: 3 * 60))
canvas.defaultLineWidth = 1
canvas.drawLine(from: Point(x: 0, y: 2 * 60), to: Point(x: 600 , y: 2 * 60))


//drawing rectangle
canvas.drawRectangle(at: Point(x: 490, y: 100), width: 100, height: 345)
canvas.drawRectangle(at: Point(x: 365, y: 100), width: 100, height: 345)

//drawing ellipse
canvas.drawEllipse(at: Point(x: 55, y: 260), width: 90, height: 400)

//draw all remaining shapes with no fill





















/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Replace this comment with your first comment – what is the goal of the code you're about to write?
// Draw the six lines to start design (bottom-left courner)
canvas.drawAxes()

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
