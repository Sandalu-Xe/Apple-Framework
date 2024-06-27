//
//  FrameworkGridVModel.swift
//  Apple-Framework
//
//  Created by Sandalu Thushan on 2567-06-27.
//


import SwiftUI

final class FrameworkGridVModel:ObservableObject{
    var selectedframework : Framework?{
        didSet{
            isshowingdetails=true
        }
    }
    
    @Published var isshowingdetails=false
   
}
