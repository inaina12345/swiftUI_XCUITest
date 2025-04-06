//
//  ContentView.swift
//  swiftUI_XCUITest
//
//  Created by mac on 2023/06/21.
//


import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // Update the web view if needed
    }
}

struct ContentView: View {
    @State private var toDetailView = false
    @State private var name = ""
    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(height: 100)
WebView(url: URL(string: "http://localhost:50725")!)
                    .frame(width: 300, height: 200) // Adjust size as needed
                
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
    
    func get_sample_test() -> Int {
        var test1 = 0
        var test2 = 1
        var test3 = 0
        var test4 = 1
        var test5 = 0
        var test6 = 1
        
        return test6
    }
}
