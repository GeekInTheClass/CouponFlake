//
//  CouponModel.swift
//  Prac
//
//  Created by user on 2018. 1. 23..
//  Copyright © 2018년 KES. All rights reserved.
//

import Foundation
import UIKit

class Team{
    let storeName: String
    let mark: UIImage
    let menu: String
    
    init (storeName: String, mark: UIImage, menu: String){
        self.storeName = storeName
        self.mark = mark
        self.menu = menu
    }
}
class storeModel{
    var arrayList:[Team] = []
    
    init(){
        let team = Team(storeName: "지지고", mark: UIImage.init(named:"Ggo")!, menu: "ItalianBLT_set")
        
        self.arrayList.append(team)
        self.arrayList.append(Team(storeName: "달볶이", mark: UIImage.init(named:"Moon")!, menu: "떡볶이, 순대 세트"))
        self.arrayList.append(Team(storeName: "서브웨이", mark: UIImage.init(named:"subway")!, menu: "1단계 라이스 치즈추가"))
        self.arrayList.append(Team(storeName: "본솔", mark: UIImage.init(named:"Bonsol")!, menu: "1500원권"))
        self.arrayList.append(Team(storeName: "아리랑", mark: UIImage.init(named:"아리랑")!, menu: "연어컵밥"))
        self.arrayList.append(Team(storeName: "버스컵", mark: UIImage.init(named:"busKup")!, menu: "포테이토 오리지널"))
        self.arrayList.append(Team(storeName: "마시그레이", mark: UIImage.init(named:"subway")!, menu: "2000원권"))
        
    }
}
