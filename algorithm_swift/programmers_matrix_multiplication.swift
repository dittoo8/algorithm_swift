//
//  main.swift
//  algorithm_swift
//
//  Created by 박소현 on 2020/07/19.
//  Copyright © 2020 sohyeon. All rights reserved.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = [[Int]](repeating: [Int](repeating: 0, count: arr2[0].count),count: arr1.count)
    for i in 0..<arr1.count {
        for j in 0..<arr2[0].count {
            for k in 0..<arr1[0].count {
                answer[i][j] += arr1[i][k]*arr2[k][j]
            }
        }
    }
    return answer
}
