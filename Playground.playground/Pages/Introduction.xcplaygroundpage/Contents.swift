//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 400
let preferredHeight = 400
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Draw the six lines to start design (bottom-left courner)
canvas.drawAxes()

canvas.drawLine(from: Point(x: 0, y: 7 * 50), to: Point(x: 1 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 6 * 50), to: Point(x: 2 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 5 * 50), to: Point(x: 3 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 4 * 50), to: Point(x: 4 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 3 * 50), to: Point(x: 5 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 2 * 50), to: Point(x: 6 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 1 * 50), to: Point(x: 7 * 50, y: 0))

canvas.drawLine(from: Point(x: 7 * 50, y: 0), to: Point(x: 400, y: 7 * 50))
canvas.drawLine(from: Point(x: 6 * 50, y: 0), to: Point(x: 400, y: 6 * 50))
canvas.drawLine(from: Point(x: 5 * 50, y: 0), to: Point(x: 400, y: 5 * 50))
canvas.drawLine(from: Point(x: 4 * 50, y: 0), to: Point(x: 400, y: 4 * 50))
canvas.drawLine(from: Point(x: 3 * 50, y: 0), to: Point(x: 400, y: 3 * 50))
canvas.drawLine(from: Point(x: 2 * 50, y: 0), to: Point(x: 400, y: 2 * 50))
canvas.drawLine(from: Point(x: 1 * 50, y: 0), to: Point(x: 400, y: 1 * 50))

canvas.drawLine(from: Point(x: 7 * 50, y: 400), to: Point(x: 400, y: 1 * 50))
canvas.drawLine(from: Point(x: 6 * 50, y: 400), to: Point(x: 400, y: 2 * 50))
canvas.drawLine(from: Point(x: 5 * 50, y: 400), to: Point(x: 400, y: 3 * 50))
canvas.drawLine(from: Point(x: 4 * 50, y: 400), to: Point(x: 400, y: 4 * 50))
canvas.drawLine(from: Point(x: 3 * 50, y: 400), to: Point(x: 400, y: 5 * 50))
canvas.drawLine(from: Point(x: 2 * 50, y: 400), to: Point(x: 400, y: 6 * 50))
canvas.drawLine(from: Point(x: 1 * 50, y: 400), to: Point(x: 400, y: 7 * 50))

canvas.drawLine(from: Point(x: 1 * 50, y: 400), to: Point(x: 0, y: 1 * 50))
canvas.drawLine(from: Point(x: 2 * 50, y: 400), to: Point(x: 0, y: 2 * 50))
canvas.drawLine(from: Point(x: 3 * 50, y: 400), to: Point(x: 0, y: 3 * 50))
canvas.drawLine(from: Point(x: 4 * 50, y: 400), to: Point(x: 0, y: 4 * 50))
canvas.drawLine(from: Point(x: 5 * 50, y: 400), to: Point(x: 0, y: 5 * 50))
canvas.drawLine(from: Point(x: 6 * 50, y: 400), to: Point(x: 0, y: 6 * 50))
canvas.drawLine(from: Point(x: 7 * 50, y: 400), to: Point(x: 0, y: 7 * 50))















































