//
//  ContentView.swift
//  my-janken-app
//  
//  Created by Mmy26 on 2022/11/17.
//  
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 画像を指定
        Image("gu")
        // リサイズを指定
            .resizable()
        // アスペクト比を維持する指定
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
