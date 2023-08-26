//
//  ContentView.swift
//  DummyLogin
//
//  Created by Inito on 26/08/23.
//

import SwiftUI
import Combine
class UserData: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var phoneNumber = ""
    @Published var password = ""
    @Published var isValidName = true
    @Published var isValidEmail = true
    @Published var isValidPhoneNumber = true
    @Published var isValidPassword = true
    @Published var isallowed = false
}

struct ContentView: View {
    @StateObject private var userData = UserData()
    private let validator = Validator()
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Form {
                        HStack {
                            TextField("Name", text: $userData.name)
                            Spacer()
                            Image(systemName: userData.isValidName ? "checkmark.circle.fill" : "xmark.circle.fill")
                                .foregroundColor(userData.isValidName ? .white : .red)
                        }
                        
                        HStack {
                            TextField("Email address", text: $userData.email)
                            Spacer()
                            Image(systemName: userData.isValidEmail ? "checkmark.circle.fill" : "xmark.circle.fill")
                                .foregroundColor(userData.isValidEmail ? .green : .red)
                        }
                        
                        HStack {
                            TextField("Phone Number", text: $userData.phoneNumber)
                            Spacer()
                            Image(systemName: userData.isValidPhoneNumber ? "checkmark.circle.fill" : "xmark.circle.fill")
                                .foregroundColor(userData.isValidPhoneNumber ? .green : .red)
                        }
                        
                        HStack {
                            SecureField("Password", text: $userData.password)
                            Spacer()
                            Image(systemName: userData.isValidPassword ? "checkmark.circle.fill" : "xmark.circle.fill")
                                .foregroundColor(userData.isValidPassword ? .green : .red)
                        }
                    }
                    .foregroundColor(.pink)
                    
                    Button(action: {
                        
                        validator.checks(userData)
                        
                        
                    }) {
                        NavigationLink(destination:  UserPage().environmentObject(userData)) {
                            Text("Login")
                                .padding()
                                .frame(width: 280, height: 50)
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .navigationBarTitle("Login")
                        
                        
                        
                    }
                    
                }
            }
            .accentColor(.pink)
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
