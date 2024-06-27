//
//  AppButton.swift
//  Apple-Framework
//
//  Created by Sandalu Thushan on 2567-06-27.
//

import SwiftUI

struct AppButton: View {
    var title :String
    

    
    var body: some View {
        
        
        
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .frame(width: 280,height: 50)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

#Preview {
    AppButton(title: "Learn more")
}
