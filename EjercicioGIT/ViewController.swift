//
//  ViewController.swift
//  EjercicioGIT
//
//  Created by nathanw on 18/10/18.
//  Copyright © 2018 nathanw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelOutlet: UILabel!
    var cuenta = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func botonApretado(_ sender: UIButton) {
        switch sender.currentTitle {
        case "Aumentar":
            cuenta += 1
        case "Disminuir":
            cuenta -= 1
        case "x10":
            cuenta *= 10
        default:
            print ("Nada")
        }
        
        self.labelOutlet.text = String(cuenta)
        if cuenta % 20 == 0 {
            let rojo = CGFloat(Double(arc4random_uniform(100)) / 100)
            let azul = CGFloat(Double(arc4random_uniform(100)) / 100)
            let verde = CGFloat(Double(arc4random_uniform(100)) / 100)
            self.labelOutlet.backgroundColor = UIColor.init(red: rojo, green: verde, blue: azul, alpha: 1)
        }
    }
}

