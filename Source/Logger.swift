//
//  LogDelegate.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/22.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

public protocol Logger{
    
    func log(level:Int, msg:String);
}