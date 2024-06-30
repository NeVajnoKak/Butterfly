//
//  ButterflyWelcome.swift
//  Butterfly
//
//  Created by Erkebulan Massainov on 29.06.2024.
//

import SwiftUI

struct ButterflyWelcome: View {
    
    
    var body: some View {
        NavigationView{
            VStack {
                VStack{
                    Text("Welcome to Butterfly!")
                        .font(.system(size: 30))
                        .padding(.top,56)
                    
                    ZStack{
                        Text(getGreeting())
                            .zIndex(1)
                            .padding(.bottom,250)
                            .font(.system(size: 30))
                        
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 400, height: 400)
                            .foregroundColor(.white)
                            .cornerRadius(500)
                        
                        Image(.butterflyTheBlueButterflyButterflyTransparentBackgroundAiGeneratedPng)
                            .resizable()
                            .frame(width: 300,height: 300)
                    }
                    
                    
                    Spacer()
                }
//                NavigationLink(destination: ButterflyCollection()){
//                    VStack{
//                        Image(systemName: "arrow.right")
//                            .frame(width: 100, height: 100)
//                            .background(Color(red: 0.28, green: 0.69, blue: 1))
//                            .font(.system(size: 50))
//                            .cornerRadius(300)
//                            .foregroundColor(.white)
//                            
//                    }
//                    .frame(maxWidth: .infinity, alignment: .trailing)
//                    .padding([.trailing,.bottom], 56)
//                }
                
                
                
            }
            .edgesIgnoringSafeArea(.all)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.75, green: 0.76, blue: 1))
        }
    }
}
    
    


func getGreeting() -> String {
    let date = Date()
    let components = Calendar.current.dateComponents([.hour, .minute], from: date)
    let hour = components.hour ?? 0
    let minute = components.minute ?? 0
    return "Good day \(hour):\(minute)"
}

#Preview {
    ButterflyWelcome()
}
