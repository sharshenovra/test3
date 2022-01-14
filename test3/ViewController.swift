//
//  ViewController.swift
//  test3
//
//  Created by Ruslan Sharshenov on 24.12.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var totalTitle: UILabel = {
        let view = UILabel()
        view.adjustsFontSizeToFitWidth = true
        view.numberOfLines = 1
        view.font = .boldSystemFont(ofSize: 50)
        view.textAlignment = .right
        view.text = "0"
        return view
    }()
    
    lazy var acButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("C", for: .normal)
        view.backgroundColor = .lightGray
        view.setTitleColor(.black, for: .normal)
        view.layer.cornerRadius = self.view.frame.width / 9
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var plusminusButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("+/-", for: .normal)
        view.backgroundColor = .lightGray
        view.setTitleColor(.black, for: .normal)
        view.layer.cornerRadius = self.view.frame.width / 9
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var percentButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("%", for: .normal)
        view.backgroundColor = .lightGray
        view.setTitleColor(.black, for: .normal)
        view.layer.cornerRadius = self.view.frame.width / 9
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var divideButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("/", for: .normal)
        view.backgroundColor = .orange
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = self.view.frame.width / 9
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var multiplyButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("*", for: .normal)
        view.backgroundColor = .orange
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = self.view.frame.width / 9
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var minusButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("-", for: .normal)
        view.backgroundColor = .orange
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = self.view.frame.width / 9
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var plusButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("+", for: .normal)
        view.backgroundColor = .orange
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = self.view.frame.width / 9
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operationClick(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var resultButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("=", for: .normal)
        view.backgroundColor = .orange
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = self.view.frame.width / 9
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(resultClick(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var pointButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle(".", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    
    lazy var zeroButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("0", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var oneButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("1", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var twoButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("2", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var threeButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("3", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var fourButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("4", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var fiveButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("5", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var sixButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("6", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var sevenButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("7", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var eightButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("8", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    lazy var nineButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("9", for: .normal)
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = self.view.frame.width / 9
        view.setTitleColor(.white, for: .normal)
        view.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        view.addTarget(nil, action: #selector(operandButtonClicked(sender:)), for: .touchUpInside)
        return view
    }()
    
    lazy var buttonContainer: UIView = {
        let view = UIView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
        
    }

    private func setupSubView(){
        view.addSubview(totalTitle)
        totalTitle.snp.makeConstraints{ make in
            make.right.equalToSuperview().offset(view.frame.width / -25)
            make.left.equalToSuperview().offset(view.frame.width / 25)
            make.top.equalToSuperview().offset(view.frame.height /  7)
            make.width.equalTo(view.frame.width).multipliedBy(0.9)
            make.height.equalTo(view.frame.height / 9)
        }
        
        view.addSubview(buttonContainer)
        buttonContainer.snp.makeConstraints { make in
            make.top.equalTo(totalTitle.snp.bottom).offset(view.frame.width / 40)
            make.bottom.equalToSuperview().offset(view.frame.height / -15)
            make.width.equalToSuperview()
        }
        
        buttonContainer.addSubview(acButton)
        acButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalToSuperview().offset(view.frame.width / 40)
            make.top.equalToSuperview()
        }
        
        buttonContainer.addSubview(plusminusButton)
        plusminusButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(acButton.snp.right).offset(view.frame.width / 40)
            make.top.equalToSuperview()
        }
        
        buttonContainer.addSubview(percentButton)
        percentButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(plusminusButton.snp.right).offset(view.frame.width / 40)
            make.top.equalToSuperview()
        }
        
        buttonContainer.addSubview(divideButton)
        divideButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(percentButton.snp.right).offset(view.frame.width / 40)
            make.top.equalToSuperview()
        }
        
        buttonContainer.addSubview(sevenButton)
        sevenButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalToSuperview().offset(view.frame.width / 40)
            make.top.equalTo(acButton.snp.bottom).offset(view.frame.width / 40)
        }
        
        buttonContainer.addSubview(eightButton)
        eightButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(sevenButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(sevenButton)
        }
        
        buttonContainer.addSubview(nineButton)
        nineButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(eightButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(sevenButton)
        }
        
        buttonContainer.addSubview(multiplyButton)
        multiplyButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(nineButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(sevenButton)
        }
        
        buttonContainer.addSubview(fourButton)
        fourButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalToSuperview().offset(view.frame.width / 40)
            make.top.equalTo(sevenButton.snp.bottom).offset(view.frame.width / 40)
        }
        
        buttonContainer.addSubview(fiveButton)
        fiveButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(fourButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(fourButton)
        }
        
        buttonContainer.addSubview(sixButton)
        sixButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(fiveButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(fourButton)
        }
        
        buttonContainer.addSubview(minusButton)
        minusButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(sixButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(fourButton)
        }
        
        buttonContainer.addSubview(oneButton)
        oneButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalToSuperview().offset(view.frame.width / 40)
            make.top.equalTo(fourButton.snp.bottom).offset(view.frame.width / 40)
        }
        
        buttonContainer.addSubview(twoButton)
        twoButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(oneButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(oneButton)
        }
        
        buttonContainer.addSubview(threeButton)
        threeButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(twoButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(oneButton)
        }
        
        buttonContainer.addSubview(plusButton)
        plusButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(threeButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(oneButton)
        }
        
        buttonContainer.addSubview(zeroButton)
        zeroButton.snp.makeConstraints { make in
            make.height.equalTo(view.frame.width / 4.5)
            make.left.equalToSuperview().offset(view.frame.width / 40)
            make.top.equalTo(oneButton.snp.bottom).offset(view.frame.width / 40)
            make.right.equalTo(twoButton)
        }
        
        buttonContainer.addSubview(pointButton)
        pointButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(zeroButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(zeroButton)
        }
        
        buttonContainer.addSubview(resultButton)
        resultButton.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width / 4.5)
            make.height.equalTo(acButton.snp.width)
            make.left.equalTo(pointButton.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(zeroButton)
        }
    }
    
    var arrayValue = ""
    var operationClicked = false
    var lastItem = ""
    var percentTapped = false
    
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
        }else if sender.titleLabel?.text == "%"{
            percentTapped = true
            arrayValue += (sender.titleLabel?.text)!
            totalTitle.text = "0"
            lastItem = ""
            operationClicked = true
        }else if operationClicked == false{
            operationClicked = true
            arrayValue += (sender.titleLabel?.text)!
            totalTitle.text = "0"
            lastItem = ""
        }else{
            
        }
    }
    
    @objc func resultClick(sender: UIButton) {
        
        if percentTapped == true{
            let percentSeparatedArray = arrayValue.components(separatedBy: "%")
            let resultPercent = Double(percentSeparatedArray[0])! * 0.01 * Double(percentSeparatedArray[1])!
            let separatedArray = String(resultPercent).components(separatedBy: ".")
            
            if separatedArray[1] == "0"{
                totalTitle.text = separatedArray[0]
            }else{
                totalTitle.text = String(resultPercent)
            }
        }else{
            let expression = NSExpression(format: arrayValue)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let stringResult = String(result)
            let separatedArray = stringResult.components(separatedBy: ".")
            
            if separatedArray[1] == "0"{
                totalTitle.text = separatedArray[0]
            }else{
                totalTitle.text = String(result)
            }
        }
        
        lastItem = ""
        arrayValue = ""
        operationClicked = false
        percentTapped = false
            
    }
}

