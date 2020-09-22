//
//  NotificaitonView.swift
//  ViewBuilder
//
//  Created by yongyou on 2020/9/21.
//  Copyright © 2020 sakuragi. All rights reserved.
//

import SwiftUI

struct NotificationView<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        content
            .padding()
            .background(Color.red)
            .cornerRadius(16)
            .transition(.move(edge: .top))
            .animation(.spring())
    }
}

struct NotificaitonView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView{
            Text("1111")
        }
    }
}
