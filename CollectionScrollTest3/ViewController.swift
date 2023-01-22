//
//  ViewController.swift
//  CollectionScrollTest3
//
//  Created by Hyeon Jong Kim on 2023/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath)

        let hue = CGFloat((0..<360).randomElement() ?? 0)/359.0
        cell.contentView.backgroundColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        if let label = cell.contentView.viewWithTag(100) as? UILabel {
            label.text = "\(indexPath.item)"
        }
        
        return cell
    }
}
