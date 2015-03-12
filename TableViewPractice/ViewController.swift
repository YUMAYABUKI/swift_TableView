//
//  ViewController.swift
//  TableViewPractice
//
//  Created by 矢吹祐真 on 2015/03/12.
//  Copyright (c) 2015年 矢吹祐真. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var timelineTableView: UITableView!
    var charaNameArray = [String]()//空の配列を宣言（string型）
    var charaImageArray = [UIImage]()//空の配列を宣言（UIImage型）
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // TableViewに流し込む
        timelineTableView.dataSource = self
       
        // TableViewで扱うメソッド
        timelineTableView.delegate = self
    
        //charaName配列にキャラの名前を入れていく
        charaNameArray = ["a","b","c"]
        
        //charaImage配列にキャラの名前を入れていく
        charaImageArray.append(UIImage(named: "f1.jpg")!)
        charaImageArray.append(UIImage(named: "f2.jpg")!)
        charaImageArray.append(UIImage(named: "f3.jpg")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) ->Int{
        //1セクションあたりのセル数
        return charaNameArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    //デキューを使って再利用可能な「cell」というIDのついた
    let cell = tableView.dequeueReusableCellWithIdentifier("cell",forIndexPath:indexPath) as UITableViewCell
    

    //cellに値を設定する。
    cell.textLabel!.text = charaNameArray[indexPath.row]
    cell.imageView!.image = charaImageArray[indexPath.row]
        
        return cell
    }
}

