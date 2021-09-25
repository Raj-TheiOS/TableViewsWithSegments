//
//  ViewController.swift
//  MultipleTableViewWithSegmentedCotrollSwift
//
//  Created by Raj on 14/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segOut: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var ahData:[AhmedabadModel] = []
    var baData:[BangloreModel] = []
    var muData:[MumbaiModel] = []
    var puData:[PuneModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ahData = [
            AhmedabadModel(city: "City :- Ahmedabad", img: #imageLiteral(resourceName: "a"), title: "NavRatri"),
            AhmedabadModel(city: "City :- Ahmedabad", img: #imageLiteral(resourceName: "b"), title: "Rann Utsav"),
            
            AhmedabadModel(city: "City :- Ahmedabad", img: #imageLiteral(resourceName: "c"), title: "Kite Festival"),
            AhmedabadModel(city: "City :- Ahmedabad", img: #imageLiteral(resourceName: "e"), title: "BhavNath MAhadevFair"),
            AhmedabadModel(city: "City :- Ahmedabad", img: #imageLiteral(resourceName: "f"), title: "Janmastami")
        ]
        muData = [
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "g"), title: "Deewali"),
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "d"), title: "Gudi Padwa"),
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "a"), title: "Ganesh Chathurthi"),
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "h"), title: "Shivaji Jayanthi"),
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "e"), title: "Holy")
        ]
        
        baData = [
            BangloreModel(city: "city:-Banglore", img: #imageLiteral(resourceName: "g"), title: "Karaga Fesival"),
            BangloreModel(city: "city:-Banglore", img: #imageLiteral(resourceName: "a"), title: "Karaga Fesival"),
            BangloreModel(city: "city:-Banglore", img:#imageLiteral(resourceName: "c"), title: "Karaga Fesival"),
            BangloreModel(city: "city:-Banglore", img: #imageLiteral(resourceName: "f"), title: "Karaga Fesival"),
            BangloreModel(city: "city:-Banglore", img: #imageLiteral(resourceName: "d"), title: "Karaga Fesival")
        ]
        
        puData = [
            PuneModel(city: "City:- Pune", img: #imageLiteral(resourceName: "b"), title: "Deewali"),
            PuneModel(city: "City:- Pune", img: #imageLiteral(resourceName: "a"),
                      title: "Holy"),
            PuneModel(city: "City:- Pune", img: #imageLiteral(resourceName: "e"), title: "Dusshra"),
            PuneModel(city: "City:- Pune", img: #imageLiteral(resourceName: "h"), title: "Sankrathi"),
            PuneModel(city: "City:- Pune", img: #imageLiteral(resourceName: "f"), title: "Gudi Padwa")
        ]
    }
    
    
    @IBAction func btnSegClick(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var value = 0
        switch segOut.selectedSegmentIndex {
        case 0:
            value = ahData.count
            break
        case 1:
            value = muData.count
            break
        case 2:
            value = baData.count
            break
        case 3:
            value = puData.count
            break
        default:
            break
        }
        return value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        switch segOut.selectedSegmentIndex {
        case 0:
            cell.ahModel = ahData[indexPath.row]
            break
        case 1:
            cell.muModel = muData[indexPath.row]
            break
        case 2:
            cell.baModel = baData[indexPath.row]
            break
        case 3:
            cell.puModel = puData[indexPath.row]
            break
        default:
            break
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        switch segOut.selectedSegmentIndex {
        case 0:
            detailVC.ahData = ahData[indexPath.row]
            break
        case 1:
            detailVC.muData = muData[indexPath.row]
            break
        case 2:
            detailVC.baData = baData[indexPath.row]
            break
        case 3:
            detailVC.puData = puData[indexPath.row]
            break
        default:
            break
        }
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
