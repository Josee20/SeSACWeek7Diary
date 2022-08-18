//
//  CodeSnap2ViewController.swift
//  SeSACWeek7Diary
//
//  Created by 이동기 on 2022/08/17.
//

import UIKit
import SnapKit

class CodeSnap2ViewController: UIViewController {

    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        [redView, blackView].forEach {
            view.addSubview($0)
        }
        
        // 블랙뷰 안에 옐로우 뷰를 넣으려면, 레드뷰안에 블랙뷰가 있지만 사실 그렇지 않음
        
        redView.addSubview(yellowView)
        // containerView, stackView => 
        
        redView.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
        }
        
        blackView.snp.makeConstraints { make in
            make.edges.equalTo(redView).inset(50) // .offset(50)
        }
    }
}


