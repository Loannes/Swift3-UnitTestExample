//
//  CounterModelTests.swift
//  CounterTDD
//
//  Created by dev_sinu on 2017. 3. 3..
//  Copyright © 2017년 com.example. All rights reserved.
//

import XCTest
@testable import CounterTDD
// 폴더 명인가보다 : 폴더에 접근하기 위한 접근자 같은 것인듯

class CounterModelTests: XCTestCase {
    let counter = Counter()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // counter 모델이 존재 하는지 확인
    func testShouldCounterModelExists() {
        XCTAssertNotNil(counter)
    }
    
    // counter모델에 score 객체가 존재하는지 확인
    func testShouldCounterHasScore() {
        let score = counter.score
        XCTAssertNotNil(score)
    }
    
    // score 객체는 반드시 0으로 시작해야 한다.
    func testShouldScoreInitializeZero() {
        let score = counter.score
        XCTAssertEqual(score, 0)
    }
    
    // score는 1씩 증가한다
    func testShouldScoreIncrementOne() {
        counter.incrementScore()
        let score = counter.score
        XCTAssertEqual(score, 1)
    }
    
    // Score는 Reset하면 0이된다
    func testShouldScoreReset() {
        counter.incrementScore()
        counter.incrementScore()
        counter.incrementScore()
        counter.resetScore()
        XCTAssertEqual(counter.score, 0)
    }
}
