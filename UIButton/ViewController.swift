//
//  ViewController.swift
//  UIButton
//
//  Created by Sergey Golenko on 18/08/2019.
//  Copyright © 2019 Sergey Golenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var button4 = UIButton()

    @IBAction func Button(_ sender: Any) {
        let button = sender as! UIButton
        if button.titleLabel?.text == "Button 1"{
            print("Это первая кнопка")
            }
        if button.titleLabel?.text == "Button 2"{
            print("Это вторая кнопка")
        } else if button.titleLabel?.text == "Button 3"{
            print("Это третья кнопка")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       button4 = UIButton(type:.infoLight)
        button4.frame = CGRect(x: 110, y: 200, width: 100, height: 44)
         button4.setTitle("Button4", for: .normal)
        button4.setTitle("Ты нажал на меня", for: .highlighted )
        button4.titleLabel?.text = "Button4"
        self.view.addSubview(button4)
        button4.addTarget(self, action:  #selector(buttonPressef(param:)), for:.touchUpInside)
    }

    @objc func buttonPressef(param:UIButton){
        print("Кнопка нажата")
    }

}

