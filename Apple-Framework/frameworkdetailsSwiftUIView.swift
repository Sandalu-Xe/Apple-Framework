//
//  frameworkdetailsSwiftUIView.swift
//  Apple-Framework
//
//  Created by Sandalu Thushan on 2567-06-27.
//

import SwiftUI

struct frameworkdetailsSwiftUIView: View {
    
    var framew:Framework
 
    @Binding var  isshowingdetails  : Bool
    
    var body: some View {
        VStack{
           
            HStack{
                Spacer()
                Button(action: {
                    isshowingdetails = false
             
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large )
                        .frame(width: 44 ,height: 44)
                })
            
            }
            .padding()
          
            
            Spacer()
            FrameworktitleView(frame: framew)
            Text(framew.description)
                .font(.body)
                .padding()
            Spacer()
            Text(framew.design)
                .font(.title2)
                .foregroundStyle(Color.blue)
                .fontWeight(.bold)
            
                
            
            Button(action: {
                
            }, label: {
                AppButton(title: "Learn more")
                
             
                    

            })
        }
    }
}

#Preview {
    frameworkdetailsSwiftUIView(framew: MockData.sampleFramework, isshowingdetails:
            .constant(false))
}

