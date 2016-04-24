//
//  LogDelegate.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/22.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

public enum LogLevel:Int {
    case Error = 1, Warning, Info, Debug, Verbose
}

public protocol Logger{

    func log(level:LogLevel, msg:String);
}