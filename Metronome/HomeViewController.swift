//
//  ViewController.swift
//  Metronome
//
//  Created by duck on 2024/01/11.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    //MARK: 네비게이션 바 설정
    func setNavigationBarTitle(){
        //이미지로 추후 변경
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.topItem?.title = "Metoronome"
        self.navigationController?.navigationBar.tintColor = .darkGray

    }
    
    func setLeftNavigationItem(){
        let leftItem = UIBarButtonItem(title: "Setting", image: UIImage(systemName: "gear"), target: self, action: #selector(tapLeftNavigationItem(_:)))
        self.navigationItem.leftBarButtonItem = leftItem
    }
    
    func setRightNavigationItem(){
        let rightItem = UIBarButtonItem(title: "List", image: UIImage(systemName: "music.note.list"), target: self, action: #selector(tapRightNavigationItem(_:)))
        self.navigationItem.rightBarButtonItem = rightItem
    }
    
    @objc func tapRightNavigationItem(_ sender: UIButton){
        
    }
    
    
    @objc func tapLeftNavigationItem(_ sender: UIButton){
        
    }
    
    
    
    //MARK: 실행 버튼
    
    lazy var playStopButton: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "play.fill"), for: .normal)
        btn.tintColor = .white
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = 30
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    func setLayoutPlayStopButton(){
        view.addSubview(playStopButton)
        
        playStopButton.snp.makeConstraints({ btn in
            btn.centerX.equalToSuperview()
            btn.width.equalTo(view.bounds.width * 0.8)
            btn.height.equalTo(view.bounds.height / 12)
            btn.bottom.equalTo(view.safeAreaLayoutGuide).offset(-20)
        })
        
        
    }
    
    func setLayoutButton(){
        setLayoutPlayStopButton()
    }
    
    
    //MARK: Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setNavigationBarTitle()
        setLeftNavigationItem()
        setRightNavigationItem()
        view.backgroundColor = .white
        
        setLayoutButton()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
}

