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

// Draw all remaining shapes with no fill
canvas.drawShapesWithFill = false
canvas.drawRectangle(at: Point(x: 320, y: 51), width: 320, height:435)

// Draw all remaining shapes with  fill
canvas.drawShapesWithFill = true
canvas.fillColor = Color.black

//drawing ellipse
canvas.drawEllipse(at: Point(x: 351, y: 461), width: 20, height: 20)
canvas.drawEllipse(at: Point(x: 351, y: 80), width: 20, height: 20)

//drawing rectangle
canvas.drawRectangle(at: Point(x: 500, y: 95), width: 100, height: 350)
canvas.drawRectangle(at: Point(x: 370, y: 95), width: 100, height: 350)

//drawing ellipse
canvas.drawEllipse(at: Point(x: 30, y: 269), width: 100, height: 395)

//drawing ellipse
canvas.drawEllipse(at: Point(x: 160, y: 39), width: 80, height: 80)

//drawing ellipse
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 550, y: 360), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 550, y: 419), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 550, y: 300), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 550, y: 240), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 550, y: 180), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 550, y: 120), width: 27, height: 27)

//drawing ellipse
canvas.drawEllipse(at: Point(x: 422, y: 360), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 422, y: 419), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 422, y: 300), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 422, y: 240), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 422, y: 180), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 422, y: 120), width: 27, height: 27)

//drawing ellipse
canvas.drawEllipse(at: Point(x: 30, y: 360), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 30, y: 419), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 30, y: 300), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 30, y: 240), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 30, y: 180), width: 27, height: 27)
canvas.drawEllipse(at: Point(x: 30, y: 120), width: 27, height: 27)

//drawing ellipse
canvas.drawEllipse(at: Point(x: 160, y: 39), width: 70, height: 70)

//Changing line thicknest
canvas.defaultLineWidth = 9

canvas.defaultLineWidth = 8
canvas.drawLine(from: Point(x: 0, y: 7 * 60), to: Point(x: 600 , y: 7 * 60))
canvas.defaultLineWidth = 7
canvas.drawLine(from: Point(x: 0, y: 6 * 60), to: Point(x: 600 , y: 6 * 60))
canvas.defaultLineWidth = 6
canvas.drawLine(from: Point(x: 0, y: 5 * 60), to: Point(x: 600 , y: 5 * 60))
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 4 * 60), to: Point(x: 600 , y: 4 * 60))
canvas.defaultLineWidth = 4
canvas.drawLine(from: Point(x: 0, y: 3 * 60), to: Point(x: 600 , y: 3 * 60))
canvas.defaultLineWidth = 3
canvas.drawLine(from: Point(x: 0, y: 2 * 60), to: Point(x: 600 , y: 2 * 60))

canvas.copyToClipboard()
