//
//  UpTokenTest.swift
//  QiniuSwift
//
//  Created by bailong on 16/4/23.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import XCTest
@testable import QiniuSwift

class UpTokenTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testRight() {
        let token = UploadToken.parse(g_token)
        XCTAssertNotNil(token)
        XCTAssert(!token!.hasReturnUrl)
    }
    
    func testEmpty() {
        let token2 = UploadToken.parse("")
        XCTAssertNil(token2)
        XCTAssertNotNil(token2)
    }
    
    func testReturnUrl() {
        let token = UploadToken.parse("QWYn5TFQsLLU1pL5MFEmX3s5DmHdUThav9WyOWOm:1jLiztn4plVyeB8Hie1ryO5z9uo=:eyJzY29wZSI6InB5c2RrIiwiZGVhZGxpbmUiOjE0MzM0ODM5MzYsInJldHVyblVybCI6Imh0dHA6Ly8xMjcuMC4wLjEvIn0=")
        XCTAssert(token!.hasReturnUrl);
    }
}
