import UIKit

var drakTheme = false

if drakTheme {
    print("That's Good for my eye's")
} else{
    print("I'm suffering with light theme.")
}


var highScore = 150

if highScore > 500 {
    print("You're the best")
} else if highScore > 300 {
    print("You're Good")
} else if highScore > 200 {
    print("You're average.")
} else if highScore > 100 {
    print("You need to improve")
} else {
    print("You're lose")
}
    


//Swift Ternary Conditional Operator
//Syntax: Exp1 ? Exp2 : Exp3

let num = 40
let result = num % 2 == 0 ? "Even" : "Odd"

print("The Number Is: \(result)")

let num2 = -45
let result2 = num2 >= 0 ? "Positive" : "Nagetive"

print("The Number Is: \(result2)")


//if statement
var Var1: Int = 10

if Var1 < 20 {
    print("The value is less than 20")
}
print("The value is  Var1 \(Var1)")


let userName = "input999"
let inputUserName = "input999"

if userName == inputUserName {
    print("Login Successfully")
}

//if… else if…else statement.
//Problem-1
var Var2: Int = 100

if Var2 == 20 {

    print("Var2 is equal to 20")

} else if Var2 == 50 {

    print("Var2 is equal to 50")

} else {

    print("None of the values is matching")

}

print("Var2 actual value is \(Var2)")


//Problem-2

let month = 10

if month >= 3 && month <= 5 {

    print("Current Season is Spring")

} else if month >= 6 && month <= 8 {

    print("Current Season is Summer")

} else if month >= 9 && month <= 11 {

    print("Current Season is Autumn")

} else {

    print("Current Season is Winter")
}


//Problem-3

let marks = 89

if marks >= 80 && marks <= 89 {

    print("Your Grade Is A+")

} else if marks >= 75 && marks <= 80 {

    print("Your Grade Is A")

} else if marks >= 65 && marks <= 70 {

    print("Your Grade Is A-")

} else {

    print("Your Grade Is F")
}

//if… else statement.

//Problem-1
var number: Int = 50

if number < 40 {

    print("Number is less than 40")

} else {

    print("Number is not less than 20")

}

print("Autual value of number is \(number)")

//Problem-2

var number2: Int = 69

if number2 % 2 == 0 {

    print("Entered number is even.")

} else {

    print("Entered number is odd.")
}

//Problem-3

let username = "123Admin22"
let inputUsername = "123Admin223"

if username == inputUsername {
   print("Login successful.")
} else {
   print("Invalid username.")
}

//nested if statements

//Problem-1
var variableA: Int = 100
var variableB: Int = 200

if variableA == 100 {

    print("1st condition is satisfied")

    if variableB == 200 {

        print("2nd condition is also satisfied")
    }
}

print("Value of variableA is \(variableA)")
print("Value of variableB is \(variableB)")


//Problem-2
let myYear: Int = 2027

if myYear % 4 == 0 {
    if myYear % 100 == 0 {
        if myYear % 400 == 0 {
            print("\(myYear) is a leap year.")
        } else {
            print("\(myYear) is not a leap year.")
         }
    } else {
        print("\(myYear) is a leap year.")
     }
} else {
    print("\(myYear) is not a leap year.")
 }

//Switch Statement
//The example for the break statement

let week = 6
switch week {

case 1:
   print("It's Monday")
   break
case 2:
   print("It's Tuesday")
   break
case 3:
   print("It's Wednesday")
   break
case 4:
   print("It's Thursday")
   break
case 5:
   print("It's Friday")
   break
case 6:
   print("It's Saturday")
   break
default:
   print("Enjoy Your Weekend")
}

//Switch with Enum
enum Phone2 {
    case iPhone13
    case SamsungNote
    case GooglePixel
    case MiNote
}

func chooseYourPhone(on phone2: Phone2) {
    
    switch phone2{
    case .iPhone13:
        print("I used this one.")
    case .SamsungNote:
        print("I won't to switch.")
    case .GooglePixel:
        print("I don't like Android.")
    case .MiNote:
        print("Best phone for Bangladesh.")
    }
}
chooseYourPhone(on:.GooglePixel)

//Switch with Function

let SocerLeague = 50

func scoreWithRank(from rank: Int){
    switch rank{
    case 0:
        print("Play the game in the leage.")
    case 1..<50:
        print("You're in Bronze stage")
    case 50..<100:
        print("You're in Silver stage")
    case 100..<200:
        print("You're in Gold stage")
    default:
        print("You're not able to join this league.")
    }
}
scoreWithRank(from: SocerLeague)

//Fallthrough statement
let Number = 2

switch Number {

case 1:
    print("I'm Case-1")
    fallthrough
case 2:
    print("I'm Case-2")
    fallthrough
case 3:
    print("I'm Case-3")
default:
    print("Not found")
}

//Ranges in Switch Statement

let temp = 43
switch temp {
case ..<0:
    print("It's Freezing")
case 0...20:
    print("It's Cold")
case 20...30:
    print("It's Moderate")
case 31...:
    print("It's Hot")
default:
    print("Please enter valid temperature")
}

//Tuple Matching in Switch Statement

let numbers = (numA: 90, numB: 45, numC: 99 )

switch numbers {
case (90, 77, 0):
    print("Numbers Are 90, 77, 0")
case (43, _, 11): //Wildcard (_): This is used to ignore a specific value in the tuple.
    print("Numbers Are 43, _, 11")
case (90, 45, 99):
    print("Numbers Are 90, 45, 99")
default:
    print("Not Match")
}

//Value Binding in Switch Statement

let value = 40
switch value {
   // Value binding
   case let y where y % 2 == 0:
      print("\(value) is an even number.")
   case let z where z % 2 != 0:
      print("\(value) is an odd number.")
   default:
      print("\(value) is invalid number.")
}

//Switch Statement with where Clause
let mark = 89
switch mark {
case 0...59:
    print("Sorry! You are Failed")
   // Case with where clause
   case 60...79 where marks < 75:
      print("Congratulations! You are Passed")
   case 60...79 where marks >= 75:
      print("Congratulations! You are Passed with distinction")
   case 80...100:
      print("Excellent! You topped the Class")
   default:
      print("Not a valid score")
}
