//
//  ContentView.swift
//  War Card Game
//
//  Created by Sherry on 28/08/2024.
//

import SwiftUI

var x = "Hello"


struct ContentView: View {
    @State var cpu = 0
    @State var player = 0
    @State var cpuCard = "card2"
    @State var playerCard = "card3"
    
    @State var tag = ""
    var body: some View {
        ZStack{
            Image(.backgroundPlain)

            VStack{
                Spacer()
                Spacer()

                Image("logo")
                Spacer()

                HStack{
                    Spacer()
	
                    Image(playerCard)
                    Spacer()

                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {

deal()                }label: {
                    Image("button")
                }
                Spacer()

                HStack{
                    Spacer()
                    VStack{
                        Text("Player").fontWeight(.bold).foregroundColor(Color.white)
                        Text(String(player)).foregroundColor(Color.white)
                    }
                    Spacer()
                    
                        VStack{
                            Text("CPU").fontWeight(.bold).foregroundColor(Color.white)
                            Text(String(cpu)).foregroundColor(Color.white)
                        }
                    
                    Spacer()
                    
                }
                Spacer()

                Text(tag).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.bold).foregroundColor(Color.white)

                Spacer()
                Spacer()
                Spacer()

            }
        }
        
    }
    func deal()
    {
        var pid = Int.random(in: 2...14 )
        var cid = Int.random(in: 2...14 )
        
        print("button pressed again")
        
        playerCard = "card" + String(pid)
        cpuCard = "card" + String(cid)
        
        if(player >= 14)
        {
            tag = "Congratulations... You Won!"
        }
        else if (cpu >= 14)
        {
            tag = "Sorry... You lost!"

        }
        else
        {
            if(pid > cid)
            {
                player += 1
            }
            else if(cid > pid)
            {
                cpu += 1
            }
            else
            {
                cpu += 1
                player += 1
            }
        }
        
        print(cpu)
    }
}

#Preview {
    ContentView()
}
