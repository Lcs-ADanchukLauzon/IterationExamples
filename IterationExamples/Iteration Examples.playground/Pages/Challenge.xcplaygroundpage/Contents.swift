//: [Previous](@previous) / [Next](@next)
//: # Challenge
//: Extend the code you wrote on the following page to generate this image:
//:
//: ![challenge](challenge.png "Challenge")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 300, height: 300)
canvas.defaultLineWidth = 3
canvas.translate(byX: 150, byY: 150)

for i in stride(from: 0, to: 360, by: 9) {
    
    canvas.lineColor = Color.init(hue: i, saturation: 100, brightness: 100, alpha: 100)

    canvas.rotate(by: Degrees(i))
    canvas.drawLine(fromX: 0, fromY: 0, toX: 100, toY: 0)
    canvas.rotate(by: Degrees(-i))
}




/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
