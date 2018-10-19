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
        if sender.currentTitle == "Aumentar" {
            cuenta += 1
        } else {
            cuenta -= 1
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

