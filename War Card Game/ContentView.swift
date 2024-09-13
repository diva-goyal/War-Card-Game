//
//  ContentView.swift
//  War Card Game
//
//  Created by Diva Goyal on 12/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playercard = "card7"
    @State var cpucard = "card13"
    
    @State var playerscore=0
    @State var cpuscore=0
    
    var body: some View {
        
        
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                
                
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                        Text(String(playerscore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                        Text(String(cpuscore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()

                }
                .foregroundColor(.white )
                
                Spacer()
            }
        }
        
        
    }
    
    func deal(){
        var playervalue=Int.random(in: 2...14)
        playercard = "card" + String(playervalue)
        var cpuvalue=Int.random(in: 2...14)
        cpucard="card"+String(cpuvalue)
        
        if playervalue>cpuvalue{
            playerscore+=1
        }
        else if cpuvalue>playervalue{
            cpuscore+=1
        }
        else{
            
        }
    }
}

#Preview {
    ContentView()
}
