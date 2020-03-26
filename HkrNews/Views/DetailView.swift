//
//  DetailView.swift
//  HkrNews
//
//  Created by Shivaansh Prasann on 2020-03-24.
//  Copyright © 2020 ShivStuff. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



