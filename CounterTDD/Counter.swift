//
//  Counter.swift
//  CounterTDD
//
//  Created by dev_sinu on 2017. 3. 3..
//  Copyright © 2017년 com.example. All rights reserved.
//  출처 : http://changjoopark.tumblr.com/post/142224617303/14-가볍게-시작하는-테스트-기반-swift

import Foundation

class Counter: NSObject {
    var score: Int
    
    override init() {
        score = 0
        super.init()
    }
    
    func incrementScore() {
        score += 1
    }
    
    func resetScore() {
        score = 0
    }
}

