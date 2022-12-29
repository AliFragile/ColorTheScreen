//
//  ScreenViewController.swift
//  ColorTheScreen
//
//  Created by Алина Ражева on 15.11.2022.
//

import UIKit

class ScreenViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ColorViewController
        colorVC.colorFromScreenVC = view.backgroundColor
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let colorVC = segue.source as! ColorViewController
        colorVC.delegate = self
        colorVC.setColor()
    }
}

//MARK: - Color Delegate:
extension ScreenViewController: ColorDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

