import UIKit


/*variables to use
 let numPassword : NSString = "0123456789"
 let capPassword : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 let symPassword : NSString = "@#$"
 let allsymPassword : NSString = "!@#$%^&*()_+{}[]"
 let password : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$"
 let anyRandom : NString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"
 let anyNoSymbol : NSSring = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
 let lowPassword : NSString = "abcdefghijklmnopqrstuvwxyz"
 */
 var DmiPassword:String = "" //empty string to be initiated in functions
 var anySymbolPassword:String = ""
 var noSymbolPassword:String = ""
 var Array:[Int] = [0, 0, 0, 0, 1, 2, 3, 4] //used later to hold password functions as arrays and randomize


class Password
{
 /**************************************************************************************************Start of string randomizing functions*************************************************/
    //any character for work
    func randomPasswordWithLength (len : Int) -> NSString
    {
        
        let password : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$"
        
        
        var randomPassword : NSMutableString = NSMutableString(capacity: len)
        
        for (var i=0; i < len; i += 1)
        {
            var length = UInt32 (password.length)
            var rand = arc4random_uniform(length)
            randomPassword.appendFormat("%C", password.characterAtIndex(Int(rand)))
        }
        return randomPassword
    }
   //end of function randomPasswordWithLength
 
 //any character
    func randomAnyRandomWithLength (len : Int) -> NSString
    {
 
    let anyRandom : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"
 
 
    var randomAnyRandom : NSMutableString = NSMutableString(capacity: len)
 
    for (var i=0; i < len; i += 1)
        {
        var length = UInt32 (anyRandom.length)
        var rand = arc4random_uniform(length)
        randomAnyRandom.appendFormat("%C", anyRandom.characterAtIndex(Int(rand)))
        }
        return randomAnyRandom
    }
    //end of function randomAnyRandomWithLength
 
 //any character without a symbol
    func randomNoSymbolWithLength (len : Int) -> NSString
    {
 
    let noSymbolPassword : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
 
 
    var randomNoSymbol : NSMutableString = NSMutableString(capacity: len)
 
    for (var i=0; i < len; i += 1)
        {
        var length = UInt32 (noSymbolPassword.length)
        var rand = arc4random_uniform(length)
        randomNoSymbol.appendFormat("%C", noSymbolPassword.characterAtIndex(Int(rand)))
        }
        return randomNoSymbol
    }
    //end of function randomNoSymbolWithLength
 
    //any number
    func randomNumPasswordWithLength (len : Int) -> NSString
    {
 
        let numPassword : NSString = "0123456789"
        
        
        var randomNumPassword : NSMutableString = NSMutableString(capacity: len)
        
        for (var i=0; i < len; i += 1)
        {
            var length = UInt32 (numPassword.length)
            var rand = arc4random_uniform(length)
            randomNumPassword.appendFormat("%C", numPassword.characterAtIndex(Int(rand)))
        }
        return randomNumPassword
    }
    //end of function randomNumPasswordWithLength
    
    //any capital
    func randomCapPasswordWithLength (len : Int) -> NSString
    {
        
        let capPassword : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        
        var randomCapPassword : NSMutableString = NSMutableString(capacity: len)
        
        for (var i=0; i < len; i += 1)
        {
            var length = UInt32 (capPassword.length)
            var rand = arc4random_uniform(length)
            randomCapPassword.appendFormat("%C", capPassword.characterAtIndex(Int(rand)))
        }
        return randomCapPassword
    }
    //end of function randomCapPasswordWithLength
    
    //any symbol for work
    func randomSymPasswordWithLength (len : Int) -> NSString
    {
        
        let symPassword : NSString = "@#$"
        
        
        var randomSymPassword : NSMutableString = NSMutableString(capacity: len)
        
        for (var i=0; i < len; i += 1)
        {
            var length = UInt32 (symPassword.length)
            var rand = arc4random_uniform(length)
            randomSymPassword.appendFormat("%C", symPassword.characterAtIndex(Int(rand)))
        }
        return randomSymPassword
    }
    //end of function randomSymPasswordWithLength
 
    //any symbol
    func randomAllSymPasswordWithLength (len : Int) -> NSString
    {
 
    let allSymPassword : NSString = "!@#$%^&*()_+{}[]"
 
 
    var randomAllSymPassword : NSMutableString = NSMutableString(capacity: len)
 
    for (var i=0; i < len; i += 1)
        {
        var length = UInt32 (allSymPassword.length)
        var rand = arc4random_uniform(length)
        randomAllSymPassword.appendFormat("%C", allSymPassword.characterAtIndex(Int(rand)))
        }
    return randomAllSymPassword
    }
 //end of function randomAllSymPasswordWithLength
 
