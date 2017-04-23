//
//  TableViewCellMia.swift
//  2DA_EVA_4_RESTAURANT_2
//
//  Created by MARIO ALBERTO on 10/03/17.
//  Copyright © 2017 Mario Alberto Guillen Rivas. All rights reserved.
//

import UIKit

class TableViewCellMia: UITableViewCell {
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblUbica: UILabel!
    @IBOutlet var lblDesc: UILabel!
    @IBOutlet var imgImagen: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
