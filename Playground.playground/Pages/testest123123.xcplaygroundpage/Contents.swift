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
//COLORS & vertices
let deepOrange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let brightYellow = Color(hue: 46, saturation: 71, brightness: 98, alpha: 100)


// draw triengles
for y in stride(from: 200,
                to: 600,
                by: 1) {
    
    for x in stride(from: 45,
                   to: 400,
                by: 1) {
       
        
        //code in this block is repeated 10 times
        x
        canvas.fillColor = brightYellow
        var vertices: [Point] = [] //empty list of vertices
        vertices.append(Point(x: 45 + x, y: 200 + y)) //start
        vertices.append(Point(x: 0 + x, y: 200 + y))
        vertices.append(Point(x: 45 + x, y: 245 + y)) //end
     
        canvas.drawCustomShape(with: vertices)
    }

    
}































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


// turn off boarders
canvas.drawShapesWithBorders = false

// Circle
for y in stride(from: 0, through: 400, by: 40) {
for x in stride(from: 0, through: 400, by: 40) {
if x==0 {
canvas.fillColor = limeGreen
} else if x==400 {
canvas.fillColor = limeGreen
} else if y==400 {
canvas.fillColor = limeGreen
} else if y==0 {
canvas.fillColor = limeGreen
} else if x==0 {
canvas.fillColor = limeGreen
} else if x + y == 400 && x != 0 && x != 400 {
canvas.fillColor = limeGreen
} else if x + y == > 400 {
canvas.fillColor = limeGreen
} else {
canvas.fillColor = offWhite
}
}
}
