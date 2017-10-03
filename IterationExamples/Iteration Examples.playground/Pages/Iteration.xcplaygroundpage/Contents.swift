//: [Previous](@previous) / [Next](@next)
//: # Iteration
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
// Create canvas
let canvas = Canvas(width: 300, height: 500)


for i in stride(from: 0, through: 500, by: 50) {
    
    
    canvas.drawShapesWithBorders = false
    canvas.fillColor = Color.init(hue: 0, saturation: 100, brightness: i/5, alpha: 100)
    
    
// draw rec
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: i, width: canvas.width, height: 50)
}





PlaygroundPage.current.liveView = canvas.imageView
