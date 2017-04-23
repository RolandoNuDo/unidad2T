//
//  TableViewCellRest.swift
//  2DA_EVA_PRACTICA_6_SMASH
//
//  Created by MARIO ALBERTO on 03/04/17.
//  Copyright © 2017 Mario Alberto Guillen Rivas. All rights reserved.
//

import UIKit

class TableViewCellRest: UITableViewCell {

    @IBOutlet weak var lblNomRest: UILabel!
    @IBOutlet weak var lblLemaRest: UILabel!
    @IBOutlet weak var imgRest: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
