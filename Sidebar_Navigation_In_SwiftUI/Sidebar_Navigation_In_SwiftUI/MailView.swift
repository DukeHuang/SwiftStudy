//
//  MailView.swift
//  Sidebar_Navigation_In_SwiftUI
//
//  Created by yongyou on 2020/9/21.
//  Copyright © 2020 sakuragi. All rights reserved.
//

import SwiftUI

struct MailView: View {
    let mail: Mail

    var body: some View {
        VStack(alignment: .leading) {
            Text(mail.subject)
                .font(.headline)
            Text(mail.date, style: .date)
            Text(mail.body)
        }
    }
}
//struct MailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MailView()
//    }
//}
