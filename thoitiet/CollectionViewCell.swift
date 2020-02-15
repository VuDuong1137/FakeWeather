//
//  CollectionViewCell.swift
//  thoitiet
//
//  Created by Dương chãng on 2/15/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var containerView2: UIView!
    @IBOutlet weak var Lableten2: UILabel!
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var DoCC: UILabel!
    
    var thoitiet2: weather2? {
        didSet {
            if let Data2 = thoitiet2 {
                Lableten2.text = Data2.Thu
                image2.image = UIImage(named: Data2.anh2)
                DoCC.text = Data2.nhietdo
            }
            
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
