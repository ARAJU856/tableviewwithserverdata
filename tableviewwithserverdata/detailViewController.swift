//
//  detailViewController.swift
//  tableviewwithserverdata
//
//  Created by A RAJU on 1/23/20.
//  Copyright © 2020 A RAJU. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet weak var alpha2: UILabel!
    
    @IBOutlet weak var alpha3: UILabel!
    
    @IBOutlet weak var subregion: UILabel!
    
    @IBOutlet weak var region: UILabel!
    
    
  var  strregion = ""
   var strsubregion = ""
    var stralphha2 = ""
    var stralpha3 = ""
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        alpha2.text = stralphha2
        alpha3.text = stralpha3
        region.text = strregion
        subregion.text = strsubregion
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
