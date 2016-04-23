//
//  UploadManager.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/11.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

import Photos

public typealias UpCompletionHandler = (key:String?, response:[String->String]?, error:NSError?) -> Void;

public final class UploadManager{

    /**
     *    使用配置信息生成上传实例
     *
     *    @param config           配置信息
     *
     *    @return 上传管理类实例
     */
    public init(config:UploadConfiguration?){
        if config == nil {
            self.config = UploadConfiguration.defaultConfiguration()
        }else{
            self.config = config!;
        }
    }
    
    /**
    *    方便使用的单例方法
    *
    *    @param config           配置信息
    *
    *    @return 上传管理类实例
    */
    public static func sharedInstanceWithConfiguration(config:UploadConfiguration?)->UploadManager{
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : UploadManager? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = UploadManager(config: config)
        }
        return Static.instance!
    }
    
    /**
    *    直接上传数据
    *
    *    @param data              待上传的数据
    *    @param key               上传到云存储的key，为nil时表示是由七牛生成
    *    @param token             上传需要的token, 由服务器生成
    *    @param completionHandler 上传完成后的回调函数
    *    @param option            上传时传入的可选参数
    */
    public func putData(data:NSData, key:String, token:String, complete:UpCompletionHandler, option:UploadOptions){
        
    }
    
    /**
    *    上传文件
    *
    *    @param filePath          文件路径
    *    @param key               上传到云存储的key，为nil时表示是由七牛生成
    *    @param token             上传需要的token, 由服务器生成
    *    @param completionHandler 上传完成后的回调函数
    *    @param option            上传时传入的可选参数
    */
    public func putFile(filePath:String, key:String, token:String, complete:UpCompletionHandler, option:UploadOptions){
    }
    
    private func putFileInternal(file:DataReader, key:String, token:String, complete:UpCompletionHandler, option:UploadOptions){
        
    }
    

#if os(iOS)
    /**
    *    上传PHAsset文件(iOS8 and Later)
    *
    *    @param asset             PHAsset文件
    *    @param key               上传到云存储的key，为nil时表示是由七牛生成
    *    @param token             上传需要的token, 由服务器生成
    *    @param completionHandler 上传完成后的回调函数
    *    @param option            上传时传入的可选参数
    */
//    public func putPHAsset(asset:PHAsset, key:String, token:String, complete:UpCompletionHandler, option:UploadOptions){
//    
//    }
    
    /**
     *    上传PHAssetResource文件(iOS9.1 and Later)
     *
     *    @param asset             PHAssetResource文件
     *    @param key               上传到云存储的key，为nil时表示是由七牛生成
     *    @param token             上传需要的token, 由服务器生成
     *    @param completionHandler 上传完成后的回调函数
     *    @param option            上传时传入的可选参数
     */
//    public func putPHAssetResource(asset:PHAssetResource, key:String, token:String, complete:UpCompletionHandler, option:UploadOptions){
//    
//    }
#endif
    
    private let config:UploadConfiguration
}