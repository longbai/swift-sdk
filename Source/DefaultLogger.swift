//
//  DefaultLogger.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/22.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

final class DefaultLogger:Logger {
    private let level:Int;
    init(level:Int){
        self.level = level;
    }
    
    func log(level:Int, msg:String){
        
    }
    func verbose(msg:String){
        
    }
    func debug(msg:String){
        
    }
    func info(msg:String){
        
    }
    func warning(msg:String){
        
    }
    func error(msg:String){
        
    }
}