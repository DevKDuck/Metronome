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
        btn.addTarget(self, action: #selector(tapPlayStopButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    @objc func tapPlayStopButton(_ sender: UIButton){
        //플레이 버튼은 눌렀을 경우
        print("Play / Stop Button Tap!!!")
    }
    
    func setLayoutPlayStopButton(){
        view.addSubview(playStopButton)
        playStopButton.translatesAutoresizingMaskIntoConstraints = false
        
        playStopButton.snp.makeConstraints({ btn in
            btn.centerX.equalToSuperview()
            btn.width.equalTo(view.bounds.width * 0.8)
            btn.height.equalTo(view.bounds.height / 12)
            btn.bottom.equalTo(view.safeAreaLayoutGuide).offset(-50)
        })
    }
    
    
    lazy var increaseBMPButton: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "plus.circle"), for: .normal)
        btn.tintColor = .systemBlue
        
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(tapIncreaseBMPButton(_:)), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    @objc func tapIncreaseBMPButton(_ sender: UIButton){
        
    }
    
    lazy var decreaseBMPButton: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "minus.circle"), for: .normal)
        btn.tintColor = .systemBlue
        
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(tapDecreaseBMPButton(_:)), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    @objc func tapDecreaseBMPButton(_ sender: UIButton){
        
    }
    
    //MARK: BPM 라벨
    let bPMLabel: UILabel = {
        let label = UILabel()
        label.text = "100"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.font = UIFont(name: "Menlo", size: 50)
        label.textAlignment = .center
        label.textColor = .darkGray
        return label
    }()
    
    lazy var playBackControlStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
//        stackView.spacing = 8
        return stackView
    }()
    
    func setCompositionStackView(){
        
        decreaseBMPButton.snp.makeConstraints{make in 
            make.height.equalTo(view.bounds.height / 10)
            make.width.equalTo(view.bounds.width / 10)
        }
        
        increaseBMPButton.snp.makeConstraints{make in
            make.height.equalTo(view.bounds.height / 10)
            make.width.equalTo(view.bounds.width / 10)
        }
        view.addSubview(playBackControlStackView)
        playBackControlStackView.addArrangedSubview(decreaseBMPButton)
        playBackControlStackView.addArrangedSubview(bPMLabel)
        playBackControlStackView.addArrangedSubview(increaseBMPButton)
        
        playBackControlStackView.snp.makeConstraints({ make in
            make.centerX.equalToSuperview()
            make.width.equalTo(view.bounds.width * 0.8)
            make.height.equalTo(view.bounds.height / 10)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(view.bounds.height * 0.4)
        })
    }
    
    
   
    
    

    
    
    
    //MARK: UI기능별 실행
    
    func setUI(){
        setLayoutButton()
        setLayoutLabel()
        setLayoutStackView()
    }
    
    func setLayoutButton(){
        setLayoutPlayStopButton()
    }
    
    func setLayoutLabel(){
    }
    
    func setLayoutStackView(){
        setCompositionStackView()
    }
    
    
    
    //MARK: Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setNavigationBarTitle()
        setLeftNavigationItem()
        setRightNavigationItem()
        view.backgroundColor = .white
        setUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
}

