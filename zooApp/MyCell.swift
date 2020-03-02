//
//  MyCell.swift
//  zooApp
//
//  Created by Mohamed Abd el Aty on 1/14/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {
    @IBOutlet weak var Laimage: UIImageView!
    @IBOutlet weak var Laname: UILabel!
    @IBOutlet weak var LaDes: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
