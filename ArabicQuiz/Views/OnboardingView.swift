//
//  OnboardingView.swift
//  ArabicQuiz
//
//  Created by Israa on 12/09/2023.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack {
            // MARK: Background
            Image("Home")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
            
            // MARK: OnBoarding
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 327, height: 319)
                .background(.white)
                .cornerRadius(40)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .inset(by: 1)
                        .stroke(.white.opacity(0.2), lineWidth: 2)
            )
            VStack(spacing: 20) {
                Spacer()
                Text("Interesting QUIZ Awaits You")
                    .font(
                        Font.custom("Poppins", size:35)
                            .weight(.bold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.16, green: 0.04, blue: 0.51))
                Text("play quizzes with your friends and get various prizes")
                    .font(Font.custom("Poppins", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.65, green: 0.65, blue: 0.65))
                Spacer()
                
                
            }
            .padding(20)
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
