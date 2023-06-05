//
//  ViewController.swift
//  QRCodeScannerSwift
//
//  Created by gauravcredenza3 on 06/05/2023.
//  Copyright (c) 2023 gauravcredenza3. All rights reserved.
//

import UIKit
import QRCodeSwiftScanner

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func scanQRCode(_ sender: UIButton) {
        let scanner = QRCodeScannerController()
        scanner.delegate = self
        self.present(scanner, animated: true, completion: nil)
    }
    
}

extension ViewController: QRScannerCodeDelegate {
    func qrScannerDidFail(_ controller: UIViewController, error: QRCodeError) {
        print("error:\(error.localizedDescription)")
    }
    
    func qrScanner(_ controller: UIViewController, scanDidComplete result: String) {
        print("result:\(result)")
    }
    
    func qrScannerDidCancel(_ controller: UIViewController) {
        print("SwiftQRScanner did cancel")
    }
}
