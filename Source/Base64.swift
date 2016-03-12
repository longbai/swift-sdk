//
//  Base64.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/11.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

public class Base64{
    public static func urlSafeEncode(str:String) ->String?{
        guard let utf8EncodeData = str.dataUsingEncoding(NSUTF8StringEncoding) else {
            return nil;
        }
        return urlSafeEncode(utf8EncodeData);
    }
    
    public static func urlSafeEncode(data:NSData) ->String{
        var base64EncodedString = data.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0));
        
        base64EncodedString = base64EncodedString.stringByReplacingOccurrencesOfString("/", withString: "_");
        base64EncodedString = base64EncodedString.stringByReplacingOccurrencesOfString("+", withString: "-");
        return base64EncodedString;
    }
    
    public static func urlSafeDecode(str:String) ->NSData?{
        var s = str.stringByReplacingOccurrencesOfString("-", withString: "+");
        s = s.stringByReplacingOccurrencesOfString("_", withString: "/");
        
        return NSData(base64EncodedString: s, options: NSDataBase64DecodingOptions(rawValue: 0));
    }
    
    public static func urlSafeDecodeToString(str:String) ->String?{
        guard let decodedData = urlSafeDecode(str) else {
            return nil;
        }
        
        return String(data: decodedData, encoding: NSUTF8StringEncoding);
    }
}