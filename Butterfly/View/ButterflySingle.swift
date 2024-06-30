//
//  ButterflySingle.swift
//  Butterfly
//
//  Created by Erkebulan Massainov on 29.06.2024.
//

import SwiftUI

struct ButterflySingle: View {
//    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var router = Router()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(.butterflyTheBlueButterflyButterflyTransparentBackgroundAiGeneratedPng)
                        .resizable()
                        .frame(width: 180, height: 154, alignment: .leading)
                        .background(.white)
                        .padding(.top, 100)
                        .padding(.trailing, 30)
                    
                    Text("Blue sky")
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                        .padding([.trailing, .top], 25)
                }
                Spacer()
                
                HStack {
                    Text("have blue wings ")
                        .font(.system(size: 30))
                        .foregroundStyle(Color(red: 0.27, green: 0.78, blue: 1))
                }
                .frame(width: 350, height: 200)
                .background(.white)
                
                Spacer()
                
                VStack {
                    Button (){
                        router.navigate(to: .collection)
//                            print("welcome")
                    }label:  {
                        Image(systemName: "arrow.left")
                            .frame(width: 100, height: 100)
                            .background(Color(red: 0.28, green: 0.69, blue: 1))
                            .font(.system(size: 50))
                            .cornerRadius(300)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .bottom], 30)
                }
            }
            .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color(red: 0.75, green: 0.76, blue: 1))
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
        }
    }
}

#Preview {
    ButterflySingle()
}
