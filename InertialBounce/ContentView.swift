//
//  ContentView.swift
//  InertialBounce
//
//  Created by Ramill Ibragimov on 25.01.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var aquaBounce = false
    @State private var blueberryBounce = false
    @State private var grapeBounce = false
    @State private var magentaBounce = false
    @State private var strawberryBounce = false
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("aquaBounce"))
                    .offset(y: aquaBounce ? 0 : -300)
                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.aquaBounce.toggle()
                }
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("blueberryBounce"))
                    .offset(y: blueberryBounce ? 0 : -300)
                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).delay(0.01).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.blueberryBounce.toggle()
                }
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("grapeBounce"))
                    .offset(y: grapeBounce ? 0 : -300)
                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).delay(0.02).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.grapeBounce.toggle()
                }
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("magentaBounce"))
                    .offset(y: magentaBounce ? 0 : -300)
                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).delay(0.03).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.magentaBounce.toggle()
                }
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("strawberryBounce"))
                    .offset(y: strawberryBounce ? 0 : -300)
                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).delay(0.04).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.strawberryBounce.toggle()
                }
            }
            Spacer()
            Text("Inertial Bounce")
                .font(.largeTitle)
        }.frame(height: UIScreen.main.bounds.height - 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
