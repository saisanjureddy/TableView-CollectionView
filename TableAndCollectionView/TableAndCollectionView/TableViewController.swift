//
//  TableViewController.swift
//  TableView+CollectionView
//
//  Created by Apptist Inc. on 2023-02-09.
//

import UIKit


class TableViewController: UITableViewController {
    
    var  humberList = ["College", "Park"]
    var humberImages: [UIImage] = [
        UIImage(named: "CollegePic")!,
        UIImage(named: "HumberParkPic")!
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

      /*MARK: - List of steps
       1. Create a table view controller
       2. Create a table view cell (prototype cell)
       3. We will populate the table view with each cell (prototype cell)
       4. Adjust the information shown on each cell
       */
        
            //Register cell inside table
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return humberList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //MARK: - Set the prototype cell as TableView Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell

        //MARK: - Set each text on the prototype cell to Humber College.
        cell.textLabel?.text = humberList[indexPath.row]
        //MARK: - Set each image on the prototype cell to our asset
        cell.imageView?.image = humberImages[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Call the segue
        performSegue(withIdentifier: "goToCollectionViewNew", sender: nil)
        
    }
    
    
    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        //MARK: - Allows us to send data
//        //Check the ID for the segue as "goToCollectionView"
//        if segue.identifier == "goToCollectionViewNew",
//            let collectionVC = segue.destination as? CollectionViewController {
//                //If the segue's destination is Collection View Controller, we can send the data
//                collectionVC.title = "Collection View"
//            }
//        }
    
    

}
