//
//  FlodView.swift
//  Sidebar_Navigation_In_SwiftUI
//
//  Created by yongyou on 2020/9/21.
//  Copyright © 2020 sakuragi. All rights reserved.
//

import SwiftUI

struct FolderView: View {
    let title: String
    let mails: [Mail]
    @Binding var selectedMail: Mail?

    var body: some View {
        List(selection: $selectedMail) {
            ForEach(mails) { mail in
                NavigationLink(
                    destination: MailView(mail: mail),
                    tag: mail,
                    selection: $selectedMail
                ) {
                    VStack(alignment: .leading) {
                        Text(mail.subject)
                        Text(mail.date, style: .date)
                    }
                }
            }
        }.navigationTitle(title)
    }
}

struct FlodView_Previews: PreviewProvider {
    static var previews: some View {
        FlodView()
    }
}
