//
//  ViewController.swift
//  ColorTap
//
//  Created by William Richman on 6/13/17.
//  Copyright © 2017 wrichman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



	override func viewDidLoad() {
		super.viewDidLoad()
		let colorView = ColorSwapView(frame: view.frame)
		view.addSubview(colorView)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

}

