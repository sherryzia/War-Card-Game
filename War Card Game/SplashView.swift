//
//  SplashView.swift
//  War Card Game
//
//  Created by Sherry on 29/08/2024.
//

import SwiftUI

struct SplashView: View {
    @State var isActive:Bool = false

    var body: some View {
        ZStack
        {
            if(self.isActive){
                ContentView()
            }
            else {
                
                Image("background-cloth")
                
                VStack{
                    Spacer()
                    Spacer()
                    Spacer()
                    Image("logo").resizable().aspectRatio(contentMode:.fit).frame(width:250)
                    Spacer()
                    Spacer()
                    Text("A game developed by \" Sherry Zia \"")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
            }
        }.onAppear
        {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5)
            {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
