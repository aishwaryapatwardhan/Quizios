//
//  TempViewController.swift
//  Quiz
//
//  Created by admin on 12/4/16.
//  Copyright © 2016 admin. All rights reserved.
//

import Foundation
import UIKit

class TempViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLayoutSubviews() {
        self.scrollView.contentSize = CGSize(width:320,
                                             height:548);
    }
}
