//
//  ViewController.swift
//  WallPostPOC
//
//  Created by vyshnavi k on 14/04/17.
//  Copyright © 2017 spin. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
var listData = [ModelData]()
    @IBOutlet weak var dataTable: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // service request
        Alamofire.request("http://jsonplaceholder.typicode.com/posts").responseJSON { response in
            
            let result = response.result
            print(result)
    
            if let dict = result.value as? NSArray{
                print(dict)
                for i in dict {
                    
                    let i1 = i as! NSDictionary
                     let userids = i1.value(forKey: "userId") as! Int
                     let ids = i1.value(forKey: "id") as! Int
                    let bodyText = i1.value(forKey: "body") as! String
                    let titleText = i1.value(forKey: "title") as! String
                    
                    let k = ModelData.init(id: ids, name: titleText, body: bodyText, userid: userids)
                   self.listData.append(k)
                   
                   
                    
                }
           self.dataTable.reloadData()
            }
            
    
    }

    
    
    }
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
      
        let Uid = listData[indexPath.row].id
        cell.idNumber.text = "ID: \(Uid!)"
        
        let UserID = listData[indexPath.row].userid
        cell.useridLabel.text = "UserID : \(UserID!)"
        
        let titletext = listData[indexPath.row].name
        cell.titleLabel.text = "Title: \(titletext!)"
        
        
        
        return cell
        
        
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alert = UIAlertController(title: "ID:\(listData[indexPath.row].id!)",message: "Details:  \(listData[indexPath.row].body!)", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "cancel", style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(action)
        present(alert,animated : true,completion: nil)
        

        
        
        
        
        
        
        
        
    }

}

