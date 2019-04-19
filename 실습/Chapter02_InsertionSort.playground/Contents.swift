import UIKit

func makeList(n:Int ) -> [Int] {
    var result:[Int] = []
    for _ in 0..<n {
        result.append(Int(arc4random_uniform(20) + 1))
    }
    return result
}

// MARK : insertionSort

func insertionSort( alist: inout [Int]){
    for i in 1..<alist.count {
        let tmp = alist[i]
        var j = i - 1
        while j >= 0 && alist[j] > tmp {
            alist[j+1] = alist[j]
            j = j - 1
        }
        alist[j+1] = tmp
    }
}

for i in 1...10 {
    
    var myRandomList: [Int] = makeList(n: i * 100)
    var start = NSDate()
    insertionSort(alist: &myRandomList)
    var end = NSDate()
    var timeInterval: Double = end.timeIntervalSince(start as Date)
    
    print("insertionSort Array size = \(myRandomList.count), time = \(timeInterval) / sec")
}

// MARK : Merge sort

func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    let middleIndex = array.count / 2
    
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    return merge(leftArray, rightArray)
}

func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var leftIndex = 0
    var rightIndex = 0
    
    
    
    
    var orderedArray: [T] = []
    
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        if leftElement < rightElement {
            orderedArray.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            orderedArray.append(rightElement)
            rightIndex += 1
        } else {
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}

for i in 1...10 {
    
    var myRandomList: [Int] = makeList(n: i * 100)
    var start = NSDate()
    mergeSort(myRandomList)
    var end = NSDate()
    var timeInterval: Double = end.timeIntervalSince(start as Date)
    
    print("Merger Sort Array size = \(myRandomList.count), time = \(timeInterval) / sec")
}
