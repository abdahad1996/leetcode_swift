
//USING STACKS
// Explanation
// Initialization: The BrowserHistory class is initialized with a homepage. This homepage is the starting point, and it is stored in the history array.

// Visit: The visit method is used to visit a new URL. When a new URL is visited, the history array is truncated up to the current index, and then the new URL is appended. This ensures that any forward history is discarded.

// Back: The back method moves the current index back by a specified number of steps. If the steps exceed the available history, it moves back as much as possible without going below the starting page.

// Forward: The forward method moves the current index forward by a specified number of steps. If the steps exceed the forward history, it moves forward as much as possible without exceeding the latest visited page.

// class BrowserHistory {
//     private var history: [String]
//     private var currentIndex: Int
    
//     init(_ homepage: String) {
//         history = [homepage]
//         currentIndex = 0
//     }
    
//     func visit(_ url: String) {
//         history = Array(history.prefix(currentIndex + 1))
//         history.append(url)
//         currentIndex += 1
//     }
    
//     func back(_ steps: Int) -> String {
//         currentIndex = max(0, currentIndex - steps)
//         return history[currentIndex]
//     }
    
//     func forward(_ steps: Int) -> String {
//         currentIndex = min(history.count - 1, currentIndex + steps)
//         return history[currentIndex]
//     }
// }

class Node {
    var url:String?
    var prev:Node?
    var next:Node?
    
    init(_ url:String){
        self.url = url
    }
}

class BrowserHistory {
    var currentNode:Node?
    init(_ homepage: String) {
        currentNode = Node(homepage)
       
    }
    
    func visit(_ url: String) {
        let newNode = Node(url)
        currentNode?.next = newNode
        newNode.prev = currentNode
        currentNode = newNode
        
    }
    
    func back(_ steps: Int) -> String {
        var steps = steps 
        while steps > 0, currentNode?.prev != nil {
            currentNode = currentNode?.prev
            steps = steps - 1
        }
        return  currentNode?.url ?? ""
    }
    
    func forward(_ steps: Int) -> String {
        var steps = steps 
        while steps > 0, currentNode?.next != nil {
            currentNode = currentNode?.next
            steps = steps - 1
        }
         return  currentNode?.url ?? ""
    }
}
/**
 * Your BrowserHistory object will be instantiated and called as such:
 * let obj = BrowserHistory(homepage)
 * obj.visit(url)
 * let ret_2: String = obj.back(steps)
 * let ret_3: String = obj.forward(steps)
 */