//
//  ContentView.swift
//  swiftUI_XCUITest
//
//  Created by mac on 2023/06/21.
//


import SwiftUI

struct ContentView: View {
    @State private var toDetailView = false
    @State private var name = ""
    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(height: 100)
                
                TextField("テキストフィールド", text: $name).accessibility(identifier: "contentview_text")
                    .padding()
                
                Spacer()
                
                Button("Go to detail") {
                    toDetailView = true
                }
                .accessibility(identifier: "contentview_button")
                NavigationLink(
                    destination: DetailView(),
                    isActive: $toDetailView,
                    label: { EmptyView() })
            }
            .navigationBarTitle("Content")
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            Text("This is detail view")
                .accessibility(identifier: "detailview_text")
        }
        .navigationBarTitle("Detail")
    }
}
