//
//  MIStringFlippingViewController.swift
//  MyInterviewDemo
//
//  Created by DFYG-Internet on 2019/7/22.
//  Copyright © 2019 lingfeng. All rights reserved.
//

import UIKit

class MIStringFlippingViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let table = UITableView.init()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    func createUI() {
        self.table.delegate = self
        self.table.dataSource = self
        self.table.rowHeight = 40.0
        self.table.separatorStyle = UITableViewCell.SeparatorStyle.none
        self.view.addSubview(self.table)
    }
    
    //Mark:tableviewDelegate
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "newcell"
        var Cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        if (Cell == nil){
            Cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellId)
        }
        return Cell!
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
