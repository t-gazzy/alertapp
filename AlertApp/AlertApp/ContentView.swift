//
//  ContentView.swift
//  AlertApp
//
//  Created by takemasa kaji on 2023/06/09.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    var body: some View {
        VStack {
            TextField("入力してください", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Text("分後に通知します")
            Button("設定", action: {
                
            })
            .padding()
            .accentColor(Color.white)
            .background(Color.blue)
            .cornerRadius(.infinity)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
