//
//  ViewController.swift
//
//  Created by Admin on 22.09.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let box = UIView ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        button.backgroundColor = .black
        button.setTitle("Press to insert squares", for: .normal)
        self.view.addSubview(button)
        
        let tap = UITapGestureRecognizer (target:self, action: #selector(gesture))
        button.addGestureRecognizer(tap)
    }
    @objc func gesture (sender: UITapGestureRecognizer) {
        print("Tapped")
       
        
        //newBoxes()
        //newBoxes()
        //newBoxes()
        guard let currentView = sender.view else {return}
        for _ in 0...2 {
            let newBox = UIView ()
            currentView.addSubview(newBox)
            
            newBox.backgroundColor = randomColor(occuredColor: newBox)
            newBox.snp.makeConstraints { make in
                
                make.top.equalToSuperview().inset(CGFloat.random(in: 5...view.frame.size.height/4))
                make.trailing.equalToSuperview().inset(CGFloat.random(in:5...view.frame.size.width/4))
                make.bottom.equalToSuperview().inset(CGFloat.random(in:5...view.frame.size.height/4))
                make.leading.equalToSuperview().inset(CGFloat.random(in:5...view.frame.size.width/4))
                view.addSubview(newBox)
                let boxesOnBox = UITapGestureRecognizer(target: self, action: #selector(gesture))
                newBox.addGestureRecognizer(boxesOnBox)
            }
        }
    }
}

