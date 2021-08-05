//
//  TableViewCell.swift
//  Eyowo
//
//  Created by Anum Ijaz on 28/07/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//

import UIKit

class FruitTableViewCell: UITableViewCell {

    @IBOutlet var ImageView: UIImageView!
    
    @IBOutlet var FruitName: UILabel!
    @IBOutlet var Desclbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
