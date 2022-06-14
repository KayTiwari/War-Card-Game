//
//  ContentView.swift
//  test
//
//  Created by Abhi K Tiwari on 6/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var CPUCard = "card9"
    @State var playerScore = 0
    @State var CPUScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(CPUCard)
                    
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    
                    let CPURand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    
                    CPUCard = "card" + String(CPURand)
                    
                    if (playerRand > CPURand){
                        playerScore += 1
                    } else if (CPURand > playerRand) {
                        CPUScore += 1
                    }
                    
                }) {
                    Image("dealbutton")
                }
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .padding(.bottom, 10)
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .padding(.bottom, 10)
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(CPUScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                
            }
        }
    }
}

func deal() {
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
