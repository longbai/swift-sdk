//
//  Base64Test.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/11.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

import XCTest
@testable import QiniuSwift

class Base64Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEncode() {
        let s = "你好/+=";
        
        XCTAssert(Base64.urlSafeEncode(s) == "5L2g5aW9Lys9", "Pass");
    }
    
}
