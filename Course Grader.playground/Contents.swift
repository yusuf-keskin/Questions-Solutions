import Cocoa

let grades2 = [4,73,67,38,33]

func gradingStudents(grades: [Int]) -> [Int] {
    var newGrades = [Int]()
    
    
        for number in grades {
            
            let multiply = number / 5
            let nexNumber = (multiply + 1) * 5
            
            if number >= 38 {
                if number % 5 == 0 {
                    newGrades.append(number)
                    
                } else if nexNumber - number >= 3 {
                    newGrades.append(number)
                    
                } else {
                    newGrades.append(nexNumber)
                }
                    
            } else {
                if number > 5 {
                    newGrades.append(number)
                }
            }
        }
    return newGrades
}

gradingStudents(grades: grades2)
