//
//  main.swift
//  ClassInitExample
//
//  Created by 조진규 on 2017. 1. 3..
//  Copyright © 2017년 조진규. All rights reserved.
//

import Foundation
/*
class MyLight : NSObject{
//클래스 선언은 class 클래스 이름 : 부모 클래스 이름{} 으로 선언한다
    var status : Bool;
    var lightcolor : String;
    
    init(status : Bool,lightcolor:String){
        self.status = status;
        self.lightcolor = lightcolor
        
        super.init();
    }
    //init(변수이름 : 타입) 메소드는 변수를 초기화 하기 위한 메소드 이다. 반드시 작성하여야만 한다.
    //self의 경우 php에서도 나오듯 자기 자신의 변수를 사용하기 위한 것이다.
    
    convenience override init(){
        self.init(status : false , lightcolor : "white");
    }
    //convenience init()메소드는 init()을 호출하는 메소드이며 파라메타 없이 클래스 객체를 생성할 때 호출 된다.
    
    
    func turnOnLight(){
        self.status = true;
    }
    
    
    func turnOffLight(){
        self.status = false;
    }
    
    func lightStatus(){
        if(self.status){
            print("Light is On.");
            self.printLightColor();
        } else {
            print("Light is Off");
        }
    }
    
    func printLightColor(){
        print("Light COlor : \(lightcolor)");
    }
}

let lightOn = MyLight();
lightOn.turnOnLight();
lightOn.lightStatus();

let lightOff = MyLight();
lightOff.turnOffLight();
lightOff.lightStatus();
*/

class MyLight : NSObject{
    var status : Bool;
    var lightcolor : String;
    
    init(status : Bool,lightcolor:String){
        self.status = status;
        self.lightcolor = lightcolor
        
        super.init();
    }
    
    convenience override init(){
        self.init(status : false , lightcolor : "white");
    }
    
    
    func turnLight(){
        self.status = !self.status;
    }
    
    
    func lightStatus(){
        if(self.status){
            print("Light is On.");
            self.printLightColor();
        } else {
            print("Light is Off");
        }
    }
    
    func printLightColor(){
        print("Light Color : \(lightcolor)");
    }
}

let light = MyLight();
light.turnLight();
light.lightStatus();
light.turnLight();
light.lightStatus();
