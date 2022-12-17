//
//  ListTabView1.swift
//  Task1
//
//  Created by Arun_Skyraan on 12/09/22.
//

import SwiftUI

struct ListTabView1: View {
    
    @State var titles : [String] = ["Non Veg", "Veg", "Drinks"]
    @State var Index = 0
    var body: some View {
        VStack{
            VStack{
//                HStack() {
                    
                        
                Menu{
//                    Button(action: {
//                        FirstPageView()
//                    }, label: {
//                        Text("Non Veg")
//                    })
//                    Button(action: {
//                        SecondPageView()
//                    }, label: {
//                        Text("Veggies")
//                    })
//                    Button(action: {
//
//                    }, label: {
//                        Text("Drinks")
//                    })
                    Text("Non Veg")
                    Text("Veg")
                    Text("Drinks")
                }label: {
                    Text("Sector")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    Image(systemName: "chevron.down")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .padding()
//                }
                    Spacer()
            Image(systemName: "magnifyingglass")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    
                }.padding()
                Spacer()
                
                ScrollView (.horizontal,showsIndicators: false){
                HStack(spacing : 20) {
//                    VStack {
//                    Text("")
//                            .frame(width: 10, height: <#T##CGFloat?#>, alignment: <#T##Alignment#>)
                    Text("")
                    ForEach(0..<titles.count,id:\.self){
                        index in
                        Button(action: {
                            withAnimation(){
                            Index = index
                            }
                        }, label: {
                            VStack{
                            Text("\(titles[index])")
                                .font(.system(size: 20))
                                .bold()
                                .foregroundColor(.white)
                            Rectangle()
                                .fill(.white)
                                .frame(width: 60, height: 30)
                                .cornerRadius(5)
                                .opacity(Index == index ? 1 : 0)
                            }
                        })
                    }

                       
                           
//                    }
                
//                    Button(action: {
//
//                        Index = 1
//                    }, label: {
//                        Text("Veg")
//                            .font(.system(size: 20))
//                            .bold()
//                            .foregroundColor(.white)
//                    })
                    
//                    Button(action: {
//                        Index = 2
//                    }, label: {
//                        Text("Drinks")
//                            .font(.system(size: 20))
//                            .bold()
//                            .foregroundColor(.white)
//                    })
//                    Button(action: {
//                        Index = 3
//                    }, label: {
//                        Text("Pizza")
//                            .font(.system(size: 20))
//                            .bold()
//                            .foregroundColor(.white)
//                    })
//                    Button(action: {
//                        Index = 4
//                    }, label: {
//                        Text("meals")
//                            .font(.system(size: 20))
//                            .bold()
//                            .foregroundColor(.white)
//                    })
                }
                
                }
        }
        .frame(width: UIScreen.main.bounds.width, height: 130)
        .background(LinearGradient(gradient: Gradient(colors:[Color(red: 253/255, green: 1/63255, blue: 132/255, opacity: 1),Color(red: 254/255, green: 99/255, blue: 98/255)]) ,startPoint: .leading, endPoint: .trailing))
        .cornerRadius(20)
//        .padding()
//    Spacer()
//        Spacer()
            if Index == 0{
                FirstPageView()
            }else if Index == 1{
                SecondPageView()
            }else{
                Spacer()
            }
        }.ignoresSafeArea()
    }
}

struct ListTabView1_Previews: PreviewProvider {
    static var previews: some View {
        ListTabView1()
    }
}
