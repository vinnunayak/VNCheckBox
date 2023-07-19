//
//  ViewController.swift
//  VNCheckBox
//
//  Created by Vinod Nayak Banavath on 19/07/23.
//

import UIKit

class ViewController: UIViewController {

    //Square Type
    lazy var checkBoxOne: VNCheckBox = {
        let checkBox = VNCheckBox(frame: .zero)
        checkBox.uncheckedBackgroundColor = .white
        checkBox.uncheckedBorderColor = .black
        checkBox.checkedBackgroundColor = .red
        checkBox.checkedBorderColor = .clear
        checkBox.isChecked = false
        return checkBox
    }()
    
    lazy var checkBoxTwo: VNCheckBox = {
        let checkBox = VNCheckBox(frame: .zero)
        checkBox.uncheckedBackgroundColor = .white
        checkBox.uncheckedBorderColor = .black
        checkBox.checkedBackgroundColor = .green
        checkBox.checkedBorderColor = .clear
        checkBox.isChecked = false
        return checkBox
    }()
    
    lazy var checkBoxThree: VNCheckBox = {
        let checkBox = VNCheckBox(frame: .zero)
        checkBox.uncheckedBackgroundColor = .white
        checkBox.uncheckedBorderColor = .black
        checkBox.checkedBackgroundColor = .yellow
        checkBox.checkedBorderColor = .clear
        checkBox.isChecked = false
        return checkBox
    }()
    
    //Round Type
    lazy var roundedCheckBoxOne: VNCheckBox = {
        let checkBox = VNCheckBox(frame: .zero)
        checkBox.uncheckedBackgroundColor = .white
        checkBox.uncheckedBorderColor = .black
        checkBox.checkedBackgroundColor = .blue
        checkBox.checkedBorderColor = .clear
        checkBox.isChecked = false
        checkBox.roundedCorners = true
        return checkBox
    }()
    
    lazy var roundedCheckBoxTwo: VNCheckBox = {
        let checkBox = VNCheckBox(frame: .zero)
        checkBox.uncheckedBackgroundColor = .white
        checkBox.uncheckedBorderColor = .black
        checkBox.checkedBackgroundColor = .systemTeal
        checkBox.checkedBorderColor = .clear
        checkBox.isChecked = false
        checkBox.roundedCorners = true
        return checkBox
    }()
    
    lazy var roundedCheckBoxThree: VNCheckBox = {
        let checkBox = VNCheckBox(frame: .zero)
        checkBox.uncheckedBackgroundColor = .white
        checkBox.uncheckedBorderColor = .black
        checkBox.checkedBackgroundColor = .orange
        checkBox.checkedBorderColor = .clear
        checkBox.isChecked = false
        checkBox.roundedCorners = true
        return checkBox
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "VNCheckBox Demo"
        setSquareTypeCheckBox()
        setRoundTypeCheckBox()
    }


    func setSquareTypeCheckBox(){
        view.addSubview(checkBoxOne)
        view.addSubview(checkBoxTwo)
        view.addSubview(checkBoxThree)
        checkBoxOne.translatesAutoresizingMaskIntoConstraints = false
        checkBoxTwo.translatesAutoresizingMaskIntoConstraints = false
        checkBoxThree.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            checkBoxOne.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            checkBoxOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            checkBoxOne.widthAnchor.constraint(equalToConstant: 44),
            checkBoxOne.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        NSLayoutConstraint.activate([
            checkBoxTwo.topAnchor.constraint(equalTo: checkBoxOne.bottomAnchor, constant: 20),
            checkBoxTwo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            checkBoxTwo.widthAnchor.constraint(equalTo: checkBoxOne.widthAnchor),
            checkBoxTwo.heightAnchor.constraint(equalTo: checkBoxOne.heightAnchor)
        ])
        
        NSLayoutConstraint.activate([
            checkBoxThree.topAnchor.constraint(equalTo: checkBoxTwo.bottomAnchor, constant: 20),
            checkBoxThree.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            checkBoxThree.widthAnchor.constraint(equalTo: checkBoxTwo.widthAnchor),
            checkBoxThree.heightAnchor.constraint(equalTo: checkBoxTwo.heightAnchor)
        ])
    }
    
    func setRoundTypeCheckBox(){
        view.addSubview(roundedCheckBoxOne)
        view.addSubview(roundedCheckBoxTwo)
        view.addSubview(roundedCheckBoxThree)
        roundedCheckBoxOne.translatesAutoresizingMaskIntoConstraints = false
        roundedCheckBoxTwo.translatesAutoresizingMaskIntoConstraints = false
        roundedCheckBoxThree.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            roundedCheckBoxOne.topAnchor.constraint(equalTo: checkBoxThree.bottomAnchor, constant: 80),
            roundedCheckBoxOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            roundedCheckBoxOne.widthAnchor.constraint(equalToConstant: 30),
            roundedCheckBoxOne.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            roundedCheckBoxTwo.topAnchor.constraint(equalTo: roundedCheckBoxOne.bottomAnchor, constant: 20),
            roundedCheckBoxTwo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            roundedCheckBoxTwo.widthAnchor.constraint(equalTo: roundedCheckBoxOne.widthAnchor),
            roundedCheckBoxTwo.heightAnchor.constraint(equalTo: roundedCheckBoxOne.heightAnchor)
        ])
        
        NSLayoutConstraint.activate([
            roundedCheckBoxThree.topAnchor.constraint(equalTo: roundedCheckBoxTwo.bottomAnchor, constant: 20),
            roundedCheckBoxThree.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            roundedCheckBoxThree.widthAnchor.constraint(equalTo: roundedCheckBoxTwo.widthAnchor),
            roundedCheckBoxThree.heightAnchor.constraint(equalTo: roundedCheckBoxTwo.heightAnchor)
        ])
    }
}

