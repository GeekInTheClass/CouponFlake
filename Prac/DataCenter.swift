//
//  DataCenter.swift
//  Prac
//
//  Created by user on 2018. 1. 22..
//  Copyright © 2018년 KES. All rights reserved.
//

import UIKit
import Foundation



class DataCenter: NSObject {
    

    
    
    class Coupon {
        let marketName : String
        let productName : String
        let dueDay : Date
        var etc : [String]?
        let barCode : [UIImage]
        
        init(marketName:String, productName:String, dueDay:Date, barCode:[UIImage]){
            self.marketName = marketName
            self.productName = productName
            self.dueDay = dueDay
            self.barCode = barCode
        }
    }
    
    
    
    class Posting {
        let posterName : String
        let coupon : [Coupon]
        let desc : String
        var comment : [String]?
        
        init(posterName:String, coupon:[Coupon], desc:String){
            self.posterName = posterName
            self.coupon = coupon
            self.desc = desc
        }
    }
    
    
    
    class AccountInfo {
        let accountNum : String
        let bank : [String]
        
        init(accountNum:String, bank:[String])
        {
            self.accountNum = accountNum
            self.bank = bank
        }
    }
    
    
    
    class Alarm {
        let onOff : Bool
        var alarmDate : Int?
        
        init(onOff:Bool){
            self.onOff = onOff
        }
    }
    
    class MyInfo {
        let name : String
        let idNum : Int
        let nickName : String
        var accountInfo : [AccountInfo]?
        let alarm : [Alarm]
        var posting : [Posting]?
        var myCoupon : [Coupon]?
        
        
        init(name:String, idNum:Int, nickName:String, alarm:[Alarm]){
            self.name = name
            self.idNum = idNum
            self.nickName = nickName
            self.alarm = alarm
        }
    }
    
    
    

    
    let couponSubway = Coupon(marketName: "Subway",
                              productName: "ItalianBLT_set",
                              dueDay: Date(),
                              barCode: [UIImage.init(named : "barCode1")!])
    couponSubway.etc = ["set includes drink"]
    
    let couponGgo = Coupon(marketName: "Ggo",
                           productName: "1단계 라이스 치즈추가",
                           dueDay: Date(),
                           barCode: [UIImage.init(named: "barCode2")!])
    
    let couponBonsol = Coupon(marketName: "Bonsol",
                              productName: "1500원권",
                              dueDay: Date(),
                              barCode: [UIImage.init(named: "barCode3")!])
    
    let couponArirang = Coupon(marketName: "Arirang",
                               productName: "연어컵밥",
                               dueDay: Date(),
                               barCode: [UIImage.init(named: "barCode4")!])
    
    
    
    
    let posting1 = Posting(posterName: "눈송쓰",
                           coupon: [couponSubway],
                           desc: "지방에 내려가서 팔아요! 4처넌!!")
    posting1.comment = ["선입쿨거 가능해요 쪽지주세요", "헐 삼대 몽둥이!! 줄이요"]
    let posting2 = Posting(posterName: "눈송쓰",
                           coupon: [couponBonsol],
                           desc: "선입급 쿨거 바람. 1300원")
    
    let posting3 = Posting(posterName: "월짖개",
                           coupon: [couponGgo],
                           desc: "지지고 누들에 치즈추가요~~ 2천원에 팔아요! 지멘지멘~")
    posting3.comment = ["월짖개 요즘에 왜 안짖어요ㅋㅋㅋㅋ", "오 월짖개 실시간!", "저 사고 싶어요!", "줄이요"]
    
    
    
    
    let alarm눈송쓰 = Alarm(onOff: true)
    alarm눈송쓰.alarmDate = 3
    let alarm월짖개 = Alarm(onOff: true)
    alarm월짖개.alarmDate = 7
    let alarm눈송눈송 = Alarm(onOff: false)
    
    
    let accountInfo1 = AccountInfo (accountNum : "111111111111",
                                    bank : ["신한은행"])
    let accountInfo2 = AccountInfo (accountNum : "222222222222",
                                    bank : ["우리은행"])
    let accountInfo3 = AccountInfo (accountNum : "333333333333",
                                    bank : ["국민은행"])
    
    let myInfo1 =  MyInfo( name : "고은서",
                           idNum : 1711111,
                           nickName : "눈송쓰",
                           alarm : [alarm눈송쓰])
    
    myInfo1.accountInfo = [accountInfo1]
    myInfo1.posting = [posting1, posting2]
    myInfo1.myCoupon = [couponSubway, couponBonsol]
    
    let myInfo2 = MyInfo( name : "정연수",
                          idNum : 1722222,
                          nickName : "월짖개",
                          alarm : [alarm월짖개])
    myInfo2.accountInfo = [accountInfo2]
    myInfo2.posting = [posting3]
    myInfo2.myCoupon = [couponGgo]
    
    let myInfo3 = MyInfo( name : "김눈송",
                          idNum : 1733333,
                          nickName : "눈송눈송",
                          alarm : [alarm눈송눈송])
    myInfo3.accountInfo = [accountInfo3]
    myInfo3.myCoupon = [couponArirang]
    

    

}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


