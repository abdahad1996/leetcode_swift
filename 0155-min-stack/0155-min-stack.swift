
class MinStack {

    var arr:[Int] = []
    init() {
        
    }
    
    func push(_ val: Int) {
        arr.append(val)
    }
    
    func pop() {
        arr.removeLast()
    }
    
    func top() -> Int {
        return arr[arr.count-1] 
    }
    
    func getMin() -> Int {
        return arr.min() ?? 0
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */