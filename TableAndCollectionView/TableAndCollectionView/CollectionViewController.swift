
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
        //UIcollectionviewcell * cell = collectionview.de "cell"
        
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.img.image = arrimg[indexPath.row]
        cell.lbl.text = arrlbl[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "detailSegue", sender: nil)
        let detailVC: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
        detailVC.detailImg = arrimg[indexPath.row]
        detailVC.detailLbl = arrlbl[indexPath.row]
    }
    
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//
//
//        //MARK: - Allows us to send data
//        //Check the ID for the segue as "goToCollectionView"
//        if segue.identifier == "detailSegue",
//            let collectionVC = segue.destination as? DetailViewController {
//                //If the segue's destination is Collection View Controller, we can send the data
//                collectionVC.title = "Detail View"
//            collectionVC.detailText?.text = "Test"
//            }
//        }
    
}

