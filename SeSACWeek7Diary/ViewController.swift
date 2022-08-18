//
//  ViewController.swift
//  SeSACWeek7Diary
//
//  Created by 조제 on 2022/08/16.
//

import UIKit
import SeSACUIFramework


class ViewController: UIViewController {

    var name = "고래밥"
    
    private var age = 22
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let vc = KakaoViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: false)
        
//        showSesacAlert(title: "테스트 얼럿", message: "텍스트 메시지", buttonTitle: "변경") { _ in
//            self.view.backgroundColor = .lightGray
//        }
        
        testOpen()
        
//        let image = UIImage(systemName: "star.fill")!
//        let shareURL = "https://www.apple.com"
//        let text = "WWDC what's New!!!"
//        sesacShowActivityViewController(shareImage: image, shareURL: shareURL, shareText: text)
        
        OpenWebView.presentWebViewController(self, url: "https://www.naver.com", transitionStyle: .present)
    }
}

