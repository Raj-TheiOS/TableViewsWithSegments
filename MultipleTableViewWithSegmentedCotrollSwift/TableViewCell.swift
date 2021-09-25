//
//  TableViewCell.swift
//  MultipleTableViewWithSegmentedCotrollSwift
//
//  Created by Raj on 14/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    var ahModel:AhmedabadModel! {
        didSet{
            lblTitle.text = ahModel.title
            lblCity.text = ahModel.city
            img.image = ahModel.img
        }
    }
    var muModel:MumbaiModel! {
        didSet{
            lblTitle.text = muModel.title
            lblCity.text = muModel.city
            img.image = muModel.img
        }
    }
    var baModel:BangloreModel! {
        didSet{
            lblTitle.text = baModel.title
            lblCity.text = baModel.city
            img.image = baModel.img
        }
    }
    var puModel:PuneModel! {
        didSet{
            lblTitle.text = puModel.title
            lblCity.text = puModel.city
            img.image = puModel.img
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
