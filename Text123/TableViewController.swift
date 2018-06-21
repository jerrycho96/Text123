//
//  TableViewController.swift
//  Text123
//
//  Created by D7703_06 on 2018. 6. 21..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    
    var foodStoreType = ["동의과학대학교","부산시민공원",
                         "롯데호텔 부산본점"]
    var foodStorelocation = ["부산광역시 부산진구 양정동 273-36", "부산광역시 부산진구 연지동 100-6", "부산광역시 부사진구 부전동 부전로 503-15" ]

    override func viewDidLoad() {
        super.viewDidLoad()

         self.title = " DIT 배달통"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodStoreType.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath) as! TableViewCell
        
        // Configure the cell...
        //        cell.textLabel?.text = foodStoreNames[indexPath.row]
        //        cell.imageView?.image = UIImage(named: foodStoreImages[indexPath.row])
        //        cell.imageView?.image = UIImage(named:"02")
        
        cell.address.text = foodStorelocation[indexPath.row]
        cell.name.text = foodStoreType[indexPath.row]
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "title" {
            if let indexPath =  tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! detailViewController
                // 이름 넘기기
                destinationController.loaction = foodStorelocation[indexPath.row]
                destinationController.name = foodStoreType[indexPath.row]
                
                // 이미지 넘기기
                
                
            }
        }
        else if segue.identifier == "map" {
            let destinationController = segue.destination as! totalViewController
            // 이름 넘기기
            destinationController.name = foodStoreType
            destinationController.locations = foodStorelocation
            // 이미지 넘기기
            //destinationController.cellImage = foodStoreThumbnail[indexPath.row]
            
            //destinationController.tel1 = foodStoreTel[indexPath.row]
            //destinationController.menu = foodMenus[indexPath.row]
            
        }
    
    
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}
