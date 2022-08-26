//
//  ContentView.swift
//  ARSimple
//
//  Created by Salvatore La Spata on 17/08/22.
//
import SwiftUI

struct ContentView : View {
    @State private var selection: Tab = .viewer

    enum Tab {
        case viewer
        case scanner
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Viewer()
                .tabItem {
                    Label("AR Viewer", systemImage: "list.bullet")
                }
                .tag(Tab.viewer)
            Scanner()
                .tabItem {
                    Label("Scanner", systemImage: "star")
                }
                .tag(Tab.scanner)
        }
        
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
