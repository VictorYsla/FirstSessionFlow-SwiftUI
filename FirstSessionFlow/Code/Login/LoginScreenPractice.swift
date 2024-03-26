//
//  LoginScreen.swift
//  FirstSessionFlow
//
//  Created by Victor Fernando Gallardo Ysla on 24/03/24.
//

import SwiftUI

struct LoginScreenPractice: View {
    @ObservedObject var viewModel : LoginViewModel = LoginViewModel()
    var body: some View {
        ZStack(content: {
            Color.blue.ignoresSafeArea()
            Circle().scale(1.7).foregroundColor(Color.white.opacity(0.1))
            Circle().scale(1.35).foregroundColor(Color.white)
            VStack{
                Text("Login")
                
                    .font(.system(size: 25,weight: Font.Weight.bold, design: Font.Design.monospaced))
                    .padding(.bottom,30)
                TextField("Email", text: $viewModel.email)
                    .padding(.horizontal,20)
                    .background(RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.2))
                        .frame(minHeight: 60)
                    )
                    .frame(minHeight: 60)
                SecureField("Password", text: $viewModel.password)
                    .padding(.horizontal,20)
                    .background(RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.2))
                        .frame(minHeight: 60)
                    )
                    .frame(minHeight: 60)
                    .padding(.bottom,30)
                Button(
                    action: {viewModel.login(email: "", password: "")},
                    label: {
                        Text("Login")
                            .font(.system(size: 18,weight: Font.Weight.bold, design: Font.Design.monospaced))
                            .frame(maxWidth:.infinity,maxHeight:60)
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.blue)
                            )
                    }
                )
            }.padding(.horizontal,30)
            
            
        })
        
        
    }
}

#Preview {
    LoginScreenPractice()
}


