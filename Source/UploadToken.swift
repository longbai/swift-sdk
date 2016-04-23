//
//  UploadToken.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/11.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

struct UploadToken{
    let accessKey:String;
    let bucket:String;
    let token:String;
    let hasReturnUrl:Bool;
    
    static func parse(token:String)->UploadToken?{
        let strings = token.componentsSeparatedByString(":");
        if (strings.count != 3){
            return nil;
        }
        let data = Base64.urlSafeDecode(strings[2])
        if data == nil {
            return nil
        }
        let dict = try?NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableLeaves);
        if dict == nil {
            return nil
        }
        let scope = dict!.objectForKey("scope") as! String?
        if scope == nil || scope == ""{
            return nil
        }
        let deadline = dict!.objectForKey("deadline")
        if deadline == nil {
            return nil
        }
        let returnUrl = dict!.objectForKey("returnUrl")
        let hasReturnUrl = (returnUrl != nil)
        
        let strings2 = scope!.componentsSeparatedByString(":")
        let bucket = strings2[0]
        let ak = strings[0]
        return UploadToken(accessKey: ak, bucket: bucket, token: token, hasReturnUrl: hasReturnUrl)
    }
}