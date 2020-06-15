//
//  main.swift
//  algorithm_swift
//
//  Created by 박소현 on 2020/06/15.
//  Copyright © 2020 sohyeon. All rights reserved.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var answer = [Int]()
    var days = [Int]()
    for i in 0..<progresses.count {
        days.append((100-progresses[i])/speeds[i])
    }
    var tmp = days[0]
    var cnt = 1
    for i in 1..<days.count {
        if days[i] <= tmp {
            cnt+=1
        } else {
            answer.append(cnt)
            tmp = days[i]
            cnt = 1
        }
        if i == days.count - 1 {
            answer.append(cnt)
        }
    }
    return answer
}
