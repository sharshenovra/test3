//
//  ViewController.swift
//  test3
//
//  Created by Ruslan Sharshenov on 24.12.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var totalTitle = UILabel()
    lazy var acButton = UIButton()
    lazy var plusminusButton = UIButton()
    lazy var percentButton = UIButton()
    lazy var divideButton = UIButton()
    lazy var multiplyButton = UIButton()
    lazy var minusButton = UIButton()
    lazy var plusButton = UIButton()
    lazy var resultButton = UIButton()
    lazy var pointButton = UIButton()
    
    lazy var zeroButton = UIButton()
    lazy var oneButton = UIButton()
    lazy var twoButton = UIButton()
    lazy var threeButton = UIButton()
    lazy var fourButton = UIButton()
    lazy var fiveButton = UIButton()
    lazy var sixButton = UIButton()
    lazy var sevenButton = UIButton()
    lazy var eightButton = UIButton()
    lazy var nineButton = UIButton()
    
    lazy var numberOne: Double? = nil
    lazy var operation: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(totalTitle)
        totalTitle.adjustsFontSizeToFitWidth = true
        totalTitle.numberOfLines = 1
        totalTitle.font = .boldSystemFont(ofSize: 50)
        totalTitle.textAlignment = .right
        totalTitle.text = "0"
        totalTitle.snp.makeConstraints{ make in
            make.right.equalToSuperview().offset(view.frame.width / -25)
            make.left.equalToSuperview().offset(view.frame.width / 25)
            make.top.equalToSuperview().offset(view.frame.height /  7)
            make.width.equalTo(view.frame.width).multipliedBy(0.9)
            make.height.equalTo(view.frame.height / 9)
        }
        
        view.addSubview(acButton)
        acButton.setTitle("C", for: .normal)
        acButton.backgroundColor = .lightGray
        acButton.layer.cornerRadius = view.frame.width / 9
        acButton.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        acButton.snp.makeConstraints{make in
            make.top.equalTo(totalTitle.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(5)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
        }
        
        view.addSubview(plusminusButton)
        plusminusButton.setTitle("+/-", for: .normal)
        plusminusButton.backgroundColor = .lightGray
        plusminusButton.layer.cornerRadius = view.frame.width / 9
        plusminusButton.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        plusminusButton.snp.makeConstraints{make in
            make.top.equalTo(totalTitle.snp.bottom).offset(20)
            make.left.equalTo(acButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(plusminusButton.snp.width)
        }
        
        view.addSubview(percentButton)
        percentButton.setTitle("%", for: .normal)
        percentButton.backgroundColor = .lightGray
        percentButton.layer.cornerRadius = view.frame.width / 9
        percentButton.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        percentButton.snp.makeConstraints{make in
            make.top.equalTo(totalTitle.snp.bottom).offset(20)
            make.left.equalTo(plusminusButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(percentButton.snp.width)
        }
        
        view.addSubview(divideButton)
        divideButton.setTitle("/", for: .normal)
        divideButton.backgroundColor = .orange
        divideButton.layer.cornerRadius = view.frame.width / 9
        divideButton.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        divideButton.snp.makeConstraints{make in
            make.top.equalTo(totalTitle.snp.bottom).offset(20)
            make.left.equalTo(percentButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(divideButton.snp.width)
        }
        
        view.addSubview(sevenButton)
        sevenButton.setTitle("7", for: .normal)
        sevenButton.backgroundColor = .darkGray
        sevenButton.layer.cornerRadius = view.frame.width / 9
        sevenButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        sevenButton.snp.makeConstraints{make in
            make.top.equalTo(acButton.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(5)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(sevenButton.snp.width)
        }
        
        view.addSubview(eightButton)
        eightButton.setTitle("8", for: .normal)
        eightButton.backgroundColor = .darkGray
        eightButton.layer.cornerRadius = view.frame.width / 9
        eightButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        eightButton.snp.makeConstraints{make in
            make.top.equalTo(acButton.snp.bottom).offset(8)
            make.left.equalTo(sevenButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(eightButton.snp.width)
        }
        
        view.addSubview(nineButton)
        nineButton.setTitle("9", for: .normal)
        nineButton.backgroundColor = .darkGray
        nineButton.layer.cornerRadius = view.frame.width / 9
        nineButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        nineButton.snp.makeConstraints{make in
            make.top.equalTo(acButton.snp.bottom).offset(8)
            make.left.equalTo(eightButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(nineButton.snp.width)
        }
        
        view.addSubview(multiplyButton)
        multiplyButton.setTitle("X", for: .normal)
        multiplyButton.backgroundColor = .orange
        multiplyButton.layer.cornerRadius = view.frame.width / 9
        multiplyButton.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        multiplyButton.snp.makeConstraints{make in
            make.top.equalTo(acButton.snp.bottom).offset(8)
            make.left.equalTo(nineButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(multiplyButton.snp.width)
        }
        
        view.addSubview(fourButton)
        fourButton.setTitle("4", for: .normal)
        fourButton.backgroundColor = .darkGray
        fourButton.layer.cornerRadius = view.frame.width / 9
        fourButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        fourButton.snp.makeConstraints{make in
            make.top.equalTo(sevenButton.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(5)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(fourButton.snp.width)
        }
        
        view.addSubview(fiveButton)
        fiveButton.setTitle("5", for: .normal)
        fiveButton.backgroundColor = .darkGray
        fiveButton.layer.cornerRadius = view.frame.width / 9
        fiveButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        fiveButton.snp.makeConstraints{make in
            make.top.equalTo(sevenButton.snp.bottom).offset(8)
            make.left.equalTo(sevenButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(eightButton.snp.width)
        }
        
        view.addSubview(sixButton)
        sixButton.setTitle("6", for: .normal)
        sixButton.backgroundColor = .darkGray
        sixButton.layer.cornerRadius = view.frame.width / 9
        sixButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        sixButton.snp.makeConstraints{make in
            make.top.equalTo(sevenButton.snp.bottom).offset(8)
            make.left.equalTo(fiveButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(sixButton.snp.width)
        }
        
        view.addSubview(minusButton)
        minusButton.setTitle("-", for: .normal)
        minusButton.backgroundColor = .orange
        minusButton.layer.cornerRadius = view.frame.width / 9
        minusButton.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        minusButton.snp.makeConstraints{make in
            make.top.equalTo(sevenButton.snp.bottom).offset(8)
            make.left.equalTo(sixButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(minusButton.snp.width)
        }
        
        view.addSubview(oneButton)
        oneButton.setTitle("1", for: .normal)
        oneButton.backgroundColor = .darkGray
        oneButton.layer.cornerRadius = view.frame.width / 9
        oneButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        oneButton.snp.makeConstraints{make in
            make.top.equalTo(fourButton.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(5)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(fourButton.snp.width)
        }
        
        view.addSubview(twoButton)
        twoButton.setTitle("2", for: .normal)
        twoButton.backgroundColor = .darkGray
        twoButton.layer.cornerRadius = view.frame.width / 9
        twoButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        twoButton.snp.makeConstraints{make in
            make.top.equalTo(fourButton.snp.bottom).offset(8)
            make.left.equalTo(oneButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(twoButton.snp.width)
        }
        
        view.addSubview(threeButton)
        threeButton.setTitle("3", for: .normal)
        threeButton.backgroundColor = .darkGray
        threeButton.layer.cornerRadius = view.frame.width / 9
        threeButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        threeButton.snp.makeConstraints{make in
            make.top.equalTo(fourButton.snp.bottom).offset(8)
            make.left.equalTo(twoButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(threeButton.snp.width)
        }
        
        view.addSubview(plusButton)
        plusButton.setTitle("+", for: .normal)
        plusButton.backgroundColor = .orange
        plusButton.layer.cornerRadius = view.frame.width / 9
        plusButton.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        plusButton.snp.makeConstraints{make in
            make.top.equalTo(fourButton.snp.bottom).offset(8)
            make.left.equalTo(threeButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(plusButton.snp.width)
        }
        
        view.addSubview(zeroButton)
        zeroButton.setTitle("0", for: .normal)
        zeroButton.backgroundColor = .darkGray
        zeroButton.layer.cornerRadius = view.frame.width / 9
        zeroButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        zeroButton.snp.makeConstraints{make in
            make.top.equalTo(oneButton.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(5)
            make.width.equalTo(view.frame.width / 2.15)
            make.height.equalTo(plusButton.snp.width)
        }
        
        view.addSubview(pointButton)
        pointButton.setTitle(",", for: .normal)
        pointButton.backgroundColor = .darkGray
        pointButton.layer.cornerRadius = view.frame.width / 9
        pointButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        pointButton.snp.makeConstraints{make in
            make.top.equalTo(oneButton.snp.bottom).offset(8)
            make.left.equalTo(zeroButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(pointButton.snp.width)
        }
        
        view.addSubview(resultButton)
        resultButton.setTitle("=", for: .normal)
        resultButton.backgroundColor = .orange
        resultButton.layer.cornerRadius = view.frame.width / 9
        resultButton.addTarget(nil, action: #selector(resultClick(sender:)), for: .touchUpInside)
        resultButton.snp.makeConstraints{make in
            make.top.equalTo(oneButton.snp.bottom).offset(8)
            make.left.equalTo(pointButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(resultButton.snp.width)
        }
        
    }

    @objc func operandButtonClicked(sender: UIButton) {
        if self.totalTitle.text == "0" {
            self.totalTitle.text = ""
            self.totalTitle.text = self.totalTitle.text! + "\(String(describing: sender.titleLabel!.text!))"
            self.numberOne = Double(self.totalTitle.text!)
        }else{
        self.totalTitle.text = self.totalTitle.text! + "\(String(describing: sender.titleLabel!.text!))"
            self.numberOne = Double(self.totalTitle.text!)
    }
    }
    
    @objc func operationClick(sender: UIButton){
        if self.numberOne == nil {
            self.numberOne = Double(self.totalTitle.text ?? "0")
            self.totalTitle.text = "0"
            self.operation = sender.titleLabel!.text
        }
    }
    
    @objc func resultClick(sender: UIButton) {

        if self.operation == "+" {
            self.totalTitle.text = String((self.numberOne ?? 0) + Double(self.totalTitle.text ?? "0")!)
            
            self.numberOne = nil
        }
        else if self.operation == "-" {
            self.totalTitle.text = String((self.numberOne ?? 0) - Double(self.totalTitle.text ?? "0")!)
            
            self.numberOne = nil
        }
        else if self.operation == "C" {
            self.totalTitle.text = "0"
            
            self.numberOne = nil
        }
        else if self.operation == "X" {
            self.totalTitle.text = String((self.numberOne ?? 0) * (Double(self.totalTitle.text ?? "0")!))
            
            self.numberOne = nil
        }
        else if self.operation == "/" {
            self.totalTitle.text = String((self.numberOne ?? 0) / Double(self.totalTitle.text ?? "0")!)
            
            self.numberOne = nil
        }
        else if self.operation == "%" {
            self.totalTitle.text = String((self.numberOne ?? 0) * (Double(self.totalTitle.text ?? "0")!/100))
            
            self.numberOne = nil
        }
    }
}

