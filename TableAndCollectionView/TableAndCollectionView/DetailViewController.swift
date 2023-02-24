//
//  TableViewCell.swift
//  TableView+CollectionView
//
//  Created by Apptist Inc. on 2023-02-09.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var detailText: UILabel!
    
    @IBOutlet weak var detailImage: UIImageView!
    
    var detailImg:UIImage!
    var detailLbl:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailText.text = detailLbl
        detailImage.image = detailImg
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
