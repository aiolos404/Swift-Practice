//
//  Sorting.swift
//  
//
//  Created by aiolos404 on 3/22/15.
//
//

import Foundation

func    merge(left:[Int], right:[Int]) -> [Int]{
    var result
    while   left.count > 0 && right.count > 0 {
        if  left[0] <= right[0] {
            result.append(left[0])
            left.removeAtIndex(0)
        }
        else{
            result.append(right[0])
            right.removeAtIndex(0)
        }
    }
    while left.count > 0 {
        result.append(left[0])
        left.removeAtIndex(0)
    }
    while right.count > 0 {
        result.append(right[0])
        right.removeAtIndex(0)
    }
    return result
}

func    mergesort(A:[Int]) -> [Int]{
    if A.count <= 1{
        return A
    }
    
    var middle = A.count / 2
    var left,right
    for i in 0..<middle {
        left.append(A[i])
    }
    
    for i in middle..<A.count {
        right.append(A[i])
    }
    
    mergesort(left)
    mergesort(right)
    
    return merge(left, right)
}