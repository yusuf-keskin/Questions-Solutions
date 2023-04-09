import Foundation

func findMinimumIsland(in binaryMatrix : [[String]]) -> Int {
    var visited = Set<String>()
    var minSize = 10000
    
    for r in 0..<binaryMatrix.count {
        for c in 0..<binaryMatrix[0].count {
            let size = explore(binaryMatrix, r, c , &visited)
            if size > 0 && size < minSize { minSize = size }
        }
    }
    return minSize
}

func explore(_ binaryMatrix :[[String]], _ r : Int, _ c : Int , _ visited : inout Set<String>) -> Int {

    var rowInBounds : Bool {
        return r >= 0 && r < binaryMatrix.count
    }
    print(r)
    var columnInBounds : Bool {
        return c >= 0 && c < binaryMatrix[0].count
    }
    print(c)
    if !rowInBounds || !columnInBounds { return 0 }
    if binaryMatrix[r][c] == "W" { return 0 }
    
    let position = "\(r),\(c)"
    if visited.contains(position) { return 0 }
    
    visited.insert(position)
    
    var size = 1
    
    size +=  explore(binaryMatrix, r + 1, c, &visited)
    size +=  explore(binaryMatrix, r - 1, c, &visited)
    size +=  explore(binaryMatrix, r, c - 1, &visited)
    size +=  explore(binaryMatrix, r, c + 1, &visited)
    print(size)
    
    return size
}

let binaryMatrix = [
    ["W","L","W","W","W"],
    ["W","L","W","W","W"],
    ["W","W","W","L","W"],
    ["W","W","L","L","W"],
    ["L","W","W","L","L"],
    ["L","L","W","W","W"]
]

findMinimumIsland(in: binaryMatrix)
