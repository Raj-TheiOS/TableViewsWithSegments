//
//  DetailViewController.swift
//  MultipleTableViewWithSegmentedCotrollSwift
//
//  Created by Raj on 14/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    var ahData:AhmedabadModel?
    var muData:MumbaiModel?
    var baData:BangloreModel?
    var puData:PuneModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if ahData?.city == "City :- Ahmedabad" {
            img.image = ahData?.img
            lblTitle.text = ahData?.title
            lblCity.text = ahData?.city
        }else   if muData?.city == "City:- Mumbai" {
            img.image = muData?.img
            lblTitle.text = muData?.title
            lblCity.text = muData?.city
        } else if baData?.city == "city:-Banglore" {
            img.image = baData?.img
            lblTitle.text = baData?.title
            lblCity.text = baData?.city
        } else if puData?.city == "City:- Pune" {
            img.image = puData?.img
            lblTitle.text = puData?.title
            lblCity.text = puData?.city
        }
    }
}
