//
//  ViewController.swift
//  3mes5homework
//
//  Created by Нуридин Сафаралиев on 3/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var zakazy: [Zakaz] = [Zakaz(name: "Oasis", image: "oasisImage", price: 435, info1: "1 x Запеченный донер - курица", info2: "1 x Запеченный чили донер - говядина"), Zakaz(name: "Oasis", image: "oasisImage", price: 435, info1: "1 x Запеченный донер - курица", info2: "1 x Запеченный чили донер - говядина"), Zakaz(name: "Oasis", image: "oasisImage", price: 435, info1: "1 x Запеченный донер - курица", info2: "1 x Запеченный чили донер - говядина"), Zakaz(name: "Oasis", image: "oasisImage", price: 435, info1: "1 x Запеченный донер - курица", info2: "1 x Запеченный чили донер - говядина")]
    
    @IBOutlet weak var zakazTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView,    numberOfRowsInSection section: Int) -> Int {
        return zakazy.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = zakazTableView.dequeueReusableCell(withIdentifier: "zakaz_cell", for: indexPath) as! ZakazCell
        
        cell.cellZakazName.text = zakazy[indexPath.row].name
        cell.cellimage.image = UIImage(named: "\(zakazy[indexPath.row].image)")
        cell.cellZakazInfo1.text = zakazy[indexPath.row].info1
        cell.cellZakazInfo2.text = zakazy[indexPath.row].info2
        cell.cellZakazPrice.text = "\(zakazy[indexPath.row].price)"
        
        return cell
    }
    
    


}
