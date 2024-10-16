//
//  algo_para_los_visionApp.swift
//  algo_para_los_vision
//
//  Created by alumno on 10/16/24.
//

import SwiftUI

@main
struct algo_para_los_visionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
