//
//  ViewController.swift
//  nfcWrite
//
//  Created by Dion Boles on 12/7/18.
//  Copyright © 2018 Dion Boles. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let nfcReader = NFCReader()

    @IBAction func ReadData(_ sender: UIButton) {
       nfcReader.beginSession()
    }
    
    
    
}

