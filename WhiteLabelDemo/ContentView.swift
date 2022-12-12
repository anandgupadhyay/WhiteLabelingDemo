//
//  ContentView.swift
//  WhiteLabelDemo
//
//  Created by Anand Upadhyay on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    init(){
        SharedManager.shared.loadData()
    }
    
    var body: some View {
        Text("App Name : \(SharedManager.shared.title)")
            .padding()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
