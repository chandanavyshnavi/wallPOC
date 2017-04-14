//
//  CustomTableViewCell.swift
//  WallPostPOC
//
//  Created by vyshnavi k on 14/04/17.
//  Copyright © 2017 spin. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var idNumber: UILabel!
    
    @IBOutlet weak var useridLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var clickMe: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
