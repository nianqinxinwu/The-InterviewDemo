//
//  MIStringFlippingTool.swift
//  MyInterviewDemo
//
//  Created by DFYG-Internet on 2019/7/22.
//  Copyright © 2019 lingfeng. All rights reserved.
//

import UIKit

class MIStringFlippingTool: NSObject {
    
    func rever(s:String) -> String? {
        return String(s.reversed())
    }
    
    func reverseWords(s: String?) -> String? {
        guard s != nil else {
            return nil
        }
        
        //翻转整体字符串
        let chars4 = String(s!.reversed())
        print(chars4)
        
        var startIdx = s?.startIndex, endIdex = s?.endIndex
        var result = String()
        
        //逐个单词进行翻转，然后拼接
        while let comma = chars4[startIdx!..<endIdex!].firstIndex(of: " ") {
            
            result.append(String(chars4[startIdx!..<comma].reversed()) + " ")
            startIdx = chars4.index(after: comma)
        }
        result.append(String(chars4[startIdx!..<endIdex!].reversed()))
        print(result)
        
        return String(result)
    }
    /*
     字符串反转中描述很清晰的地址:https://www.jianshu.com/p/cb3ed74c0732
     */
}
