//: Playground - noun: a place where people can play

import UIKit

// variable
var name = "joel gonzales"
name = "joel"
print(name)

// nil -> es el nulo evl vacio, el null

// constante
let constante = "hello"

// Asignacion implicita y explicita

var numero = 100
var n = 100.90
var a1 = true
var a2 = "hello2"

var n2: Int = 100
var n12: Float = 100.90
var n1: Double = 100.90
var word: String = "hello"
var boolData: Bool = true

// Unir Cadenas

var string1 = "joel"
var string2 = "gonzales"

var result = string1 + " " + string2

// Interpolacion de cadenas
var r = "El valor es \(n2)"
var r1 = "El valor es \(n2 + 1)"

// comentar

//var a = ""

/*
 dsad
 ds
*/


// arrays
var arreglo = ["apple", "pineapple", "orange"]

let array = [1,2,3] // constant

print(arreglo[0])

// Add new element
arreglo.append("banana")

// count array element
print(arreglo.count)

// Ask if the array is empty or count > 1
arreglo.isEmpty


// Manejo de arreglos

arreglo[0] = "j"

arreglo[1...3] = ["a", "b", "c"]


 // remove element
arreglo.remove(at: 2)
print(arreglo)

// arreglo.removeLast()
// arreglo.removeFirst()
// arreglo.removeAll()

let datoBorrado = arreglo.removeLast()


// declarando con tipo de dato

var arregloWithType: [String] = ["a", "b", "c"]

var number: [Int]
number = [1,2,3,4]


var arregloVacio = [String]()
var arrayVacio = [Int]()

arregloVacio.append("a")
arregloVacio.count


arregloVacio += ["DatoA", "DatoB", "DatoC"]
var arrayVacio2: [String] = ["a", "b", "c"]


arreglo += arrayVacio2


arregloVacio = arreglo.reversed()
print(arregloVacio)



// recorrer un arreglo
var letras: [String] = ["a", "b", "c", "d"]

for letra in letras {
    print(letra)
}

for (index, letra) in letras.enumerated() {
    print("Dato \(letra) -> indice: \(index)")
}


// Dictionaries

var diccionario: [String:Any] = ["name": "joel", "lastName": "gonzales", "age": 20]

var diccionario2: [String:Int]
diccionario2 = ["age": 10, "anio": 15]


print("dato \(diccionario["name"])")



// Manejo del Dictionary

// obtener las keys
var keys = Array(diccionario.keys)
print(keys)

// obtener los valores
var values = Array(diccionario.values)
print(values)


diccionario.count

// eliminar un valor por la key
diccionario.removeValue(forKey: "name")

diccionario["lastName"] = "jhoel Gonzales"
print(diccionario)


print("value \(diccionario["age"]!)")  // Colocar el !, para que nosea opcional



// recorrer un diccionario
for (key, element) in diccionario {
    print("Key: \(key) , value: \(element)")
}


// conditional if
var numeroq = 10

if numeroq <= 12 { // pueder ir con o sin parentesis, if (n > 10) {}
  print ("es mayor a 12")
} else {
    print("es menor a 12")
}



// conditional if anidada


if numeroq <= 12 { // pueder ir con o sin parentesis, if (n > 10) {}
    if numeroq > 2 { // pueder ir con o sin parentesis, if (n > 10) {}
        print ("es menor a 12 y mayor a 2")
    }
} else {
    print("es mayor a 12")
}



// ciclo for
for i in 0 ... 10 {
    print(i) // i se incrementa por iteration
}

for i in 0 ..< 10 {
    print(i)
}

// switch

let bandMember:String = "Bob"

//the switch statement...
switch bandMember {

  case "Jerry":
    print("found Jerry")

   case "Bobby", "Bob":
      print("found Bobby")

   default:
      print("couldn't find him")
}


// with numbers

var n10:Int = 10

switch n10 {
    case 1:
        print("Number 1")

    case 2...5:
        print("Number 2 to 5")

    case 6:
        print("Number 3")

    case 7...9:
        print("Number 7 to 9")

    default:
        print("Ningun caso")
}

// swift con patrones

let nombreP = "Joel Gonzales"
switch nombreP {
    case "Alberto":
        print("Se llama Alberto")

    case "Benito", "Benancio":
        print("Se llama benito")

    case let x where x.hasSuffix("Joel"):
        print("Se llama Joel")

    default:
        print("No encontramos nada")
}


// loop while

var numberI = 1

while numberI <= 10 {
    print(numberI)
    numberI+=1
}


// repeat -> el do while

var ia = 0
repeat {
    print("index \(ia)")
    ia+=1
} while ia <= 20



// Functions

func hello() {
    print ("hello")
}

hello()

func data(name: String) {
    print("nombre \(name)!!")
}

data(name: "Joel")

// return value

func suma(numA: Int, numB: Int) -> Int {
    return numA + numB
}

var sumaValues = suma(numA: 10, numB: 20)
print("Result Suma -> \(sumaValues)")

func namePretty (name: String) -> String {
    return "\(name)!!"
}

print(namePretty(name: "Joel"))




// Func return multiple values
func calculateStatistics ( scores:[Int] ) -> (min:Int, max:Int, sum:Int) {


    var min = scores[0] //initially the first int in the array
    var max = scores[0] //initially the first int in the array
    var sum = 0 //gets added to through the for loop below


    // loop through each Int in the array, each time the current Int is score
    for score in scores {

        if (score > max) {
            //current score is max
            max = score

        } else if (score < min) {
            //current score is the least
            min = score

        }
        //keep adding
        sum = sum + score

    }

    return (min, max, sum)


}

