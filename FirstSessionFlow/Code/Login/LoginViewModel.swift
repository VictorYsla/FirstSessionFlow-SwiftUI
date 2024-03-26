//
//  LoginViewModel.swift
//  FirstSessionFlow
//
//  Created by Victor Fernando Gallardo Ysla on 24/03/24.
//

import Foundation

class LoginViewModel : ObservableObject{
    @Published var email : String = ""
    @Published var password: String = ""
    
    func login(
        email:String,
        password:String
    ) {
      print("Login Success")
    }
}
