//
//  ViewController.swift
//  CollectionViewTute

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var tableData: [String] = ["Evo X", "458", "GTR", "Evo X", "458", "GTR", "Evo X", "458", "GTR", "Evo X", "458", "GTR"]
    var tableImages: [String] = ["evox.jpg", "458.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: colvwCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! colvwCell
        cell.lblCell.text = tableData[indexPath.row]
        cell.imgCell.image = UIImage(named: tableImages[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Cell \(indexPath.row) selected")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

