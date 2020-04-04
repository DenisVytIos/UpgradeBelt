//
//  GradeTableViewCell.swift
//  UpgradeBelt
//
//  Created by Denis on 03.04.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import UIKit

class GradeTableViewCell: UITableViewCell {

  
    @IBOutlet weak var beltLabel: UILabel!
    @IBOutlet weak var beltImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
