//
//  ContentView.swift
//  algo_para_los_vision
//
//  Created by alumno on 10/16/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var Pulsaciones: Int = 0
    var body: some View {
        HStack{
            VStack {
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)
                Model3D(named: "Sun", bundle: realityKitContentBundle)
                    .padding(.bottom, 0)
            }
            Text("Hello, world!")
            Text("Hello, world!\(Pulsaciones)")
            
            Text("Hello, world!")
            Button(action: {
                Pulsaciones += 1
                print("Hola n¿mundo desde consola")}, label: {Text("Hola mundo")})
        }
        .padding()
        
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
