//
//  RatingControl.swift
//  test
//
//  Created by Noah Russell on 10/07/2018.
//  Copyright © 2018 Noah Russell. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    var addFunc = 0
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupButtons()
    }
    private func setupButtons(){
        //create button
        let button = UIButton()
        
        button.backgroundColor = UIColor.black
        button.setTitle("Click this button to give this meal a star", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        //constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        //Setup button action
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        //add button to stack
        addArrangedSubview(button)
    }
    //MARK: Button Action
    @objc func ratingButtonTapped(button:UIButton){
        
        addFunc = addFunc + 1
        print(addFunc)
        if addFunc > 0 && addFunc < 6{
        var addFuncString = String(addFunc)
            button.setTitle("You've given this meal: " + addFuncString + " Stars!", for:.normal)
        }else if addFunc > 5{
            button.setTitle("You've given this meal: 5 Stars!", for:.normal)
        }
    }
    required init(coder: NSCoder) {
        super.init(coder:coder)
        setupButtons()
    }
    //MARK: Private Methods

    

}
