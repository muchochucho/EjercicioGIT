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
        cuenta += 1
        self.labelOutlet.text = String(cuenta)
    }
}

