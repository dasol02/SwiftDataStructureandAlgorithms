import UIKit

var str = "Hello, playground"

var myIntArrayA: Array<Int> = [1,3,5,7,9]
var myIntArrayB: [Int] = [1,3,5,7,9]
var myIntArrayC = [1,3,5,7,9]
var myIntArrayD: [Int] = []
var myIntArrayE: [[Int]] = [[1,2], [10,11], [20,30]]

// MARK : Array Inquiry

print("------Array Inquiry---------")
var someNumberA = myIntArrayA[2]
for element in myIntArrayA {
    print(element)
}
var someNumberB = myIntArrayA[2...4]
var elementA = myIntArrayE[0][0]
elementA = myIntArrayE[1][1]
print(elementA)

// MARK : Array Insert

print("------Array Insert---------")
print(myIntArrayA)
myIntArrayA.append(10)
print(myIntArrayA)
myIntArrayA.insert(4, at: 2)
print(myIntArrayA)

// MARK : Array Remove

print("------Array Remove---------")
print(myIntArrayA)
myIntArrayA.removeLast()
print(myIntArrayA)
myIntArrayA.remove(at: 3)
print(myIntArrayA)

// MARK : Linked List

print("------LinkedList<T>---------")
class LinkedList<T> {
    var item: T?
    var next: LinkedList<T>?
}

typealias TCPPacket = UInt16
var maxTCPpacketSize = TCPPacket.max
print(maxTCPpacketSize)
var maxTCPpacketSizeA: UInt16 = 65535
print(maxTCPpacketSizeA)

maxTCPpacketSize == maxTCPpacketSizeA ? print("TRUE") : print("FALSE")