let theArray = [5, 1, 100, 3, 9 ]
let statistics = calculateStatistics ( scores: theArray )

print (statistics.min) // 1
print (statistics.max) // 100
print (statistics.sum) // 118


// operators

// &&  ||

var nf: Int = 10
var ng: Int = 20


if nf <= 5 && ng <= 10 {
    print("d")
}


// operator ternary
var youMessWithChuckNorris:Bool = true
let answer1:String = "You die horribly"
let answer2:String = "You live"

var whatHappens:String = youMessWithChuckNorris ? answer1 : answer2

print (whatHappens) //You die horribly


// Enum , enumeration

enum Example {
    case A
    case B
    case C
    case D
}

var example = Example.A


enum Rank: Int {
    case Ace = 1
    case Two = 2
    case Three = 3
}

let card1 = Rank.Ace.rawValue //1
let card2 = Rank.Two.rawValue //2


var card3:Rank = .Ace
var card4:Rank = .Three

// optional

var maybe:String? = nil

print(maybe)                                                  // nil
print(maybe == nil)                                           // true

maybe = "yep"

print(maybe)

// class
class ClaseSample {
    var name = "Joel"

    func getData() {
        print("hello")
    }
}

var obj = ClaseSample()

obj.name

obj.getData()


// class sample 2

class Examplea {
    var a = 0
    var b: String

    init(a: Int) { // Constructor
        self.a = a
        b = "name"                  // An error if a declared property isn't initialized
    }
}

let egg = Examplea(a: 1)
print(egg.a)              // 1

class Example2 {
    var a = 0
    var b = 0

    init(_ a: Int, _ b: Int) { // Con el _ underscore, puedo llamarlo de forma simple
        self.a = a
        self.b = b
    }
}

let eg2 = Example2(1, 2)
print(eg2.a)            // 1
print(eg2.b)            // 2



// sample 3
class Window {
    var x = 0.0, y = 0.0
    var width = 100.0, height = 100.0

    var center: (Double, Double) {
        get {
            return (width / 2, height / 2)
        }

        set(newVal) {
            x = newVal.0 - (width / 2)
            y = newVal.1 - (height / 2)
        }
    }
}

var win = Window()
print(win.center)               // (50.0, 50.0)
win.center = (0.0, 10.0)
print(win.x)                    // -50.0
print(win.y)                    // -40.0


// sample 4

class Song {
    var title = ""
    var duration = 0.0
    var metaInfo: [String:String] {
        return [
            "title": self.title,
            "duration": NSString(format: "%.2f", self.duration) as String,
        ]
    }
}

var song = Song()
song.title = "Rootshine Revival"
song.duration = 2.01
print(song.metaInfo["title"]!)    // Rootshine Revival
print(song.metaInfo["duration"]!) // 2.01


// sample 5

class Month {
    var name: String

    init(name: String) {
        self.name = name
    }

    func shortened() -> String {
        return "\(self.name)!!"
    }
}

print(Month(name: "January").shortened())    // January!!

var mes = Month(name: "January")
mes.shortened()



//  Inheritance

class Bicycle {
    var tireWidth: Double
    var topSpeed: Double
    var name: String
    var gears: Int
    // Marking a method/property with `@final` prevents it from being overridden
    final var color = "green"

    init() {
        tireWidth = 30.5
        topSpeed = 10.0
        name = "regular ol' bike"
        gears = 3
    }

    func go(distance: Double) {
        print("Went \(distance) at a top speed of \(topSpeed) in my \(name)")
    }
}



class MountainBike : Bicycle {
    // /* var tireWidth = 64.0 // Cannot override property in the declaration */
    override init() {
        super.init()

        tireWidth = 64.0
        name = "mountain bike"
        gears = 12
    }

    // Override parent's methods via `override` keyword
   override func go(distance: Double) {
       super.go(distance)
       print("Did \(distance) on a mountain bike")
   }

    // A getter/setter override can _any_ inherited property.
    override var topSpeed: Double {
        get {
            return super.topSpeed - 4.0
        }
        set {
            super.topSpeed = newValue
        }
    }

    // Property observer
    override var gears: Int {
        didSet {
            print("Gears was changed to \(gears)")
        }
    }
}

var mountainBike = MountainBike()              // Gears was changed to 12
mountainBike.topSpeed = 6.0
print(mountainBike.topSpeed)                 // 2.0
//mountainBike.go(12.0)                          // Went 12.0 at a top speed of 10.0 in my mountain bike



internal class Image { // Accessible in the same target
    internal var name : String

    private var mime : String {     // Accessible only in this file. Never settable.
        get {
            return "image/\(name)"
        }
    }

    init(name: String) {
        self.name = name
    }
}

var img = Image(name: "foo.png")


public class Webpage {
    public var title : String
    public var created : NSDate
    private(set) var images : [Image] // Readable within the same target but only writable in this file
    var slug : String {
        return created.description + title
    }

    init(title: String) {
        self.title = title
        self.created = NSDate()
        self.images = []
    }
}

var webPage = Webpage(title: "blog post")
//webPage.images.append(Image(name:"panda.gif"))



// tutorials

// http://brettbukowski.github.io/SwiftExamples/
//https://swift3tutorials.com/
