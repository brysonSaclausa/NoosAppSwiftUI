//
//  ContentView.swift
//  Noos2
//
//  Created by BrysonSaclausa on 4/30/21.
//

import SwiftUI

struct ContentView: View {
    
    var articles: [Article] = ArticleList.articleList
    
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    
                    EventMapView()
                        .tabItem {
                            Image(systemName: "map")
                            Text("Events")
                        }
                    
                    CategoryPageView(article: articles[0])
                        .tabItem {
                            Image(systemName: "star")
                            Text("Discover")
                        }
                    
                    ShopView()
                        .tabItem {
                            Image(systemName: "list.bullet")
                            Text("Categories")
                        }
                    
                    
                    
                    
                }
            }
            .navigationTitle("Breakapp")
            //                        .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Image(systemName: "person"))
            
        }
    }
}//



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
