import UIKit

var myName = "Jake"
var smallerString = "ak"

//contains
if myName.contains(smallerString) {
    print("\(myName) contains \(smallerString)")
} else {
    print("There is no \(smallerString) in \(myName)")
}

//hasPrefix + hasSuffix
print("PREFIX SEARCH")
var occupation = "Swift Developer"
var searchString = "Swift"

print(occupation.hasPrefix(searchString))
if occupation.hasPrefix(searchString) {
    print("You're Hired!")
} else {
    print("No Job For You.")
}

print("\nSUFFIX SEARCH")
occupation = "iOS Developer"
searchString = "Developer"

print(occupation.hasSuffix(searchString))
if occupation.hasSuffix(searchString) {
    print("You're Hired! We need more \(occupation)s!")
} else {
    print("No Job For You. No one needs any \(occupation)s.")
}

//.removeLast()
print("\nREMOVE LAST")
var bandName = "The White Stripes"
let lastChar = bandName.removeLast()
print("After we remove \(lastChar) the band is just \(bandName)!")

//.removeFirst(k: int)
print("\nREMOVE FIRST #")
var person = "Dr. Nick"
let title = "Dr."
person.removeFirst(title.count + 1)
print(person)

//.replacingOccurances(of: with:)
print("\nREPLACING OCCURANCES OF")

//123 James St.
//123 James St
//123 James Street

var address = "123 James St."
var streetString = "St."
var replacementString = "Street"

var standardAddress = address.replacingOccurrences(of: streetString, with: replacementString)
print(standardAddress, address)

//What would you do if you had 123 St. James St.?

//Iterate Through a String
print("\nBACKWARDS STRING")

var name = "Jake"
var backwardsName = ""
for letter in name {
    backwardsName = String(letter) + backwardsName
}
print("\(name), \(backwardsName)")

//Capitalization
print("\nPLAYING WITH CAPS")
var crazyCaps = "SwIfT DeVELopER"
var uppercased = crazyCaps.uppercased()
var lowercased = crazyCaps.lowercased()
var capitalized = crazyCaps.capitalized

print(uppercased, lowercased, capitalized)
print(crazyCaps)

var wordToGuess = "SWIFT"
var revealedWord = "_"
for _ in 1...wordToGuess.count - 1 {
    revealedWord += " _"
}
//revealedWord.removeLast()
print("\(wordToGuess) will show as \(revealedWord)")

//Create a string from a repeating value
var repeatingRevealedWord = "_" + String(repeating: " _", count: wordToGuess.count - 1)
print("Using repeating String: '\(repeatingRevealedWord)'")

//REVEAL THE WORD
print("\nREVEAL THE WORD")

wordToGuess = "SWIFT"
var lettersGuessed = "SQFTXW"
revealedWord = ""

//loop through all letters in wordToGuess
for letter in wordToGuess {
    //Check if letter in wordToGuess is in lettersGuessed (i.e did you guess this letter already?)
    if lettersGuessed.contains(letter) {
        //If so, add this letter + a blank space, to revealedWord
        revealedWord += "\(letter) "
    } else {
        //If not, add an underscore + a blank space, to revealedWord
        revealedWord += "_ "
    }
}
//remove the extra space at the end of revealedWord
revealedWord.removeLast()

print("wordToGuess = \(wordToGuess)")
print("lettersGuessed = \(lettersGuessed)")
print("revealedWord = \(revealedWord)")

