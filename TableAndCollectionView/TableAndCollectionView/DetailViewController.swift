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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
