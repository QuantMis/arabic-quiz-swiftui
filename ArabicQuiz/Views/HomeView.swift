//
//  HomeView.swift
//  ArabicQuiz
//
//  Created by Israa on 12/09/2023.
//

import SwiftUI

struct HomeView: View {
    let screenHeight = UIScreen.main.bounds.height
    @State private var progressValue: Double = 0.5
    var body: some View {
        ZStack {
            
            // MARK: Background
            Image("Background2")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
                .frame(width: .infinity, height: screenHeight)
            
            VStack {
                // MARK: Status
                HStack {
                    Spacer()
                    Circle()
                        .frame(width: 48, height: 48)
                        .overlay(
                            Circle()
                                .stroke(.white, lineWidth: 4)
                        )
                    Spacer()
                    VStack(spacing: 5) {
                        Text("Points")
                          .font(Font.custom("Poppins", size: 14))
                          .multilineTextAlignment(.center)
                          .foregroundColor(.white)
                        Text("231")
                          .font(
                            Font.custom("Poppins", size: 20)
                              .weight(.bold)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(.white)
                    }
                    Spacer()
                   
                }
                Image("Illlustration")
                    .padding(.trailing, 25)
                Text("MATH\nGAMES")
                  .font(
                    Font.custom("Poppins", size: 32)
                      .weight(.heavy)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(.white)
                HStack {
                    Image("Guide")
                    Image("Profile")
                }
                
            }
            .padding(.horizontal, 20)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
