//
//  ViewController.swift
//  Table Cell
//
//  Created by Adam Moreno on 6/27/18.
//  Copyright © 2018 Adam Moreno. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    
    
    var myArray:[String] = ["my", "by", "hello", "run", "Was", "sie", "very", "hungry", "code", "monkey", "dew", "big", "warm", "fuzzy", "hart", "I", "have", "every", "reason", "waiting", "some", "day", "simple", "man", "xcode"]
    
    let fun = CellTableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: CellTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "cell") as! CellTableViewCell
        
        if cell == nil
        {
            cell = CellTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
            cell.textLabel?.text = myArray[indexPath.row]
            cell.fail.tag = indexPath.row
            cell.fail.addTarget(self, action: #selector(ViewController.errorBtn(_:)), for: .touchUpInside)
        }
        else
        {
            cell.textLabel?.text = myArray[indexPath.row]
            cell.fail.tag = indexPath.row
            cell.fail.addTarget(self, action: #selector(ViewController.errorBtn(_:)), for: .touchUpInside)
        }
        
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func errorBtn(_ sender: UIButton) {
        let tittle = myArray[(sender as AnyObject).tag]
        print(tittle)
        
        sender.backgroundColor = UIColor.red
        
    }
    

}

