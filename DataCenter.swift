//
//  DataCenter.swift
//  Prac
//
//  Created by user on 2018. 1. 22..
//  Copyright © 2018년 KES. All rights reserved.
//

import UIKit
import Foundation


let dataCenter = DataCenter()

class DataCenter: NSObject {

    var coupons:[Coupon] = []
    var alarms:[Alarm] = []
    var accounts:[AccountInfo] = []
    var personalInfo:[MyInfo] = []
    
    let calendar = Calendar(identifier: .gregorian)             //날짜지정을 위한 변수 설정
    
    
    override init(){
        super.init()
        coupons = createCouponDummy()
        alarms = createAlarmDummy()
        accounts = createAccountDummy()
        personalInfo = createPersonalDummy()
    }
    
    class Coupon {
        let marketName : String
        let productName : String
        var photo : [UIImage]
        let dueDay : Date
        var etc : [String]?
        let barCode : [UIImage]
        var activation : Int
        
        init(marketName:String, productName:String, photo:[UIImage], dueDay:Date, barCode:[UIImage], activation:Int){
            self.marketName = marketName
            self.productName = productName
            self.photo = photo
            self.dueDay = dueDay
            self.barCode = barCode
            self.activation = activation
        }
    }
    
    
    
    class AccountInfo {
        let accountNum : String
        let bank : [String]
        
        init(accountNum:String, bank:[String]){
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
        //    var posting : [Posting]?
        var myCoupon : [Coupon]?
        
        
        init(name:String, idNum:Int, nickName:String, alarm:[Alarm]){
            self.name = name
            self.idNum = idNum
            self.nickName = nickName
            self.alarm = alarm
        }
    }
    
    
    
    func createCouponDummy() -> [Coupon]{
    
        let couponSubway = Coupon(marketName: "Subway",
                                  productName: "ItalianBLT_set",
                                  photo: [UIImage.init(named : "subway.png")!],
                                  dueDay: Date(),
                                  barCode: [UIImage.init(named : "barCode1")!],
                                  activation : 0)
        couponSubway.etc = ["set includes drink"]
        
    
        let couponGgo = Coupon(marketName: "Ggo",
                               productName: "1단계 라이스 치즈추가",
                               photo: [UIImage.init(named : "Ggo.png")!],
                               dueDay: Date(),
                               barCode: [UIImage.init(named: "barCode2")!],
                               activation : 0)
    
        let couponBonsol = Coupon(marketName: "Bonsol",
                                  productName: "1500원권",
                                  photo: [UIImage.init(named : "Bonsol.png")!],
                                  dueDay: Date(),
                                  barCode: [UIImage.init(named: "barCode3")!],
                                  activation : 0)
    
        let couponArirang = Coupon(marketName: "Arirang",
                                   productName: "연어컵밥",
                                   photo: [UIImage.init(named : "아리랑.png")!],
                                   dueDay: Date(),
                                   barCode: [UIImage.init(named: "barCode4")!],
                                   activation : 0)
        
        let couponMasi = Coupon(marketName: "MasiGray",
                                productName: "2000원권",
                                photo: [UIImage.init(named : "Masi.png")!],
                                dueDay: calendar.date(from: DateComponents(year: 2018, month: 1, day: 10))!,
                                barCode: [UIImage.init(named: "barCode4")!],
                                activation: 1)
        
        let couponbuskup = Coupon(marketName: "버스컵떡볶이",
                                  productName: "포테이토 오리지널",
                                  photo: [UIImage.init(named : "busKup.png")!],
                                  dueDay: Date(),
                                  barCode: [UIImage.init(named: "barCode4")!],
                                  activation: 2)
        
        let couponMoon = Coupon(marketName: "달볶이",
                                productName: "떡볶이, 순대 세트",
                                photo: [UIImage.init(named : "Moon.png")!],
                                dueDay: calendar.date(from: DateComponents(year: 2018, month: 1, day: 19))!,
                                barCode: [UIImage.init(named: "barCode4")!],
                                activation: 1)
    
        return [couponSubway, couponGgo, couponBonsol, couponArirang, couponMasi, couponbuskup, couponMoon]
    
    }
    
    func createAlarmDummy() -> [Alarm]{
        
        let alarm눈송쓰 = Alarm(onOff: true)
        alarm눈송쓰.alarmDate = 3
        let alarm월짖개 = Alarm(onOff: true)
        alarm월짖개.alarmDate = 7
        let alarm눈송눈송 = Alarm(onOff: false)
    
        return [alarm눈송쓰, alarm월짖개, alarm눈송눈송]
    }
    
    func createAccountDummy() -> [AccountInfo]{
        
        let accountInfo1 = AccountInfo (accountNum : "111111111111",
                                    bank : ["신한은행"])
        let accountInfo2 = AccountInfo (accountNum : "222222222222",
                                    bank : ["우리은행"])
        let accountInfo3 = AccountInfo (accountNum : "333333333333",
                                    bank : ["국민은행"])
        
        return [accountInfo1, accountInfo2, accountInfo3]
    }
    
    func createPersonalDummy() -> [MyInfo]{

        let myInfo1 =  MyInfo( name : "고은서",
                               idNum : 1711111,
                               nickName : "눈송쓰",
                               alarm : [alarms[0]])
    
        myInfo1.accountInfo = [accounts[0]]
        //myInfo1.posting = [posting1, posting2]
        myInfo1.myCoupon = [coupons[0], coupons[1], coupons[4]]
    
        let myInfo2 = MyInfo( name : "정연수",
                              idNum : 1722222,
                              nickName : "월짖개",
                              alarm : [alarms[1]])
        myInfo2.accountInfo = [accounts[1]]
        //myInfo2.posting = [posting3]
        myInfo2.myCoupon = [coupons[2], coupons[5]]
    
        let myInfo3 = MyInfo( name : "김눈송",
                              idNum : 1733333,
                              nickName : "눈송눈송",
                              alarm : [alarms[2]])
        myInfo3.accountInfo = [accounts[2]]
        myInfo3.myCoupon = [coupons[3], coupons[6]]
    
        return [myInfo1, myInfo2, myInfo3]
    }
}
