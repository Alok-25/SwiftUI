//
//  UserPage.swift
//  DummyLogin
//
//  Created by Inito on 26/08/23.
//

import SwiftUI

struct UserPage: View {
    @EnvironmentObject private var userData: UserData
   
    var body: some View {
        TabView{
            UserInfo()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                    
                }
            Shop()
                .tabItem{
                    Image(systemName: "cart")
                    Text("Shop")
                    
                    
                }
            Camera()
                .tabItem{
                    Image(systemName: "camera")
                    Text("Camera")
                    
                }
        }.accentColor(.pink)
    }
}

struct UserPage_Previews: PreviewProvider {
    static var previews: some View {
        UserPage()
    }
}
