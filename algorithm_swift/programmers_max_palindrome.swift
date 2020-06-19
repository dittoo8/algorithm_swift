//
//  selection_sort.swift
//  algorithm_swift
//
//  Created by 박소현 on 2020/06/17.
//  Copyright © 2020 sohyeon. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Int {
    var answer = 1
    var d = Array(repeating: Array(repeating: false, count:  2501), count : 2501)
    let str: [Character] = Array(s)
    for i in 0..<str.count {
        d[i][i] = true
    }
    if str.count >= 2 {
        for i in 0..<s.count -  1 {
            if str[i] == str[i+1] {
                d[i][i+1] = true
                answer = 2
            }
        }
    }
    if str.count >= 3 {
        for k in 3..<str.count + 1 {
            for i in 0..<str.count - k + 1 {
                let j = i + k - 1
                if str[i] == str[j]  && d[i+1][j-1] {
                    d[i][j] = true
                    if answer < k  {
                        answer = k
                    }
                }
            }
        }
    }
    return answer
}

print(solution("abcdcba"))
