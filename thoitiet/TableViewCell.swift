//
//  TableViewCell.swift
//  thoitiet
//
//  Created by Dương chãng on 2/14/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var containerview: UIView!
    
    @IBOutlet weak var thulable: UILabel!
    
    @IBOutlet weak var tenanhuiimageView: UIImageView!
    
    @IBOutlet weak var soDoclable: UILabel!
    
    @IBOutlet weak var tenngaylable: UILabel!
    
    
    // chuỳen du liệu qua
    var thoitiet: weather?{
        didSet {
            if let Data = thoitiet {
                thulable.text = Data.Tenthu
                tenanhuiimageView.image = UIImage(named: Data.anh)
                soDoclable.text = Data.DoC
                tenngaylable.text = Data.ngay
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
