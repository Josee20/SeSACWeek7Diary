//
//  KaKaoViewController.swift
//  SeSACWeek7Diary
//
//  Created by 이동기 on 2022/08/17.
//

import UIKit
import SnapKit

class KakaoViewController: UIViewController {

    let cancelBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        return button
    }()
    
    let presentBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "shippingbox"), for: .normal)
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blue.cgColor
        return button
    }()
    
    let diceBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "dice"), for: .normal)
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blue.cgColor
        return button
    }()
    
    let setBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "gearshape"), for: .normal)
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blue.cgColor
        return button
    }()
    
    let profileImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person.fill")
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "이동기"
        return label
    }()
    
    let introduceLabel: UILabel = {
        let label = UILabel()

        label.textAlignment = .center
        label.text = "즐거운 코딩..."
        label.font = .systemFont(ofSize: 10)
        return label
    }()
    
    let line: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    let chatBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "message.fill"), for: .normal)
        return button
    }()
    
    let editProfileBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "pencil"), for: .normal)
        return button
    }()
    
    let kakaoStoryBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "drop.fill"), for: .normal)
        return button
    }()
    
    let chatLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 10)
        label.textAlignment = .center
        label.text = "나와의 채팅"
        return label
    }()
    
    let editProfileLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 10)
        label.textAlignment = .center
        label.text = "프로필 편집"
        return label
    }()
    
    let kakaoStoryLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 10)
        label.textAlignment = .center
        label.text = "카카오스토리"
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSubview()
        configureUI()
        
    }
    
    func addSubview() {
        [cancelBtn, presentBtn, diceBtn, setBtn, profileImage, nameLabel, introduceLabel, line,  chatBtn, editProfileBtn, kakaoStoryBtn, chatLabel, editProfileLabel, kakaoStoryLabel] .forEach {
            view.addSubview($0)
        }
    }

    func configureUI() {
        
        cancelBtn.snp.makeConstraints { make in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.leading.equalTo(20)
            make.topMargin.equalTo(20)
        }
        
        setBtn.snp.makeConstraints { make in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.trailingMargin.equalTo(-20)
            make.topMargin.equalTo(20)
        }
        
        diceBtn.snp.makeConstraints { make in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.trailingMargin.equalTo(setBtn.snp.trailingMargin).offset(-40)
            make.topMargin.equalTo(20)
        }
        
        presentBtn.snp.makeConstraints { make in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.trailingMargin.equalTo(diceBtn.snp.trailingMargin).offset(-40)
            make.topMargin.equalTo(20)
        }
        
        profileImage.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(80)
            make.centerX.equalTo(UIScreen.main.bounds.width / 2)
            make.centerY.equalTo(UIScreen.main.bounds.height * 2 / 3)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width / 2)
            make.height.equalTo(20)
            make.topMargin.equalTo(profileImage.snp.bottom).offset(10)
            make.centerX.equalTo(profileImage)
            
        }
        
        introduceLabel.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width / 2)
            make.height.equalTo(10)
            make.topMargin.equalTo(nameLabel.snp.bottom).offset(20)
            make.centerX.equalTo(nameLabel)
        }
        
        line.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(1)
            make.topMargin.equalTo(introduceLabel.snp.bottom).offset(40)
        }
        
        editProfileBtn.snp.makeConstraints { make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.topMargin.equalTo(line.snp.bottom).offset(50)
            make.centerX.equalTo(UIScreen.main.bounds.width / 2)
        }
        
        chatBtn.snp.makeConstraints { make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.topMargin.equalTo(line.snp.bottom).offset(50)
            make.trailingMargin.equalTo(editProfileBtn.snp.leading).offset(-40)
        }
        
        kakaoStoryBtn.snp.makeConstraints { make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.topMargin.equalTo(line.snp.bottom).offset(50)
            make.leadingMargin.equalTo(editProfileBtn.snp.trailing).offset(40)
        }
        
        editProfileLabel.snp.makeConstraints { make in
            make.width.equalTo(60)
            make.height.equalTo(10)
            make.topMargin.equalTo(editProfileBtn.snp.bottom).offset(20)
            make.centerX.equalTo(editProfileBtn)
        }
        
        chatLabel.snp.makeConstraints { make in
            make.width.equalTo(60)
            make.height.equalTo(10)
            make.topMargin.equalTo(chatBtn.snp.bottom).offset(20)
            make.centerX.equalTo(chatBtn)
        }
        
        kakaoStoryLabel.snp.makeConstraints { make in
            make.width.equalTo(60)
            make.height.equalTo(10)
            make.topMargin.equalTo(kakaoStoryBtn.snp.bottom).offset(20)
            make.centerX.equalTo(kakaoStoryBtn)
        }
    }
    
    func topBtnStyle() {
        let button = UIButton()
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blue.cgColor
    }
    
}


