//
//  SignUpViewController.swift
//  Movie
//
//  Created by 나지운 on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController {

    // UITextFields
    @IBOutlet weak var IDTextField: UITextField!
    @IBOutlet weak var PWTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var referralCodeTextField: UITextField!
    
    // UIButton
    @IBOutlet weak var signUpButton: UIButton!
    
    // UILabel
    @IBOutlet weak var moreInformationLabel: UILabel!
    
    // UISwitch
    @IBOutlet weak var checkSwitch: UISwitch!
    
    @IBOutlet weak var allThingStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldDesign(IDTextField, string: "이메일 주소 또는 전화번호")
        IDTextField.keyboardType = .emailAddress
        textFieldDesign(PWTextField, string: "비밀번호")
        PWTextField.isSecureTextEntry = true
        textFieldDesign(nicknameTextField, string: "닉네임")
        textFieldDesign(locationTextField, string: "위치")
        textFieldDesign(referralCodeTextField, string: "추천 코드 입력")
        referralCodeTextField.keyboardType = .numberPad
        
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = 5
        
        moreInformationLabel.text = "추가 정보 입력"
        moreInformationLabel.textColor = .white
        
        checkSwitch.onTintColor = .red
    }
    
    func textFieldDesign(_ target: UITextField!, string: String) {
        target.attributedPlaceholder = NSAttributedString(string: string, attributes: [.foregroundColor : UIColor.white])
        target.textColor = .white
        target.textAlignment = .center
        target.borderStyle = .roundedRect
        target.backgroundColor = .gray
    }
    
    @IBAction func signUpButtonClicked(_ sender: UIButton) {
        view.endEditing(true)
        
        if IDTextField.hasText == false {
            IDTextField.attributedPlaceholder = NSAttributedString(string: "필수 입력란입니다.", attributes: [.foregroundColor : UIColor.red])
        }
        
        if PWTextField.hasText == true {
            if PWTextField.text!.count < 5 {
                PWTextField.text = nil
                PWTextField.attributedPlaceholder = NSAttributedString(string: "6자리 이상 입력해주세요.", attributes: [.foregroundColor : UIColor.red])
            }
        } else {
            PWTextField.attributedPlaceholder = NSAttributedString(string: "필수 입력란입니다.", attributes: [.foregroundColor : UIColor.red])
        }
        
        if let tempNum = referralCodeTextField.text {
            if Int(tempNum) == nil && tempNum.count > 0 {
                referralCodeTextField.text = nil
                referralCodeTextField.attributedPlaceholder = NSAttributedString(string: "숫자만 입력 가능합니다.", attributes: [.foregroundColor : UIColor.red])
            }
        }
    }
    
    @IBAction func checkSwitchClicked(_ sender: UISwitch) {
        
    }
    
    @IBAction func tabGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}
