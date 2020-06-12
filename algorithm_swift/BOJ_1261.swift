//
//  BOJ_1261.swift
//  algorithm_swift
//
//  Created by 박소현 on 2020/06/12.
//  Copyright © 2020 sohyeon. All rights reserved.
//

import Foundation

func solution(){
    let dx = [1,0,0,-1]
    let dy = [0,-1,1,0]
    
    let input = readLine() ?? ""
    let nums = input.split{ $0 == " " }.map{ Int($0)! }
    let m = Int(nums[0])
    let n = Int(nums[1])
    
    var visit = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
    var resultMap = [[Int]](repeating: Array(repeating: 0, count: m), count: n)
    
    
    var map = [[Int]](repeating: [Int](), count: n)
    for i in 0..<n {
        guard let strRow =  readLine() else { return }
        let arrRow = Array(strRow)
        let  row = arrRow.map {  Int(String($0))! }
        map[i] = row
    }
    
    var queueX:[Int] = [0]
    var queueY:[Int] = [0]
    
    while !queueX.isEmpty {
        let x = queueX[0]
        let y = queueY[0]
        queueX.removeFirst()
        queueY.removeFirst()
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            if nx < 0 || nx >= n || ny < 0 || ny >= m {
                continue
            }
            if visit[nx][ny] == true {
                if resultMap[nx][ny] > resultMap[x][y] + map[nx][ny] {
                    resultMap[nx][ny] = resultMap[x][y] + map[nx][ny]
                    queueX.append(nx)
                    queueY.append(ny)
                }
                continue
            }
            resultMap[nx][ny] = resultMap[x][y] + map[nx][ny]
            visit[nx][ny] = true
            queueX.append(nx)
            queueY.append(ny)
        }
    }
    print(resultMap[n-1][m-1])
}

solution()

