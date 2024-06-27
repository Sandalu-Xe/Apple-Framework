//
//  ContentView.swift
//  Apple-Framework
//
//  Created by Sandalu Thushan on 2567-06-27.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewmodel = FrameworkGridVModel()
    
    
        // grid creating
    let colomns:[GridItem]=[
        
        //three coloms add
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns:colomns){
                    //framework
                    ForEach(MockData.frameworks )  { framework in
                        FrameworktitleView(frame: framework)
                        //when tap
                            .onTapGesture {
                                //pass the details view for selected one 
                                
                                viewmodel.selectedframework = framework
                        }
                    }
                    
                  
            
                
            }
      
            }
            .navigationTitle("apple frame works")
            //load details view any
            .sheet(isPresented: $viewmodel.isshowingdetails){
                frameworkdetailsSwiftUIView(framew:viewmodel.selectedframework ??
                                            MockData.sampleFramework,isshowingdetails: $viewmodel.isshowingdetails)
            }
 
            
        }
        
        
    }
}


#Preview {
     ContentView()
}




struct FrameworktitleView: View {
   
    let frame:Framework
    
    
    var body: some View {
        VStack {
            Image(frame.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 90,height: 90)
            Text(frame.name)
                .fontWeight(.semibold)
                .font(.title3)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
            
            
        }
        .padding()
    }
}
