//
//  ViewController.swift
//  tableviewwithserverdata
//
//  Created by A RAJU on 1/8/20.
//  Copyright © 2020 A RAJU. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UINavigationControllerDelegate {
  
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var arraydata = [jsonstruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
         getdata()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func getdata()
    {
        
       
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        
        URLSession.shared.dataTask(with: url!) {(data,responds,Error) in
        
    
            do {
                if Error == nil
                     {
                        self.arraydata = try JSONDecoder().decode([jsonstruct].self, from: data!)
                        for mainarr in self.arraydata
                        {
                            print(mainarr.name,":",mainarr.capital,":",mainarr.alpha3Code)
                            DispatchQueue.main.async {
                                
                                 self.tableView.reloadData()
                            }
                           
                                   
                        }
                }
            }
            catch{
                
             print("error in get json data")
            }
            
        }.resume()
    
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraydata.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        
       cell.lblname!.text = "Name :\(arraydata[indexPath.row].name)"
        
        
       cell.lblCapital!.text = " Capital :\( arraydata[indexPath.row].capital)"
    
        return cell
      }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = storyboard?.instantiateViewController(identifier: "detail") as! detailViewController
        
        detail.strregion = arraydata[indexPath.row].region
        detail.strsubregion = arraydata[indexPath.row].subregion
        detail.stralpha3 = arraydata[indexPath.row].alpha3Code
        detail.stralphha2 = arraydata[indexPath.row].alpha2Code
        
        navigationController?.pushViewController(detail, animated: true)
    }


}
