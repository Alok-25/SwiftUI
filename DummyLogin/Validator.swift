//
//  Validator.swift
//  DummyLogin
//
//  Created by Inito on 26/08/23.
//

import Foundation

class Validator {
    func NameValidate(_ username : String) -> Bool{
        
        return username.count<=20 && username.count != 0
    }
    func EmailValidate(_ email : String)-> Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.com"

            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailPred.evaluate(with: email)
    }
    
    func PhoneNumberValidate(_ number : String)-> Bool{
        if number.count != 10 {
            return false
        }
        
           return Int(number) != nil
    }
    
    func PasswordValidate(_ password : String)->Bool{
        return password.count >= 8
    }
    
    func checks(_ userData: UserData){
        let username = userData.name
        let email = userData.email
        let phonenumber = userData.phoneNumber
        let password = userData.password
       
        
        if !NameValidate(username ) {
            userData.isValidName = false
            
        }
        else {
            userData.isValidName = true
        }
        if !EmailValidate(email){
            userData.isValidEmail = false
            userData.isallowed = false
        }
        else{
            userData.isValidEmail = true
            
        }
        if !PhoneNumberValidate(phonenumber){
            userData.isValidPhoneNumber = false
            
        }
        else {
            userData.isValidPhoneNumber = true
        }
        if !PasswordValidate(password){
            userData.isValidPassword = false
        }
        else{
            userData.isValidPassword = true
        }
        
        if(userData.isValidName && userData.isValidEmail && userData.isValidPassword && userData.isValidPhoneNumber){
            userData.isallowed = true
        }
        else{
            userData.isallowed = false
        }
    }
}
