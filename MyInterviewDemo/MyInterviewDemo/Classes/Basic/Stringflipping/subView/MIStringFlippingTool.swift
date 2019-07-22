//
//  MIStringFlippingTool.swift
//  MyInterviewDemo
//
//  Created by DFYG-Internet on 2019/7/22.
//  Copyright © 2019 lingfeng. All rights reserved.
//

import UIKit

class MIStringFlippingTool: NSObject {
    
    /*******swift4.0 + ************/
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
    
    /* Swift 4.0 -*/
    
//    fileprivate func swap<T>(_ chars : inout [T], _ p : Int, _ q:Int){
//        print("before p:",chars[p],"q:",chars[q])
//        (chars[p],chars[q]) = (chars[q],chars[p])
//        print("after p:",chars[p],"q:",chars[q])
//    }
//
//    fileprivate func _reverse<T>(_ chars: inout [T], _ start : Int, _ end : Int){
//        var start = start, end = end
//
//        while start < end {
//            swap(&chars, start, end)
//            start += 1
//            end -= 1
//        }
//    }
//
//    func reverseWords(s:String) -> String? {
//        NSLog("oldWord:%@\n", s)
//        guard let s:String = s else {
//            return nil
//        }
//        var chars = Array(s.characters),start = 0
//        //整体反转
//        _reverse(&chars, 0, chars.count - 1)
//
//        //以“ ”和字符串结合中最后一个字母为界对单个单词进行反转
//        for i in 0..<chars.count {
//            if i == chars.count - 1 || chars[i + 1] == " " {
//                _reverse(&chars, start, i)
//                start = i + 2
//            }
//        }
//
//        return String(chars)
//    }
    
    /*
     字符串反转中描述很清晰的地址:https://www.jianshu.com/p/cb3ed74c0732
     */
}
