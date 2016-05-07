//
//  UploadOptions.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/11.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

/**
 *    上传进度回调函数
 *
 *    @param key     上传时指定的存储key
 *    @param percent 进度百分比
 */
public typealias UpProgressHandler = (key:String?, percent:Float) -> Void;

/**
 *    上传中途取消函数
 *
 *    @return 如果想取消，返回True, 否则返回No
 */
public typealias CancellationSignal = () -> Bool;

public struct UploadOptions{
    /**
     *    用于服务器上传回调通知的自定义参数，参数的key必须以x: 开头
     */
    public let params:[String:String];
    
    /**
     *    指定文件的mime类型
     */
    public let mimeType:String;
    
    /**
     *    是否进行crc校验
     */
    public let checkCrc:Bool;
    
    /**
     *    进度回调函数
     */
    public let progress:UpProgressHandler;
    
    /**
     *    中途取消函数
     */
    public let cancel:CancellationSignal;
    
    
    public static func defaultOptions()->UploadOptions{
        func progress(key:String?, percent:Float)->Void {
            
        }
        func cancel()->Bool{
            return false
        }
        return UploadOptions(params:[:], mimeType: "application/octet-stream", checkCrc: false, progress: progress, cancel: cancel)
    }
}