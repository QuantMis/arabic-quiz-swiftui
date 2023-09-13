//
//  QuestionView.swift
//  ArabicQuiz
//
//  Created by Israa on 13/09/2023.
//

import SwiftUI

struct QuestionView: View {
    let data = (1...4).map { $0 }
    var body: some View {
        VStack {
            // MARK: AppBar
            HStack {
                Circle()
                    .frame(height: 50)
                    .overlay {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                Spacer()
                Capsule()
                    .frame(width: 200, height: 50)
                    .overlay(
                        HStack {
                            Spacer(minLength: 10)
                            Text("User Name")
                                .foregroundColor(.white)
                                .font(.headline)
                            Spacer()
                            Circle()
                                .fill(.gray)
                                .frame(height: 40)
                                .overlay {
                                    Image(systemName: "chevron.left")
                                        .font(.system(size: 20))
                                        .foregroundColor(.white)
                                }
                        }
                            .padding(.horizontal, 5)
                    )
                
                
                
                
            } .frame(height: UIScreen.main.bounds.height * 0.2)
                .background(.red)
            
            // MARK: Question
            VStack {
                Text("Custom Font Size")
                    .font(Font.custom("YourCustomFont", size: 60))
            }
            .frame(height: UIScreen.main.bounds.height * 0.5)
            
            
            // MARK: Answer Selection
            VStack {
                Grid {
                    GridRow {
                        ForEach(0..<2) { _ in   Rectangle()
                                .frame(width: 180, height: 100)
                                .overlay(
                                    HStack {
                                       
                                        Text("User Name")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                        Spacer()
                                        Circle()
                                            .fill(.gray)
                                            .frame(height: 40)
                                            .overlay {
                                                Image(systemName: "chevron.left")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.white)
                                            }
                                    }
                                        .padding(.horizontal, 20)
                                )
                            
                        }
                        
                        .cornerRadius(20)
                    }
                    GridRow {
                        ForEach(0..<2) { _ in   Rectangle()
                                .frame(width: 180, height: 100)
                                .overlay(
                                    HStack {
                                        Text("User Name")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                        Spacer()
                                        Circle()
                                            .fill(.gray)
                                            .frame(height: 40)
                                            .overlay {
                                                Image(systemName: "chevron.left")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.white)
                                            }
                                    }
                                    
                                        .padding(.horizontal, 20)
                                    
                                )
                            
                        }
                        .cornerRadius(20)
                    }
                    
                }
                .padding()
                
            }
            .padding(.bottom, 30)
            
        }
        .padding(.horizontal, 10)
        .background(.red)
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
