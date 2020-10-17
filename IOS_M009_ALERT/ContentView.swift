//
//  ContentView.swift
//  IOS_M009_ALERT
//
//  Created by MVK on 18/9/2563 BE.
//  Copyright © 2563 MVK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    var body: some View {
        VStack {
            Button(action:{
                self.isShowAlert = true
            }){
               Text("Show Alert")
            }
        }.alert(isPresented: self.$isShowAlert) { () -> Alert in
            Alert(title: Text("Result"), message: Text("It is just alert"), dismissButton: .default(Text("Close")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
