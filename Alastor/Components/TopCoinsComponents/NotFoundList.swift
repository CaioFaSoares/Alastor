//
//  NotFoundList.swift
//  Alastor
//
//  Created by Caio Soares on 04/09/22.
//

import SwiftUI

struct NotFoundList: View {
    var body: some View {
        VStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.bottom, 15)
            Text("We can't find any coin that matches with your searching.")
                .multilineTextAlignment(.center)
        }.foregroundColor(Color(UIColor.systemGray2.cgColor))
    }
}

struct NotFoundList_Previews: PreviewProvider {
    static var previews: some View {
        NotFoundList()
    }
}
