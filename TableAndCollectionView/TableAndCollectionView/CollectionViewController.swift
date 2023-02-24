
//
//  TableViewCell.swift
//  TableView+CollectionView
//
//  Created by Apptist Inc. on 2023-02-09.
//
import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    
    var arrimg: [UIImage?] = [UIImage(named: "Clg1"), UIImage(named: "Clg2"),UIImage(named: "Clg3"), UIImage(named: "Park1"), UIImage(named: "Park2"), UIImage(named: "Park3") ]
    var arrlbl = ["College","College", "College", "Park", "Park", "Park"]
    

    @IBOutlet var collectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlbl.count
    }
  
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        //Assigning images and label on the collection view 
        cell.img.image = arrimg[indexPath.row]
        cell.lbl.text = arrlbl[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //Navigating to collection view controller to show list of images
        let detailVC: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
        //Passing Data to Detail view controller  to show the same image that was selected in the collection view.
        detailVC.detailImg = arrimg[indexPath.row]
        detailVC.detailLbl = arrlbl[indexPath.row]
    }
}

