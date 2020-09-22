//
//  ContentView.swift
//  Sidebar_Navigation_In_SwiftUI
//
//  Created by yongyou on 2020/9/21.
//  Copyright © 2020 sakuragi. All rights reserved.
//

import SwiftUI

//struct Mail: Identifiable, Hashable {
//    let id = UUID()
//    let date: Date
//    let subject: String
//    let body: String
//    var isFavorited = false
//}
//
//final class MailStore: ObservableObject {
//    @Published var allMails: [String: [Mail]] = [
//    "Inbox": [ .init(date: Date(), subject: "Subject1", body: "Very long body...") ],
//    "Sent": [ .init(date: Date(), subject: "Subject2", body: "Very long body...") ],
//    ]
//}

struct ContentView: View {
    @State private var notificationShown = false
    var body: some View {
        HStack{
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
