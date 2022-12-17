//
//  ImageTabView.swift
//  Task1
//
//  Created by Arun_Skyraan on 12/09/22.
//

import SwiftUI

struct ImageTabView: View {
//
//    @State var images : [String] = ["flower", "makeup", "tree", "water"]
//
//    @State var description : [String] = ["Decoration", "Beauty", "Plantation", "Save"]
    
    @State var skipButton : Bool = false
    @State var nextButton : Bool = false
    
    struct imgDesc {
        var imgaes: String
        var title: String
        var description : String
        
    }
    
    var myPicAndMyTitle = [imgDesc(imgaes: "flower", title: "Decoration", description: """
Let your personality reflect in your home with our decoration range.
"""),
                           imgDesc(imgaes: "world", title: "Beauty", description: """
With 189 member countries, the World Bank Group is a unique global partnership
"""),
                           imgDesc(imgaes: "tree", title: "Plantation", description: """
A tree plantation, forest plantation, cutting of tree causes deforestration, plat more trees
"""),
                           imgDesc(imgaes: "water1", title: "Save Water", description: """
All home must have a rain water harvesting nowadays, ts is neccessary.
""")]
    
    @State var counts : Int = 0
    public var gridItemLayout = [ GridItem(.flexible())]
    @State var selection = 0
    var body: some View {
        VStack{
        TabView(selection: $selection)  {
           
            ForEach(0..<myPicAndMyTitle.count,id:\.self) { index in
              
                let item :imgDesc = myPicAndMyTitle[index]
                VStack(spacing:10){
                Image("\(item.imgaes)")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
//                        .padding()
                Text("\(item.title)")
                        .font(.system(size: 35))
//                        .bold()
                        .foregroundColor(.blue)
//                        .fontWeight(<#T##weight: Font.Weight?##Font.Weight?#>)
                        .padding()
                    Text("\(item.description)")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 23))
                        .foregroundColor(.blue)
                        .lineSpacing(10)
                
                }
                .tag(index)
            }
            
                

            
            
        Spacer()
            
            }
        
        .tabViewStyle(PageTabViewStyle())
            HStack(spacing : 10){
                Button(action: {
                    self.selection -= 1
                }, label: {
                    Text("SKIP")
                        .font(.system(size: 25))
                        .foregroundColor(.gray)
//                        .padding()
                })
                Button(action: {
                    selection = 0
                }, label: {
                    Circle()
                        .fill(selection == 0 ? Color.blue : Color.gray)
                        .frame(width: 10, height: 10)
                })
                .padding()
                Button(action: {
                    selection = 1
                }, label: {
                    Circle()
                        .fill(selection == 1 ? Color.blue : Color.gray)
                        .frame(width: 10, height: 10)
                })
                .padding()
                Button(action: {
                    selection = 2
                }, label: {
                    Circle()
                        .fill(selection == 2 ? Color.blue : Color.gray)
                        .frame(width: 10, height: 10)
                })
                .padding()
                Button(action: {
                    selection = 3
                }, label: {
                    Circle()
                        .fill(selection == 3 ? Color.blue : Color.gray)
                        .frame(width: 10, height: 10)
                        
                })
                .padding()
                
                Button(action: {
                    withAnimation(){
                        self.selection += 1
                    }
                }, label: {
                    Text("NEXT")
                        .font(.system(size: 25))
//                        .padding()
                })
                
            }
            .padding(.vertical)
        }  .frame(width: UIScreen.main.bounds.width-20, height: UIScreen.main.bounds.height, alignment: .center)
    
    }
      
       
    }


struct ImageTabView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTabView()
    }
}
