//
//  ContentView.swift
//  todolist
//
//  Created by mdsami on 4/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue,Color("lightblue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                
                Text("Saidpur ,BD")
                    .font(.system(size: 32, weight:.medium, design: .default))
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .padding()
                    
                
                VStack(spacing:10 ){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 180, height: 180)
                 }
                Text("60°")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundColor(.white)
                
                
                    .padding(.bottom,40)
                
                HStack(spacing:20){
                    
                    WeatherdayView(dayOfWeek:"SUN",
                                   imageName:"cloud.rain.fill",
                                   temperature:25)
                    WeatherdayView(dayOfWeek:"MON",
                                   imageName:"cloud.sun.fill",
                                   temperature:35)
                    WeatherdayView(dayOfWeek:"TUE",
                                   imageName:"cloud.sun.rain.fill",
                                   temperature:27)
                    WeatherdayView(dayOfWeek:"WED",
                                   imageName:"smoke.fill",
                                   temperature:20)
                    WeatherdayView(dayOfWeek:"THU",
                                   imageName:"cloud.hail.fill",
                                   temperature:27)
            
                }
                Spacer()
                   
       }
       
     }
   }
}
 


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherdayView: View {
    
    var dayOfWeek:String
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size:16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
