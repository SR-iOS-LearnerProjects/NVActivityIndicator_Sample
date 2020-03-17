//
//  ViewController.swift
//  ActivityIndicatorSample
//
//  Created by MAC006 on 17/03/20.
//  Copyright © 2020 MAC006. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController, NVActivityIndicatorViewable {
    
    @IBOutlet weak var loader: UIView!
    @IBOutlet weak var startBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loader.layer.cornerRadius = 8
        
        activityIndicator()
        
    }
    
    func activityIndicator(){
//        let loadingActivity = NVActivityIndicatorView(frame: CGRect(x: 10.0, y: 10.0, width: 100.0, height: 100.0), type: .audioEqualizer, color: .blue, padding: 20)
        let loadingActivity = NVActivityIndicatorView(frame: .zero, type: .audioEqualizer, color: .blue, padding: 0)
        self.view.addSubview(loadingActivity)
        loadingActivity.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loadingActivity.heightAnchor.constraint(equalToConstant: 50),
            loadingActivity.widthAnchor.constraint(equalToConstant: 50),
            loadingActivity.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loadingActivity.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        loadingActivity.startAnimating()
    }
    
    @IBAction func startBtnAction(_ sender: UIButton){

    }
    
    @IBAction func stopBtnAction(_ sender: UIButton){
       
    }
    
}

