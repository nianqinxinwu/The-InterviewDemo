//
//  ViewController.swift
//  MyInterviewDemo
//
//  Created by DFYG-Internet on 2019/7/22.
//  Copyright © 2019 lingfeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tool = MIStringFlippingTool.init()
        let testStr = tool.reverseWords(s: "new word should be speaking")
        print("reslut:",testStr!)
    }


}

