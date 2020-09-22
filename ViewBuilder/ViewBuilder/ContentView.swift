//
//  ContentView.swift
//  ViewBuilder
//
//  Created by yongyou on 2020/9/21.
//  Copyright © 2020 sakuragi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var notificationShown = false
    var body: some View {
        VStack{
            if self.notificationShown {
                NotificationView {
                    Text("notification")
                }
            }
            Spacer()
            Button("toggle"){
                self.notificationShown.toggle()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
