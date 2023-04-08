/*
 Island Count

 Given a 2D array binaryMatrix of 0s and 1s, implement a function getNumberOfIslands that returns the number of islands of 1s in binaryMatrix.

 An island is defined as a group of adjacent values that are all 1s. A cell in binaryMatrix is considered adjacent to another cell if they are next to each either on the same row or column. Note that two values of 1 are not part of the same island if they’re sharing only a mutual “corner” (i.e. they are diagonally neighbors).

 Explain and code the most efficient solution possible and analyze its time and space complexities.
 
 Example : let binaryMatrix = [ [0,    1,    0,    1,    0],
                                [0,    0,    1,    1,    1],
                                [1,    0,    0,    1,    0],
                                [0,    1,    1,    0,    0],
                                [1,    0,    1,    0,    1] ]
 Result = 6
 
 */


import Foundation

func getNumberOfIslands(binaryMatrix: [[Int]]) -> Int {
    var counter = 0
    var visited = Set<String>()
    
    for r in 0..<binaryMatrix.count {
        for c in 0..<binaryMatrix[0].count {
            //Recursive for increment counter and mark positions as visited
            if explore(binaryMatrix : binaryMatrix, r : r, c: c, visited : &visited) {
                counter += 1
            }
        }
    }
    return counter
}

func explore(binaryMatrix : [[Int]], r : Int, c: Int, visited : inout Set<String>) -> Bool {
    var rowInbounds : Bool {
        return r >= 0 && r < binaryMatrix.count
    }
    
    var columnInBounds : Bool {
        return c >= 0 && c < binaryMatrix[0].count
    }

    if !columnInBounds || !rowInbounds {
        return false
    }
    
    let position = "\(r),\(c)"
    if visited.contains(position) { return false }
    
    print("r :\(r), c: \(c)")
    
    if binaryMatrix[r][c] == 0 { return false }
    
    visited.insert(position)
    
    explore(binaryMatrix : binaryMatrix, r : r, c: c + 1, visited :  &visited)
    explore(binaryMatrix : binaryMatrix, r : r, c: c - 1, visited :  &visited)
    explore(binaryMatrix : binaryMatrix, r : r + 1, c: c, visited :  &visited)
    explore(binaryMatrix : binaryMatrix, r : r - 1, c: c, visited :  &visited)
    
    return true
}


let binaryMatrix = [ [0,    1,    0,    1,    0],
                     [0,    0,    1,    1,    1],
                     [1,    0,    0,    1,    0],
                     [0,    1,    1,    0,    0],
                     [1,    0,    1,    0,    1] ]


getNumberOfIslands(binaryMatrix: binaryMatrix)
