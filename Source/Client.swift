//
//  Client.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/11.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

import Alamofire

public class Client{
    private let timeout:Int;
    private let urlConverter:UrlConverter
    private let proxy:[String:AnyObject]?
    private let :Alamofire.c
    public convenience init(timeout:Int){
        func converter(s:String)->String{
            return s
        }
        self.init(timeout:timeout, urlConverter:converter, proxy:nil);
    }
    
    public init(timeout:Int, urlConverter:UrlConverter, proxy:[String:AnyObject]?){
        self.timeout = timeout;
        self.urlConverter = urlConverter;
        self.proxy = proxy;
    }
    public func post(url:NSURL, headers:[String:String], body:NSData){
        let request = NSMutableURLRequest(URL: url);
        for (k, v) in headers {
            request.addValue(v, forHTTPHeaderField: k)
        }
        request.HTTPMethod = "POST";
        
        request.HTTPBody = body;
        
    }
}