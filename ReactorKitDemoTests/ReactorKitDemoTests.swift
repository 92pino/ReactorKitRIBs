//
//  ReactorKitDemoTests.swift
//  ReactorKitDemoTests
//
//  Created by Jinbae Jeong on 8/7/24.
//

import XCTest
import RxTest
import RxSwift
import Nimble
import Quick
@testable import ReactorKitDemo

final class ReactorKitDemoTests: XCTestCase {
    let scheduler = TestScheduler(initialClock: 0)
    
    func test_스케쥴러() {
        let correctMessage = Recorded.events(
            .next(210, "1"),
            .next(230, "2"),
            .next(300, "2"),
            .completed(400)
        )
        let xs = scheduler.createHotObservable(
            [
                .next(210, "1"),
                .next(230, "2"),
                .next(300, "2"),
                .completed(400)
            ]
        )
        
        let res = scheduler.start(created: 100, subscribed: 220, disposed: 500, create: { xs.map { $0 }})
        XCTAssertEqual(correctMessage, res.events)
    }
    
    func inputFieldText() -> String {
        print("@@@@@@")
        return "@@@@@@@"
    }
}
