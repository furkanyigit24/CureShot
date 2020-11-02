//
//  BarCell.swift
//  Urzemi
//
//  Created by Furkan Y. on 2.11.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import UIKit

class BarCell: UICollectionViewCell {
    let startingWeightLabel: UILabel = {
        let label = UILabel()
        label.text = "90"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    let startingWeight: UILabel = {
        let label = UILabel()
        label.text = "Başlangıç Kilonuz"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 8)
        return label
    }()
    let currentWeightLabel: UILabel = {
        let label = UILabel()
        label.text = "86"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    let currentWeight: UILabel = {
        let label = UILabel()
        label.text = "Kilonuz"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 8)
        return label
    }()
    let goalWeightLabel: UILabel = {
        let label = UILabel()
        label.text = "80"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    let goalWeight: UILabel = {
        let label = UILabel()
        label.text = "Hedef Kilonuz"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 8)
        return label
    }()
    let dailyWaterLabel: UILabel = {
        let label = UILabel()
        label.text = "90"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    let dailyWater: UILabel = {
        let label = UILabel()
        label.text = "Günlük Su Tüketiminiz"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 8)
        return label
    }()
    let cheatLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    let cheat: UILabel = {
        let label = UILabel()
        label.text = "Kaçamaklar"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 8)
        return label
    }()
    let circle1: UIView = {
        let x = UIView(frame: CGRect(x: 100,y: 100,width: 60,height: 60))
        return x
    }()
    let circle2: UIView = {
        let x = UIView(frame: CGRect(x: 100,y: 100,width: 60,height: 60))
        return x
    }()
    let circle3: UIView = {
        let x = UIView(frame: CGRect(x: 100,y: 100,width: 60,height: 60))
        return x
    }()
    let circle4: UIView = {
        let x = UIView(frame: CGRect(x: 100,y: 100,width: 60,height: 60))
        return x
    }()
    let circle5: UIView = {
        let x = UIView(frame: CGRect(x: 100,y: 100,width: 60,height: 60))
        return x
    }()
    let progressCircle1: CAShapeLayer = {
        let pc = CAShapeLayer()
        return pc
    }()
    let progressCircle2: CAShapeLayer = {
        let pc = CAShapeLayer()
        return pc
    }()
    let progressCircle3: CAShapeLayer = {
        let pc = CAShapeLayer()
        return pc
    }()
    let progressCircle4: CAShapeLayer = {
        let pc = CAShapeLayer()
        return pc
    }()
    let progressCircle5: CAShapeLayer = {
        let pc = CAShapeLayer()
        return pc
    }()
    let trackLayer1: CAShapeLayer = {
        let pc = CAShapeLayer()
        return pc
    }()
    let trackLayer2: CAShapeLayer = {
        let pc = CAShapeLayer()
        return pc
    }()
    let trackLayer3: CAShapeLayer = {
        let pc = CAShapeLayer()
        return pc
    }()
    let trackLayer4: CAShapeLayer = {
        let pc = CAShapeLayer()
        return pc
    }()
    let trackLayer5: CAShapeLayer = {
        let pc = CAShapeLayer()
        return pc
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(hexString: "#FFFFFF")
        self.layer.borderColor = UIColor(hexString: "#EBD1F4").cgColor
        self.layer.borderWidth = 5
        self.layer.cornerRadius = 20
        
        addSubview(circle1)
        circle1.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 7, paddingLeft: 36, paddingBottom: 0, paddingRight: 0, width: 60, height: 60)
        addSubview(circle2)
        circle2.anchor(top: topAnchor, left: circle1.rightAnchor, bottom: nil, right: nil, paddingTop: 7, paddingLeft: 58, paddingBottom: 0, paddingRight: 0, width: 60, height: 60)
        addSubview(circle3)
        circle3.anchor(top: topAnchor, left: circle2.rightAnchor, bottom: nil, right: nil, paddingTop: 7, paddingLeft: 58, paddingBottom: 0, paddingRight: 0, width: 60, height: 60)
        addSubview(circle4)
        circle4.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 82, paddingLeft: 100, paddingBottom: 0, paddingRight: 0, width: 60, height: 60)
        addSubview(circle5)
        circle5.anchor(top: topAnchor, left: circle4.rightAnchor, bottom: nil, right: nil, paddingTop: 82, paddingLeft: 56, paddingBottom: 0, paddingRight: 0, width: 60, height: 60)
      
        addSubview(startingWeightLabel)
        startingWeightLabel.anchor(top: circle1.topAnchor, left: circle1.leftAnchor, bottom: nil, right: nil, paddingTop: 9, paddingLeft: 6, paddingBottom: 0, paddingRight: 0, width: 48, height: 40)
        addSubview(startingWeight)
        startingWeight.anchor(top: circle1.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 1, paddingLeft: 31, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(currentWeightLabel)
        currentWeightLabel.anchor(top: circle2.topAnchor, left: circle2.leftAnchor, bottom: nil, right: nil, paddingTop: 9, paddingLeft: 6, paddingBottom: 0, paddingRight: 0, width: 48, height: 40)
        addSubview(currentWeight)
        currentWeight.anchor(top: circle2.bottomAnchor, left: startingWeight.rightAnchor, bottom: nil, right: nil, paddingTop: 1, paddingLeft: 69, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(goalWeightLabel)
        goalWeightLabel.anchor(top: circle3.topAnchor, left: circle3.leftAnchor, bottom: nil, right: nil, paddingTop: 9, paddingLeft: 6, paddingBottom: 0, paddingRight: 0, width: 48, height: 40)
        addSubview(goalWeight)
        goalWeight.anchor(top: circle3.bottomAnchor, left: currentWeight.rightAnchor, bottom: nil, right: nil, paddingTop: 1, paddingLeft: 69, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(dailyWaterLabel)
        dailyWaterLabel.anchor(top: circle4.topAnchor, left: circle4.leftAnchor, bottom: nil, right: nil, paddingTop: 9, paddingLeft: 6, paddingBottom: 0, paddingRight: 0, width: 48, height: 40)
        addSubview(dailyWater)
        dailyWater.anchor(top: circle4.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 1, paddingLeft: 88, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(cheatLabel)
        cheatLabel.anchor(top: circle5.topAnchor, left: circle5.leftAnchor, bottom: nil, right: nil, paddingTop: 9, paddingLeft: 6, paddingBottom: 0, paddingRight: 0, width: 48, height: 40)
        addSubview(cheat)
        cheat.anchor(top: circle5.bottomAnchor, left: dailyWater.rightAnchor, bottom: nil, right: nil, paddingTop: 1, paddingLeft: 42, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

        let lineWidth:CGFloat = 10
        let rectFofOval = CGRect(x: lineWidth / 2, y: lineWidth / 2, width: circle1.bounds.width - lineWidth, height: circle1.bounds.height - lineWidth)

        let circlePath = UIBezierPath(ovalIn: rectFofOval)
        
        trackLayer1.path = circlePath.cgPath
        trackLayer1.strokeColor = UIColor(hexString: "#A8FFBC", alpha: 0.3).cgColor
        trackLayer1.fillColor = UIColor.clear.cgColor
        trackLayer1.lineWidth = 5
        trackLayer1.frame = self.bounds
        trackLayer1.lineCap = .round
        
        trackLayer2.path = circlePath.cgPath
        trackLayer2.strokeColor = UIColor(hexString: "#F6FF8D", alpha: 0.3).cgColor
        trackLayer2.fillColor = UIColor.clear.cgColor
        trackLayer2.lineWidth = 5
        trackLayer2.frame = self.bounds
        trackLayer2.lineCap = .round
        
        trackLayer3.path = circlePath.cgPath
        trackLayer3.strokeColor = UIColor(hexString: "#7F8CF3", alpha: 0.3).cgColor
        trackLayer3.fillColor = UIColor.clear.cgColor
        trackLayer3.lineWidth = 5
        trackLayer3.frame = self.bounds
        trackLayer3.lineCap = .round
        
        trackLayer4.path = circlePath.cgPath
        trackLayer4.strokeColor = UIColor(hexString: "#7F8CF3", alpha: 0.3).cgColor
        trackLayer4.fillColor = UIColor.clear.cgColor
        trackLayer4.lineWidth = 5
        trackLayer4.frame = self.bounds
        trackLayer4.lineCap = .round
        
        trackLayer5.path = circlePath.cgPath
        trackLayer5.strokeColor = UIColor(hexString: "#FA0606", alpha: 0.3).cgColor
        trackLayer5.fillColor = UIColor.clear.cgColor
        trackLayer5.lineWidth = 5
        trackLayer5.frame = self.bounds
        trackLayer5.lineCap = .round
        
        progressCircle1.path = circlePath.cgPath
        progressCircle1.strokeColor = UIColor(hexString: "#A8FFBC", alpha: 1).cgColor
        progressCircle1.fillColor = UIColor.clear.cgColor
        progressCircle1.lineWidth = 5
        progressCircle1.frame = self.bounds
        progressCircle1.lineCap = .round
        
        progressCircle2.path = circlePath.cgPath
        progressCircle2.strokeColor = UIColor(hexString: "#F6FF8D", alpha: 1).cgColor
        progressCircle2.fillColor = UIColor.clear.cgColor
        progressCircle2.lineWidth = 5
        progressCircle2.frame = self.bounds
        progressCircle2.lineCap = .round
        
        progressCircle3.path = circlePath.cgPath
        progressCircle3.strokeColor = UIColor(hexString: "#7F8CF3", alpha: 1).cgColor
        progressCircle3.fillColor = UIColor.clear.cgColor
        progressCircle3.lineWidth = 5
        progressCircle3.frame = self.bounds
        progressCircle3.lineCap = .round
        
        progressCircle4.path = circlePath.cgPath
        progressCircle4.strokeColor = UIColor(hexString: "#7F8CF3", alpha: 1).cgColor
        progressCircle4.fillColor = UIColor.clear.cgColor
        progressCircle4.lineWidth = 5
        progressCircle4.frame = self.bounds
        progressCircle4.lineCap = .round
        
        progressCircle5.path = circlePath.cgPath
        progressCircle5.strokeColor = UIColor(hexString: "#FA0606", alpha: 0.3).cgColor
        progressCircle5.fillColor = UIColor.clear.cgColor
        progressCircle5.lineWidth = 5
        progressCircle5.frame = self.bounds
        progressCircle5.lineCap = .round

        circle1.layer.addSublayer(trackLayer1)
        circle1.layer.addSublayer(progressCircle1)
        circle1.transform = circle1.transform.rotated(by: CGFloat(-M_PI_2))
        
        circle2.layer.addSublayer(trackLayer2)
        circle2.layer.addSublayer(progressCircle2)
        circle2.transform = circle2.transform.rotated(by: CGFloat(-M_PI_2))
        
        circle3.layer.addSublayer(trackLayer3)
        circle3.layer.addSublayer(progressCircle3)
        circle3.transform = circle3.transform.rotated(by: CGFloat(-M_PI_2))
        
        circle4.layer.addSublayer(trackLayer4)
        circle4.layer.addSublayer(progressCircle4)
        circle4.transform = circle4.transform.rotated(by: CGFloat(-M_PI_2))
        
        circle5.layer.addSublayer(trackLayer5)
        circle5.layer.addSublayer(progressCircle5)
        circle5.transform = circle5.transform.rotated(by: CGFloat(-M_PI_2))

        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 1.2
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)

        progressCircle1.add(animation, forKey: nil)
        progressCircle2.add(animation, forKey: nil)
        progressCircle3.add(animation, forKey: nil)
        progressCircle4.add(animation, forKey: nil)
        progressCircle5.add(animation, forKey: nil)

    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
