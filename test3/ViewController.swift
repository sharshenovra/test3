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
    lazy var acButton = UIButton(type: .system)
    lazy var plusminusButton = UIButton(type: .system)
    lazy var percentButton = UIButton(type: .system)
    lazy var divideButton = UIButton(type: .system)
    lazy var multiplyButton = UIButton(type: .system)
    lazy var minusButton = UIButton(type: .system)
    lazy var plusButton = UIButton(type: .system)
    lazy var resultButton = UIButton(type: .system)
    lazy var pointButton = UIButton(type: .system)
    
    lazy var zeroButton = UIButton(type: .system)
    lazy var oneButton = UIButton(type: .system)
    lazy var twoButton = UIButton(type: .system)
    lazy var threeButton = UIButton(type: .system)
    lazy var fourButton = UIButton(type: .system)
    lazy var fiveButton = UIButton(type: .system)
    lazy var sixButton = UIButton(type: .system)
    lazy var sevenButton = UIButton(type: .system)
    lazy var eightButton = UIButton(type: .system)
    lazy var nineButton = UIButton(type: .system)
    
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
        acButton.setTitleColor(.black, for: .normal)
        acButton.layer.cornerRadius = view.frame.width / 9
        acButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        plusminusButton.setTitleColor(.black, for: .normal)
        plusminusButton.layer.cornerRadius = view.frame.width / 9
        plusminusButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        percentButton.setTitleColor(.black, for: .normal)
        percentButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        divideButton.setTitleColor(.white, for: .normal)
        divideButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        sevenButton.setTitleColor(.white, for: .normal)
        sevenButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        eightButton.setTitleColor(.white, for: .normal)
        eightButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        nineButton.setTitleColor(.white, for: .normal)
        nineButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        nineButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        nineButton.snp.makeConstraints{make in
            make.top.equalTo(acButton.snp.bottom).offset(8)
            make.left.equalTo(eightButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(nineButton.snp.width)
        }
        
        view.addSubview(multiplyButton)
        multiplyButton.setTitle("*", for: .normal)
        multiplyButton.backgroundColor = .orange
        multiplyButton.layer.cornerRadius = view.frame.width / 9
        multiplyButton.setTitleColor(.white, for: .normal)
        multiplyButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        fourButton.setTitleColor(.white, for: .normal)
        fourButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        fiveButton.setTitleColor(.white, for: .normal)
        fiveButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        sixButton.setTitleColor(.white, for: .normal)
        sixButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        minusButton.setTitleColor(.white, for: .normal)
        minusButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        oneButton.setTitleColor(.white, for: .normal)
        oneButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        twoButton.setTitleColor(.white, for: .normal)
        twoButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        threeButton.setTitleColor(.white, for: .normal)
        threeButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        plusButton.setTitleColor(.white, for: .normal)
        plusButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        zeroButton.setTitleColor(.white, for: .normal)
        zeroButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        zeroButton.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        zeroButton.snp.makeConstraints{make in
            make.top.equalTo(oneButton.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(5)
            make.width.equalTo(view.frame.width / 2.15)
            make.height.equalTo(plusButton.snp.width)
        }
        
        view.addSubview(pointButton)
        pointButton.setTitle(".", for: .normal)
        pointButton.backgroundColor = .darkGray
        pointButton.layer.cornerRadius = view.frame.width / 9
        pointButton.setTitleColor(.white, for: .normal)
        pointButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
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
        resultButton.setTitleColor(.white, for: .normal)
        resultButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        resultButton.addTarget(nil, action: #selector(resultClick(sender:)), for: .touchUpInside)
        resultButton.snp.makeConstraints{make in
            make.top.equalTo(oneButton.snp.bottom).offset(8)
            make.left.equalTo(pointButton.snp.right).offset(8)
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(resultButton.snp.width)
        }
        
    }

    var arrayValue = ""
    var operationClicked = false
    var lastItem = ""
    
    @objc func operandButtonClicked(sender: UIButton) {
        if sender.titleLabel?.text == "."{
            if lastItem.contains(".") == false{
                if operationClicked == false && lastItem == ""{
                    arrayValue += (sender.titleLabel?.text)!
                    totalTitle.text = arrayValue
                    lastItem += (sender.titleLabel?.text)!
                }else{
                    operationClicked = false
                    arrayValue += (sender.titleLabel?.text)!
                    lastItem += (sender.titleLabel?.text)!
                    totalTitle.text = lastItem
                }
            }else{
            }
        }else{
            if operationClicked == false && lastItem == ""{
                arrayValue += (sender.titleLabel?.text)!
                totalTitle.text = arrayValue
                lastItem += (sender.titleLabel?.text)!
            }else{
                operationClicked = false
                arrayValue += (sender.titleLabel?.text)!
                lastItem += (sender.titleLabel?.text)!
                totalTitle.text = lastItem
            }
        }
    }
    
    @objc func operationClick(sender: UIButton){
        if sender.titleLabel?.text == "C"{
            totalTitle.text = ""
            lastItem = ""
            arrayValue = ""
        }else if sender.titleLabel?.text == "+/-"{
            if lastItem != "" && lastItem != "0"{
                lastItem = "\(-Double(lastItem)!)"
                totalTitle.text = lastItem
            }
        }else if operationClicked == false{
            operationClicked = true
            arrayValue += (sender.titleLabel?.text)!
            totalTitle.text = "0"
            lastItem = ""
        }else{
            
        }
    }
    
    @objc func resultClick(sender: UIButton) {
        let expression = NSExpression(format: arrayValue)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let stringResult = String(result)
        let separatedArray = stringResult.components(separatedBy: ".")
        
        if separatedArray[1] == "0"{
            totalTitle.text = separatedArray[0]
        }else{
            totalTitle.text = String(result)
        }
        
        lastItem = ""
        arrayValue = ""
        operationClicked = false
        
            
        }
        }

