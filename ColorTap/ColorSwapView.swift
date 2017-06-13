//
//  ColorSwapView.swift
//  ColorTap
//
//  Created by William Richman on 6/13/17.
//  Copyright © 2017 wrichman. All rights reserved.
//

import UIKit

class ColorSwapView: UIView {

	override init(frame: CGRect) {
		super.init(frame: frame)
		backgroundColor = UIColor.white
		let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTouch(_:)))
		addGestureRecognizer(gestureRecognizer)
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}

	@objc func handleTouch(_ recognizer: UIGestureRecognizer?) {
		if recognizer?.state == .ended {
			guard let locationInView = recognizer?.location(in: self) else { return } //TODO: Handle error
			backgroundColor = coordinatesToColor(locationInView)
		}
	}

	func coordinatesToColor(_ point: CGPoint) -> UIColor {
		let percent = point.x / bounds.width
		return UIColor(hue: percent, saturation: 1.0, brightness: 1.0, alpha: 1.0)
	}

}
