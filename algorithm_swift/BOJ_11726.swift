//
//  BOJ_11726.swift
//  algorithm_swift
//
//  Created by 박소현 on 2020/06/11.
//  Copyright © 2020 sohyeon. All rights reserved.
//

import Foundation

func solution(){
    var d = Array(repeating: 0, count: 1001)
    let n = readLine().map({Int($0)!})!
    func dp(x: Int) -> Int {
        if x == 1 {
            return 1
        }
        if x == 2 {
            return 2
        }
        if d[x] != 0 {
            return d[x]
        }
        d[x] = (dp(x: x-1) + dp(x: x-2))%10007
        return d[x]
    }
    print(dp(x: n))
}
solution()
