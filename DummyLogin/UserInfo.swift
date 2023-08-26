//
//  UserInfo.swift
//  DummyLogin
//
//  Created by Inito on 26/08/23.
//

import SwiftUI


struct UserInfo: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        VStack {
            Text("Welcome, \(userData.name)!")
                .font(.title)
                .padding()
            Text("Email: \(userData.email)")
                .padding()
            Text("Phone Number: \(userData.phoneNumber)")
                .padding()
        }
    }
}


//struct UserInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        UserInfo(name:, email: <#T##String#>, phoneNumber: <#T##String#>)
//    }
//}
