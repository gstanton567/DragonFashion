//
//  ViewController.swift
//  DragonFashion
//
//  Created by Grayson Stanton on 5/21/19.
//  Copyright © 2019 Grayson Stanton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var dragon : Dragon?
var dragons: [Dragon] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var dragon1 = Dragon(name: "Patrick", signatureAccessory: "Jeans")
        var dragon2 = Dragon(name: "Gil", signatureAccessory: "Sweatshirt")
        var dragon3 = Dragon(name: "Stacey", signatureAccessory: "Ray-Bands")
        var dragon4 = Dragon(name: "-", signatureAccessory: "Underwear")
        var dragon5 = Dragon(name: "Vargus", signatureAccessory: "Pump")
        
        dragons = [dragon1, dragon2, dragon3, dragon4, dragon5]
        for dragon in dragons{
            print(dragon.textDescription)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dragons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID") as! UITableViewCell
        let dragon = dragons[indexPath.row]
        cell.textLabel?.text = dragon.name
        cell.detailTextLabel?.text = dragon.signatureAccessory
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var indexPath = tableView.indexPathForSelectedRow!
        dragon = dragons[indexPath.row]
        let dvc = segue.destination as! DetailViewController
        dvc.dragon = dragon
        
    }
}

