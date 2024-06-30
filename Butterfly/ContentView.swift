//
//  ContentView.swift
//  Butterfly
//
//  Created by Erkebulan Massainov on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var router = Router()
    var body: some View {
        NavigationView{
            switch router.currentRoute {
            case .welcome:
                ZStack {
                    ButterflyWelcome()
//                        .navigationBarItems(trailing: Button(action: {
//                            router.navigate(to: .collection)
//                        }) {
//                            Image(systemName: "arrow.right")
//                                .frame(width: 50, height: 50)
//                                .background(Color(red: 0.28, green: 0.69, blue: 1))
//                                .font(.system(size: 25))
//                                .cornerRadius(25)
//                                .foregroundColor(.white)
//                                .hidden()
//                        })

                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: {
                                router.navigate(to: .collection)
                            }) {
                                Image(systemName: "arrow.right")
                                    .frame(width: 100, height: 100)
                                    .background(Color(red: 0.28, green: 0.69, blue: 1))
                                    .font(.system(size: 50))
                                    .cornerRadius(300)
                                    .foregroundColor(.white)
                            }
                            .padding(.trailing, 30)
                            .padding(.bottom, 30)
                        }
                    }
                }

            case .collection:
                ButterflyCollection(router: router)
                
            case .single:
                ButterflySingle(router: router)
            }
        }
    }
}

#Preview {
    ContentView()
}
