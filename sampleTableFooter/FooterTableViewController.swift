//
//  FooterTableViewController.swift
//  sampleTableFooter
//
//  Created by satoutakeshi on 2015/12/28.
//  Copyright © 2015年 satoutakeshi. All rights reserved.
//

import UIKit

class FooterTableViewController: UITableViewController {

    
    let  datas = ["サンプル1", "サンプル2", "サンプル3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return datas.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        // Configure the cell...

        cell.textLabel?.text = datas[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "フッターの文字を書く"
    }
    
    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let footerView:UITextView = UINib(nibName: "FooterView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! UITextView
            
        return footerView
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        //XibのUITextViewを生成
        let footerView:UITextView = UINib(nibName: "FooterView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! UITextView
        
        //UITextViewの高さを返す
        return footerView.bounds.height
    }
    
}
