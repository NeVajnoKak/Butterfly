//
//  ButterflyCollection.swift
//  Butterfly
//
//  Created by Erkebulan Massainov on 29.06.2024.
//

import SwiftUI

struct ButterflyCollection: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            VStack {
                VStack{
                    Text("Look at my collection")
                        .font(.system(size: 30))
                        .padding([.top, .bottom], 56)
                }
                VStack{
                    HStack{
                        NavigationLink(destination: ButterflySingle()) {
                            VStack{
                                Image(.butterflyTheBlueButterflyButterflyTransparentBackgroundAiGeneratedPng)
                                    .resizable()
                                    .frame(width: 100, height: 85)
                                Text("blue sky")
                                    .font(.system(size: 30))
                                    .foregroundStyle(.white)
                            }
                        }
                        .frame(width: 200, height: 200)
                        .background(Color(red: 1, green: 0.63, blue: 0.63))
                        
                        NavigationLink(destination: ButterflySingle()) {
                            VStack{
                                Image(.butterflyTheBlueButterflyButterflyTransparentBackgroundAiGeneratedPng)
                                    .resizable()
                                    .frame(width: 100, height: 85)
                                Text("blue sky")
                                    .font(.system(size: 30))
                                    .foregroundStyle(.white)
                            }
                        }
                        .frame(width: 200, height: 200)
                        .background(Color(red: 0.79, green: 1, blue: 0.62))
                    }
                    
                    HStack{
                        NavigationLink(destination: ButterflySingle()){
                            VStack{
                                Image(.butterflyTheBlueButterflyButterflyTransparentBackgroundAiGeneratedPng)
                                    .resizable()
                                    .frame(width: 100, height: 85)
                                Text("blue sky")
                                    .font(.system(size: 30))
                                    .foregroundStyle(.white)
                            }
                        }
                        .frame(width: 200, height: 200)
                        .background(Color(red: 1, green: 0.98, blue: 0.65))
                        
                        NavigationLink(destination: ButterflySingle()) {
                            VStack{
                                Image(.butterflyTheBlueButterflyButterflyTransparentBackgroundAiGeneratedPng)
                                    .resizable()
                                    .frame(width: 100, height: 85)
                                Text("blue sky")
                                    .font(.system(size: 30))
                                    .foregroundStyle(.white)
                            }
                        }
                        .frame(width: 200, height: 200)
                        .background(Color(red: 0.88, green: 0.56, blue: 1))
                    }
                    
                    Spacer()
                }
                VStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
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
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ButterflyCollection()
}
