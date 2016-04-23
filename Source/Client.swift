//
//  Client.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/11.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

public class Client{
    private let timeout:Int;
    public init(timeout:Int){
        self.timeout = timeout;
    }
    public func post(url:NSURL, headers:[String->String]?, body:NSData){
        let request = NSMutableURLRequest(URL: url);
        if (headers != nil) {
//            for k, v in headers {
//                request.addValue(v, forHTTPHeaderField: k)
//            }
        }
        request.HTTPMethod = "POST";
        
        request.HTTPBody = body;
        
    }
}