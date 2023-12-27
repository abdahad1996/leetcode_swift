class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var arr1 = [Int]()
        for i in 0..<operations.count {
            if operations[i] == "C" {
                    arr1.removeLast()
            }
            else if operations[i] == "D" {
                arr1.append(2*(arr1[arr1.count-1]))
            }
            else if operations[i] == "+" {
                arr1.append(arr1[arr1.count-1]+arr1[arr1.count-2])
            }
            
            else{
                arr1.append(Int(operations[i])!)
            }
         }
        return arr1.isEmpty ? 0 : arr1.reduce(0, +)
    }
}