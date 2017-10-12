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

for x in stride(from: 25, through: 275, by: 50){
    for y in stride(from: 275, through: 25, by: -50){
       canvas.translate(byX: x, byY: y)

        var randomnum = random(from: 1, toButNotIncluding: 3)
        
        if randomnum == 1{
        canvas.lineColor = Color.init(hue: x, saturation: 100, brightness: 100, alpha: 100)
        canvas.rotate(by: -45)
        canvas.drawLine(fromX: 0, fromY: -35, toX: 0, toY: 35)
       canvas.rotate(by: 45)
            
        }else {
          canvas.lineColor = Color.init(hue: x, saturation: 100, brightness: 100, alpha: 100)
            canvas.rotate(by: 45)
            canvas.drawLine(fromX: 0, fromY: -35, toX: 0, toY: 35)
            canvas.rotate(by: -45)
            
        }
        canvas.translate(byX: -x, byY: -y)
    }
}







/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