    //any lowercase
    func randomLowPasswordWithLength (len : Int) -> NSString
    {
 
        let lowPassword : NSString = "abcdefghijklmnopqrstuvwxyz"
        
        
        var randomLowPassword : NSMutableString = NSMutableString(capacity: len)
        
        for (var i=0; i < len; i += 1)
        {
            var length = UInt32 (lowPassword.length)
            var rand = arc4random_uniform(length)
            randomLowPassword.appendFormat("%C", lowPassword.characterAtIndex(Int(rand)))
        }
        return randomLowPassword
    }
    //end of function randomLowPasswordWithLength
 
 /**************************************************************************************************End of randomizing string functions*************************************************/
 /**************************************************************************************************Start of generating functions*************************************************/
 
 
 func generateDmiPassword()
 {
 var n = 8 //this represents the counter/length of password in this case
 while(Array.count != 0) //will run until no contents left in array
    {
    var randnum = Int(arc4random_uniform(UInt32(n)))
    var num = Array[randnum]
 
    switch (num)
        {
        case 0:
        DmiPassword += String(randomPasswordWithLength(1))
        case 1:
        DmiPassword += String(randomNumPasswordWithLength(1))
        case 2:
        DmiPassword += String(randomLowPasswordWithLength(1))
        case 3:
        DmiPassword += String(randomCapPasswordWithLength(1))
        case 4:
        DmiPassword += String(randomSymPasswordWithLength(1))
        default:
        print("error")
        }
    Array.removeAtIndex(randnum)//if statements?
    n -= 1
    }
 }
 //end of generateDmiPassword function
 
 func generateAnySymbolPassword()
 {
 var n = 10 //this represents the counter/length of password in this case
 Array = [0, 0, 0, 0, 0, 0, 1, 2, 3, 4]
 while(Array.count != 0) //will run until no contents left in array
    {
    var randnum = Int(arc4random_uniform(UInt32(n)))
    var num = Array[randnum]
 
    switch (num)
        {
        case 0:
        anySymbolPassword += String(randomAnyRandomWithLength(1))
        case 1:
        anySymbolPassword += String(randomNumPasswordWithLength(1))
        case 2:
        anySymbolPassword += String(randomLowPasswordWithLength(1))
        case 3:
        anySymbolPassword += String(randomCapPasswordWithLength(1))
        case 4:
        anySymbolPassword += String(randomSymPasswordWithLength(1))
        default:
        print("error")
        }
    Array.removeAtIndex(randnum)//if statements?
    n -= 1
    }
 }
 //end of generateAnySymbolPassword function
 
 func generateNoSymbolPassword()
 {
 var n = 10 //this represents the counter/length of password in this case
 Array = [0, 0, 0, 0, 0, 0, 0, 1, 2, 3]
 while(Array.count != 0) //will run until no contents left in array
 {
 var randnum = Int(arc4random_uniform(UInt32(n)))
 var num = Array[randnum]
 
 switch (num)
 {
 case 0:
 noSymbolPassword += String(randomNoSymbolWithLength(1))
 case 1:
 noSymbolPassword += String(randomNumPasswordWithLength(1))
 case 2:
 noSymbolPassword += String(randomLowPasswordWithLength(1))
 case 3:
 noSymbolPassword += String(randomCapPasswordWithLength(1))
 default:
 print("error")
 }
 Array.removeAtIndex(randnum)//if statements?
 n -= 1
 }
 }
 //end of generateNoSymbolPassword function
 
 /**************************************************************************************************End of generating functions*************************************************/
 /**************************************************************************************************Start of Multiple Password functions*************************************************/
 
 func multipleDmiPassword()
 {
 for _ in 1...5
    {
    DmiPassword = ""
    Array = [0, 0, 0, 0, 1, 2, 3, 4]
    generateDmiPassword()
    print("Work Password: \(DmiPassword)")
    }
 }
 //end of multiplePassword function
 
 func multipleAnySymbolPassword()
 {
 for _ in 1...5
    {
    anySymbolPassword = ""
    Array = [0, 0, 0, 0, 0, 0, 1, 2, 3, 4]
    generateAnySymbolPassword()
    print("Password With Symbol: \(anySymbolPassword)")
    }
 }
 //end of multipleAnySymbolPassword function
 
 func multipleNoSymbolPassword()
 {
 for _ in 1...5
 {
 noSymbolPassword = ""
 Array = [0, 0, 0, 0, 0, 0, 0, 1, 2, 3]
 generateNoSymbolPassword()
 print("Password With No Symbol: \(noSymbolPassword)")
 }
 }
 //end of multipleAnySymbolPassword function
 
 
 
 
}
//end of class


//print the password
let newDmiPassword = Password()
newDmiPassword.generateDmiPassword()
newDmiPassword.multipleDmiPassword()

let newAllSymbolPassword = Password()
 newAllSymbolPassword.generateAnySymbolPassword()
 newAllSymbolPassword.multipleAnySymbolPassword()
 

 let newNoSymbolPassword = Password()
 newNoSymbolPassword.generateNoSymbolPassword()
 newNoSymbolPassword.multipleNoSymbolPassword()


