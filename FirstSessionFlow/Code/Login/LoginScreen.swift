//
//  LoginScreen.swift
//  FirstSessionFlow
//
//  Created by Victor Fernando Gallardo Ysla on 26/03/24.
//

import SwiftUI

struct LoginScreen: View {
    
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    @State private var isPasswordVisible = false
    
    var body: some View {

        VStack(content: {
            Image("LoginBackgroundImage")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth:.infinity, maxHeight: 192,alignment: .topTrailing)
            VStack(content: {
                HStack{
                    Text("Hello!")
                        .font(.system(size:32, weight: Font.Weight.bold, design: Font.Design.monospaced))
                        .foregroundColor(Color(hexStringToUIColor(hex: "#171A1FFF")))
                    Spacer()
                }
                .padding(.top,28)
                HStack{
                    Text("Welcome back")
                        .font(.system(size:28, weight: Font.Weight.regular, design: Font.Design.monospaced))
                        .foregroundColor(Color(hexStringToUIColor(hex: "#9095A1FF")))
                    Spacer()
                }
                .padding(.bottom,28)
                Text("Email")
                    .font(.system(size:14, weight: Font.Weight.bold, design: Font.Design.monospaced))
                    .frame(maxWidth:.infinity, alignment: .leading)
                HStack(content: {
                    Image(
                    systemName: "envelope"
                    )
                    .foregroundColor(.gray)
                    .frame(width: .infinity,alignment: .leading)
                    .frame(width: 20,height: 20)
                    TextField("Enter email", text: $viewModel.email)
                        .frame(minHeight: 45)
                })
                .padding()
                .frame(height: 45)
                .background(
                    RoundedRectangle(cornerRadius: 4)
                    .fill(Color(hexStringToUIColor(hex: "#F3F4F6FF")))
                )
                Text("Password")
                    .font(.system(size:14, weight: Font.Weight.bold, design: Font.Design.monospaced))
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.top,28)
                HStack(content: {
                    Image(
                    systemName: "lock"
                    )
                    .foregroundColor(.gray)
                    .frame(width: 20,height: 20,alignment: .leading)
                    TextField("Enter password", text: $viewModel.password)
                        .frame(minHeight: 45)
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                            .foregroundColor(.gray)
                            .frame(width: 20, height: 20)
                    }
                })
                .padding()
                .frame(height: 45)
                .background(
                    RoundedRectangle(cornerRadius: 4)
                    .fill(Color(hexStringToUIColor(hex: "#F3F4F6FF")))
                )
                Text("Forgot password?")
                    .font(.system(size:14, weight: Font.Weight.regular, design: Font.Design.monospaced))
                    .frame(maxWidth:.infinity, alignment: .trailing)
                    .foregroundColor(Color(hexStringToUIColor(hex: "#6D31EDFF")))
                    .padding(.top,8)
                    .padding(.bottom,28)
                    
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Sign In")
                        .font(.system(size: 16, weight: Font.Weight.regular, design: Font.Design.monospaced))
                        .foregroundStyle(.white)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,minHeight: 44)
                        .background(RoundedRectangle(cornerRadius: 4)
                            .fill(Color(hexStringToUIColor(hex: "#6D31EDFF")))
                        )
                })
                
//                Text("OR CONTINUE WITH")
//                    .font(.system(size: 12, weight: Font.Weight.regular, design: Font.Design.monospaced))
//                    .foregroundColor(Color(hexStringToUIColor(hex: "#6F7787FF")))
//                    .padding(.top,40)
                
                HStack{
                    Text("Don't have an account?")
                        .font(.system(size: 14, design: Font.Design.monospaced))
                        .foregroundColor(Color(hexStringToUIColor(hex: "#171A1FFF")))
                    Text("Sign up")
                        .font(.system(size: 14, design: Font.Design.monospaced))
                        .foregroundColor(Color(hexStringToUIColor(hex: "#6D31EDFF")))
                }
                .padding(.top, 40)
    
            })
            .padding(.horizontal,20)

            Spacer()
        })


    }
}

#Preview {
    LoginScreen()
}
