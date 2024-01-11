//
//  ViewController.swift
//  Metronome
//
//  Created by duck on 2024/01/11.
//

import UIKit

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
        return btn
    }()
    
    
    //MARK: Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setNavigationBarTitle()
        setLeftNavigationItem()
        setRightNavigationItem()
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
}

