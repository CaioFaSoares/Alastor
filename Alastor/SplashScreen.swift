//
//  SplashScreen.swift
//  Alastor
//
//  Created by Caio Soares on 01/09/22.
//

import SwiftUI

struct SplashScreen: View {
    
    @Binding var ASCI: Index
    @Binding var FNG: Index
    
    @State private var isActive = false
    
    @State private var index = [Index]()
    
    var body: some View {
        if isActive{
            HomeView(ASCI: $ASCI, FNG: $FNG)
        } else {
            ZStack {
                Color.accentColor
                
                VStack{
                    
                    Spacer()
                    
                    Image("AlastorLogo")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    ProgressView(value: 0.75)
                        .progressViewStyle(CircularProgressViewStyle())
                    
                    Spacer()
                    
                    HStack{
                        Text("Developed   by")
                        Text("COPLaND")
                            .foregroundColor(Color.blue)
                    }.font(.system(size: 10))
                        .padding(.bottom, 20)
                }
            }.ignoresSafeArea()
                .onAppear(){
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        self.isActive = true
                    }
                }
        }
    }
}
