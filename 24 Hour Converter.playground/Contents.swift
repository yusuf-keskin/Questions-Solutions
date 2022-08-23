import Cocoa


let time11 = "12:05:45PM"

func timeConversion(s: String) -> String {
    let seperated = s.split(separator: ":")
   
    let hours = seperated[0]
    let minutes = seperated[1]
    let seconds = seperated[2].prefix(2)
    
    if s.suffix(2) == "AM" {
        if Int(hours) == 12 {
            return "00:\(minutes):\(seconds)"
        } else {
            return "\(hours):\(minutes):\(seconds)"
        }
        
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

