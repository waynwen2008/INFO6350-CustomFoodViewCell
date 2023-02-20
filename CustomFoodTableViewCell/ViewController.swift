//
//  ViewController.swift
//  CustomFoodTableViewCell
//
//  Created by Wayne Wen on 2/20/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let foodPicNames = ["Food0", "Food1","Food2","Food3","Food4","Food5","Food6","Food7","Food8"]
    let foodNames = [
        "vitamin-salad",
        "chicken-wings-barbecue",
        "vegan-salad",
        "sausages-from-turkey",
        "grilled-chicken-breast",
        "meatballs-with-beef",
        "penne-pasta",
        "raw-beef-steaks",
        "stuffed-zucchini",
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodPicNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.imgContainer.image = UIImage(named: foodPicNames[indexPath.row])
        cell.lblImage.text = foodNames[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350.0;//Choose your custom row height
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

