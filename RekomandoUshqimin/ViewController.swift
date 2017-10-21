//
//  ViewController.swift
//  RekomandoUshqimin
//
//  Created by Rinor Bytyci on 10/13/17.
//  Copyright © 2017 Rinor Bytyci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fotoja: UIImageView!
    @IBOutlet weak var teksti: UILabel!
    
    var ushqimet = ["pizza", "akullore", "caj"]
    var cmimet = ["pizza": 2.5, "akullore": 1, "caj": 0.5]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sugjeroUshqim(_ sender: Any) {
        let randomUshqim:Int = Int(arc4random_uniform(UInt32(ushqimet.count)))
        let ushqimiISugjeruar:String = ushqimet[randomUshqim]
        let cmimi = cmimet[ushqimiISugjeruar]
        
        teksti.text = "Ushqimi qe preferojme per sot eshte \(ushqimiISugjeruar) dhe kushton \(cmimi!) Euro"
        fotoja.image = UIImage.init(named: ushqimiISugjeruar)
        
    }
    

}

