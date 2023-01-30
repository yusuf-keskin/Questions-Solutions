import Cocoa

class Queue<T> {

    var array = [T]()
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    func enQueue(val: T) {
        array.append(val)
    }
    
    func deQueue() -> T? {
        if array.isEmpty {
            return nil
        } else {
            return array.remove(at: 0)
        }
    }
    func peek() -> T? {
        if !array.isEmpty{
            return array.first!
        } else {
            return nil
        }
    }
}


class MyStack {
    
    var queueOne : Queue<Int>?
    var queueTwo : Queue<Int>?
    
    init() {
        queueOne = Queue<Int>()
        queueTwo = Queue<Int>()
    }
    

        func push(_ x: Int) {
            queueTwo!.enQueue(val: x)
            while !queueOne!.isEmpty {
                queueTwo!.enQueue(val: (queueOne?.deQueue())!)
            }
            while !queueTwo!.isEmpty {
                queueOne!.enQueue(val: (queueTwo?.deQueue())!)
            }
        }
    // O(2n)
        
        func pop() -> Int {
            return (queueOne?.deQueue())!
        }
    // O(1)

        func top() -> Int {
            return queueOne!.peek()!
        }
    // O(1)
        

        func empty() -> Bool {
            return queueOne!.isEmpty
        }
    // O(1)
}

let stack = MyStack()
stack.push(1)
stack.push(2)
stack.push(3)
//stack.push(4)
//stack.push(5)
//stack.push(6)
//stack.push(7)

print(stack.queueOne?.array)

print(stack.pop())

