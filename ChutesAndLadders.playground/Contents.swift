import SwiftUI
import Foundation

/// Rules of the game
///
/// The board has 25 squares and the aim is to get to square 25
/// Player starts at square zero
///  Each turn you roll a six sided die and then move to the square above
///  if you land at the bottom of a ladder, you move up
///  if you land at the top of the snake, you move to the bottom.


// Drawing the game board
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

/// Squares with a ladder base will have a positive value
board[03] = +08; board[06] = +11; board[09] = +9; board[10] = +2;

/// Squares with a snake head will have a negative number to move you down
board[14] = -10; board[19] = -11; board[22] = -2; board[24] = -8;

var playerPosition = 0
//var diceRoll = Int.random(in: 1...6)
var diceRoll = 19
// #TODO add a switch statement that will print a prompt based on the dice roll

print(board)
playerPosition += diceRoll
if playerPosition >= 25 {
    print("Congratulations, you've won. Everybody hates you")
} else if playerPosition == 0 {
    print("Well this is awkward")
} else if board[playerPosition] != 0 {
    // if they player hits the bottom of a ladder
    if board[playerPosition] > 0 {
        playerPosition += board[playerPosition]
        print("You've hit a ladder, Up, up and away. You're new position is \(playerPosition)")
    } else if board[playerPosition] < 0 {
        playerPosition += board[playerPosition]
        print("whoops! You've been bitten by a snake, better luck next time. Your new position is \(playerPosition)")
    } else {
        playerPosition += board[playerPosition]
        // # TODO have an array of random things to say and print them here
        print("great job slow and steady wins the race")
    }

}





