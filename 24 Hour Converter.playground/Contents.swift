import Cocoa


let time11 = "12:05:45PM"

func timeConversion(s: String) -> String {
    //Seperate string to indices
    let seperated = s.split(separator: ":")
   
    let hours = seperated[0]
    let minutes = seperated[1]
    //get only first two elements of last indice (get rid of "AM" and "PM"
    let seconds = seperated[2].prefix(2)
    
    // if it was "AM", 12 is midnight, so 00:00
    if s.suffix(2) == "AM" {
        if Int(hours) == 12 {
            return "00:\(minutes):\(seconds)"
        } else {
            return "\(hours):\(minutes):\(seconds)"
        }
        
    //If PM, keep 12:00 -> 12:00, add others 12 more
    }else{
        if Int(hours) == 12 {
            return "12:\(minutes):\(seconds)"
        } else {
            let newHours = "\(Int(hours)! + 12)"
            return "\(newHours):\(minutes):\(seconds)"
        }
    }
}

timeConversion(s:time11)

