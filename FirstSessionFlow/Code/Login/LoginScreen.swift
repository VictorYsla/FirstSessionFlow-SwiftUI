//
//  LoginScreen.swift
//  FirstSessionFlow
//
//  Created by Victor Fernando Gallardo Ysla on 26/03/24.
//

import SwiftUI

struct LoginScreen: View {
    
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    var currentColor = Color("#171A1FFF")
    print("color: \(currentColor)")
    
    var body: some View {
        VStack(content: {
            Image("LoginBackgroundImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:.infinity, height: 192)
            Text("Hello")
                .font(.system(size:32, weight: Font.Weight.bold, design: Font.Design.monospaced))
            Text("Welcome back")
                .font(.system(size:16, weight: Font.Weight.regular, design: Font.Design.monospaced))
            Text("Email")
                .font(.system(size:14, weight: Font.Weight.bold, design: Font.Design.monospaced))
                .frame(maxWidth:.infinity, alignment: .leading)
            HStack(content: {
                Image(
                systemName: "envelope"
                )
                .foregroundColor(.gray)
                .padding(.leading,8)
                .frame(width: 20,height: 20)
                TextField("Enter email", text: $viewModel.email)
                    .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color("#171A1FFF"))
                    )
            })
            
            
            
        })
    }
}

#Preview {
    LoginScreen()
}
