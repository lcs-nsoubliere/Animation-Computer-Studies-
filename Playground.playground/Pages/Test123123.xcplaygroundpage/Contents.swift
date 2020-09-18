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
let preferredWidth = 300
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

// Replace this comment with your first comment – what is the goal of the code you're about to write?

//Changing line thicknest
canvas.defaultLineWidth = 5

canvas.drawLine(from: Point(x: 50, y: 10), to: Point(x: 100, y: 500))

canvas.defaultBorderWidth = 5
    
canvas.drawLine(from: Point(x: 50, y: 30), to: Point(x: 100, y: 600))

//drawingellipse
canvas.drawEllipse(at: Point(x: 250, y: 300), width: 50, height: 100)

//draw all remaining shapes with no fill
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 15

// Drawing a custom polygon
canvas.defaultLineWidth = 3




for y in stride(from: 100, through: 550, by: 50)

{canvas.drawLine(from: Point(x:100, y: y) to: Point(x:200, y: y + 50))}











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
