//
//  main.swift
//  InheritanceExample
//
//  Created by 조진규 on 2017. 1. 5..
//  Copyright © 2017년 조진규. All rights reserved.
//

import Foundation

class ShapePoint : NSObject{
    var starx : Int;
    var stary : Int;
    
    init(starx:Int , stary:Int){
        self.starx = starx;
        self.stary = stary;
        
        super.init();
    }
    
    convenience override init(){
        self.init(starx : 0,stary : 0);
    }
    
    func getArea()->Int{
        return 0;
    }
}

class Rectangle : ShapePoint{
    var endx : Int;
    var endy : Int;
    var width : Int;
    var height : Int;
    
    init(endx : Int, endy : Int , width : Int, height : Int){
        self.endx = endx;
        self.endy = endy;
        self.width = width;
        self.height = height;
        
        super.init(starx:0,stary:0);
    }
    
    func getWidthAndHeight(){
        width = endy - stary;
        height = endx - starx;
    }
    
    override func getArea()->Int{
        let area = height * width;
        return area;
    }
}

class Square : ShapePoint{
    var endx : Int;
    var endy : Int;
    var widthAndHeight : Int;
    
    init(endx : Int, endy : Int, widthAndHeight : Int){
        self.endx = endx;
        self.endy = endy;
        self.widthAndHeight = widthAndHeight;
    
        super.init(starx : 0 , stary : 0);
    }
    
    func getWidthAndHeight(){
        let width = endy - stary;
        let height = endx - starx;
        
        if(width <= height){
            widthAndHeight = width;
        } else {
            widthAndHeight = height;
        }
    }
    
    override func getArea()->Int{
        let area = Int(pow(Double(widthAndHeight),Double(2)));
        return area;
    }
}

let rect = Rectangle(endx:0 , endy:0 , width:0 , height:0);
rect.starx = 0;
rect.stary = 0;
rect.endx = 10;
rect.endy = 15;
rect.getWidthAndHeight();
print("너비 : \(rect.width) , 높이 \(rect.height)");
print("직사각형 면적 : \(rect.getArea())");

let square = Square(endx:0 , endy:0 , widthAndHeight:0)
square.starx = 0;
square.stary = 0;
square.endx = 14;
square.endy = 14;
square.getWidthAndHeight();
print("너비 : \(square.widthAndHeight) , 높이 \(square.widthAndHeight)");
print("정사각형 면적 : \(square.getArea())");



