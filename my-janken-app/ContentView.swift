//
//  ContentView.swift
//  my-janken-app
//  
//  Created by Mmy26 on 2022/11/17.
//  
//

import SwiftUI

struct ContentView: View {
    // じゃんけんの結果を格納する変数(0=初期画面,1=グー,2=チョキ,3=パー)
    @State var answerNumber = 0
    
    var body: some View {
        VStack {
            // じゃんけんの数字が0だったら
            if answerNumber == 0 {
                // 初期画面のテキストを表示
                Text("これからじゃんけんをします！")
            }else if answerNumber == 1 {
                // じゃんけんの数字が1だったら、グーの画像を指定
                // 画像を指定
                Image("gu")
                // リサイズを指定
                    .resizable()
                // アスペクト比を維持する指定
                    .scaledToFit()
                // じゃんけんの種類を指定
                Text("グー")
                

            } else if answerNumber == 2 {
                // じゃんけんの数字が2だったら、チョキの画像を指定
                Image("pa")
                //リサイズを指定
                    .resizable()
                // 画面に収まるように、アスペクト比を維持する指定
                    .scaledToFit()
                // じゃんけんの種類を指定
                Text("パー")
            } else {
                // じゃんけんの数字が[1],[2]以外だったら、パー画像を指定
                Image("choki")
                //リサイズを指定
                    .resizable()
                // 画面に収まるように、アスペクト比を維持する指定
                    .scaledToFit()
                // じゃんけんの種類を指定
                Text("チョキ")
            }
            // [じゃんけんをする！]ボタン
            Button {
             // 新しいじゃんけんの結果を一時的に格納する変数を設ける
                var newAnswerNumber = 0
             // ランダムに結果を出すが、前回と異なる場合は採用
             // repeatは繰り返しを意味する
                repeat{
                    // 1,2,3の数値をランダムに算出(乱数)
                    newAnswerNumber = Int.random(in: 1...3)
                    // 前回と同じ結果の時は、再度ランダムに数値を算出
                    // 異なる結果の時は、repeatを抜ける
                } while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
            } label: {
            // Buttonに表示する文字を指定
                Text("じゃんけんをする！")
            }// [じゃんけんをする！]ボタンはここまで
           
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
