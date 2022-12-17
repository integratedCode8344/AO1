//
//  ListTabView.swift
//  Task1
//
//  Created by Arun_Skyraan on 12/09/22.
//

import SwiftUI

struct ListTabView: View {
    
    @State var selectedTab = Tabs.FirstTab
    
    var body: some View {
        VStack {
              HStack {
                  Spacer()
                  TabView{
                  VStack {
                  
                      Text("First tab")
                  }
                  .onTapGesture {
                      self.selectedTab = .FirstTab
                  }
//                  Spacer()
                  VStack {

                      Text("Second tab")
                  }
                  .onTapGesture {
                      self.selectedTab = .SecondTab
                  }
//                  Spacer()
                  VStack {

                      Text("Third tab")
                  }
                  .onTapGesture {
                      self.selectedTab = .ThirdTab
                  }
//                  Spacer()
                  }
                  .tabViewStyle(PageTabViewStyle())
              }
              .frame(width: 300, height: 50)
              .cornerRadius(28)
              .padding(.bottom)
              .background(Color.green.edgesIgnoringSafeArea(.all))
              
//              Spacer()
              
              if selectedTab == .FirstTab {
                  FirstTabView()
              } else if selectedTab == .SecondTab {
                  SecondTabView()
              } else {
                  ThirdTabView()
              }
          }
    }
}
struct FirstTabView : View {
    
    var body : some View {
        VStack {
            Text("FIRST TAB VIEW")
        }
        Spacer()
    }
}

struct SecondTabView : View {
    
    var body : some View {
        Text("SECOND TAB VIEW")
    }
}

struct ThirdTabView : View {
    
    var body : some View {
        Text("THIRD TAB VIEW")
    }
}

enum Tabs {
    case FirstTab
    case SecondTab
    case ThirdTab
}

struct ListTabView_Previews: PreviewProvider {
    static var previews: some View {
        ListTabView()
    }
}
