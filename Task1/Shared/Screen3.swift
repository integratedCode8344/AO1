//
//  Screen3.swift
//  Task1
//
//  Created by Arun_Skyraan on 14/09/22.
//

import SwiftUI

struct myStructure {
    var title : String
    var description : String
}
struct StaticValue {
   static var myStruct : [myStructure] = [myStructure(title: "Learn SwiftUI", description: "Swift is for iOS, macOS, watchOS, and tvOS application development."), myStructure(title: "Learn Python", description: "Python is used in machine learning, web development and more."), myStructure(title: "Learn Java", description: "Java is used to develop desktop and mobile applications")]
}
struct Screen3: View {
    
   
    
//    var myStruct : [myStructure] = [myStructure(title: "Learn SwiftUI", description: "Swift is for iOS, macOS, watchOS, and tvOS application development."), myStructure(title: "Learn Python", description: "Python is used in machine learning, web development and more."), myStructure(title: "Learn Java", description: "Java is used to develop desktop and mobile applications")]
    
    @State var selection = 0
    @State var buttonSelection = 0
    
    
    
    var body: some View {
        ZStack(alignment: .top){
            
//                .zIndex(0.9)
           
//        VStack {
            
            VStack(spacing : 15) {
                ZStack {


                }.frame( height: 220)
//                TabView {
                VStack{
                Text("⭐️")
                    .font(.system(size: 30))
//                    .padding()
                Text("GO PREMIUM")
                    .font(.subheadline)
                    .foregroundColor(.gray)
               
                    TabView(selection: $selection) {
//                        ScrollView (.horizontal) {
                        ForEach(0..<StaticValue.myStruct.count, id : \.self) { index in
                            let item : myStructure = StaticValue.myStruct[index]
                    VStack(spacing : 10) {
                    
                    Text("\(item.title)")
                            .font(.title)
                            .bold()
                    Text("\(item.description)")
                            .multilineTextAlignment(.center)
                            .font(.system(size: 18))
                            .foregroundColor(.gray)
                        
                            
                }
                    .tag(index)
//Spacer()
                        
                }
                    }.tabViewStyle(PageTabViewStyle())
//                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    .frame(height: 100)
                Spacer()
//                ZStack {
                
                HStack(spacing : 15) {
                Button(action: {
                    self.selection = 0
                
                }, label: {
                    Circle()
                        .fill(selection == 0 ? Color.blue : Color.gray)
                        .frame(width: 10, height: 10)
                        
                })
                    Button(action: {
                        self.selection = 1
                    }, label: {
                        Circle()
                            .fill(selection == 1 ? Color.blue : Color.gray)
                            .frame(width: 10, height: 10)
                    })
                    Button(action: {
                        self.selection = 2
                    }, label: {
                        Circle()
                            .fill(selection == 2 ? Color.blue : Color.gray)
                            .frame(width: 10, height: 10)
                    })
                    
                }
//                    Spacer ()
                }.background(
                
                Circle()
                    .foregroundColor(Color.white)
                    .frame(width: 800, height: 800)
                    .offset(y: -300)
                )
//                }
//                .padding(30)
                Spacer()
                HStack(spacing : 8){
//                    Color.gray
//                        .edgesIgnoringSafeArea(.all)
                    Button(action: {
                        self.buttonSelection = 1
                    }, label: {
                        VStack(spacing : 15) {
                        Text("Gold")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
//                            Spacer()
                        Text("$14.99")
                                .font(.system(size: 22))
                                .bold()
                            Text("Validity six months only")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                        }
                    })
                    
                    .frame(width: 120, height: 150)
                    .background(
                        ZStack{
                       RoundedRectangle(cornerRadius: 13)
                                .foregroundColor(Color.white)
                            RoundedRectangle(cornerRadius: 13)
                                .stroke(lineWidth: 2)
                                     .foregroundColor(buttonSelection == 1 ? Color.blue : Color.clear)
                            
                        }
                    )
                    
                    Button(action: {
                        self.buttonSelection = 2
                    }, label: {
                        VStack(spacing : 18) {
                        Text("Plus+")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
//                            Spacer()
                        Text("$24.99")
                                .font(.system(size: 22))
                                .bold()
                            Text("Validity one year only")
                                .font(.system(size: 15))
                        }
                    })
                    
                    .frame(width: 120, height: 150)
                    .background(
                        ZStack{
                       RoundedRectangle(cornerRadius: 13)
                                .foregroundColor(Color.white)
                            RoundedRectangle(cornerRadius: 13)
                                .stroke(lineWidth: 2)
                                     .foregroundColor(buttonSelection == 2 ? Color.blue : Color.clear)
                            
                        }
                    )
                    
                    
                    Button(action: {
                        self.buttonSelection = 3
                    }, label: {
                        VStack(spacing : 15) {
                        Text("Basic")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
//                            Spacer()
                        Text("$9.99")
                                .font(.system(size: 22))
                                .bold()
                            Text("Validity three months only")
                                .font(.system(size: 15))
                                
                        }
                    })
                    .frame(width: 120, height: 150)
                    .background(
                        ZStack{
                       RoundedRectangle(cornerRadius: 13)
                                .foregroundColor(Color.white)
                            RoundedRectangle(cornerRadius: 13)
                                .stroke(lineWidth: 2)
                                     .foregroundColor(buttonSelection == 3 ? Color.blue : Color.clear)
                            
                        }
                    )
                   
//                    .cornerRadius(13)
//                    .border(buttonSelection == 3 ? Color.blue : Color.clear, width: 2)
                    
                }
                .padding(30)
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Continue")
                        .font(.title3)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 70)
                })
                .background(Color.blue)
                .cornerRadius(15)
                Spacer()
                
                Text("Limited version")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom)
//                }
//            }
//            }
           
//            Spacer()
        }
//        .zIndex(0.8)
        .background(Color.gray.opacity(0.1))
            Image("BG2")
                .resizable()
//                    .scaledToFit()
                .frame( height: 190)
            HStack{
//                Color.gray
                NavigationLink(destination: {
                    Screen4()
                }, label: {
                    Text("Next")
                        .font(.title3)
                        .foregroundColor(Color.red)
                        .background(
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.white.opacity(0.2))
                            })
                        .frame(width: 100, height: 100)
//                            Color.white.opacity(0.2))
                })
//                .border(Color.green)
               
                Spacer()
            }
//            .border(Color.blue)
            .padding(.top,100)
//            .border(Color.red)
//            .zIndex(1)
//                .frame(width: 350, height: 50, alignment: .leading)
//                .padding(50)
    }.ignoresSafeArea(.all)
    }

}

struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3()
    }
}
