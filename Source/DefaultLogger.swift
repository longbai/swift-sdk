//
//  DefaultLogger.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/22.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

final class DefaultLogger:Logger {
    private let level:LogLevel;
    init(level:LogLevel){
        self.level = level;
    }
    
    func log(level:LogLevel, msg:String){
        if level.rawValue > self.level.rawValue {
            return
        }
        NSLog("%@", msg)
    }
    
    func v(msg:String){
        log(LogLevel.Verbose, msg: msg)
    }
    func d(msg:String){
        log(LogLevel.Debug, msg: msg)
    }
    func i(msg:String){
        log(LogLevel.Info, msg: msg)
    }
    func w(msg:String){
        log(LogLevel.Warning, msg: msg)
    }
    func e(msg:String){
        log(LogLevel.Error, msg: msg)
    }
}