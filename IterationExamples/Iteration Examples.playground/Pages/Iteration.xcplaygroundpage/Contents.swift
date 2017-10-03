//: [Previous](@previous) / [Next](@next)
//: # Iteration
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
// Create canvas
let canvas = Canvas(width: 360, height: 360)


for i in stride(from: 0, through: 360, by: 20) {
    
    
    canvas.drawShapesWithBorders = false
    canvas.fillColor = Color.init(hue: i, saturation: 100, brightness: 100, alpha: 100)
    
    
// draw rec
canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 0, width: 20, height: 360)

    
    
}





PlaygroundPage.current.liveView = canvas.imageView
