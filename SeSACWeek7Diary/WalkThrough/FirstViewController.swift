//
//  FirstViewController.swift
//  SeSACWeek7Diary
//
//  Created by 이동기 on 2022/08/16.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var starImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorialLabel.alpha = 0
        tutorialLabel.numberOfLines = 0
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        
        tutorialLabel.text = """
        일기 씁시다!
        잘 써봅시다!
        """
        
        blackView.backgroundColor = .black
        blackView.alpha = 0
        
        starImageView.image = UIImage(systemName: "star.fill")
        
        
        UIView.animate(withDuration: 0.5) {
            self.tutorialLabel.alpha = 1
            self.tutorialLabel.backgroundColor = .yellow
        } completion: { _ in
            self.animateBlackView()
            self.animateImageView()
        }
    }
    
    func animateBlackView() {
        UIView.animate(withDuration: 1) {
            self.blackView.transform = CGAffineTransform(scaleX: 3, y: 1)
            self.blackView.alpha = 1
            
        } completion: { _ in
            
        }

    }
    
    func animateImageView() {
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
            self.starImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        } completion: { _ in
            
        }
    }
}
