//
//  FirstPageView.swift
//  Task1
//
//  Created by Arun_Skyraan on 12/09/22.
//

import SwiftUI
struct ListDetails {
    var image : String
    var title : String
    var descs : String
    var rate : String
    var weight : String
    
}
struct FirstPageView: View {
    
    @State var images : [String] = ["C65", "FB", "CR", "GR", "LP", "NG"]
    
    @State var titles : [String] = ["Chicken 65", "Fish fries", "Crap Gravy", "Chicken leg masala", "Chicken Leg", "Village CKN masala"]
    @State var descs : [String] = [
"""
chicken deep fry raw with onion
""",
"""
Fish masala fry in banana leaf
""",
"""
Sea crap spicy masala gravy
""",
"""
Chenninat chicken masala gravy
""",
"""
Chicken leg deep fry with lemon and onion
""",
"""
homely masala chiken with tender chicken
"""
    ]
    
    @State var rates : [String] = ["$100", "$120", "$320", "$220", "$90", "$110"]
    
    @State var weights : [String] = ["300 gms", "500 gms", "325 gms", "400 gms", "543 gms", "237 gms"]
    
    
  
    
    var allDetails : [ListDetails] = [ListDetails(image: "C65", title: "Chicken 65", descs:"chicken deep fry raw with onion", rate: "$100", weight: "300 gms"),
    ListDetails(image: "FB", title: "Fish fries", descs: "Fish masala fry in banana leaf", rate: "$120", weight: "500 gms"),
    ListDetails(image: "CR", title: "Crap Gravy", descs: "Sea crap spicy masala gravy", rate: "$320", weight: "325 gms"), ListDetails(image: "GR", title: "Chicken leg masala", descs: "Chenninat chicken masala gravy", rate: "$220", weight: "400 gms"), ListDetails(image: "LP", title: "Chicken Leg", descs: "Chicken leg deep fry with lemon and onion", rate: "$90", weight: "543 gms"), ListDetails(image: "NG", title: "Village CKN masala", descs: "homely masala chiken with tender chicken", rate: "$110", weight: "237 gms")]
 
    var body: some View {
        List{
            ForEach(0..<allDetails.count, id: \.self) { index in
                
                let item :ListDetails = allDetails[index]
                
                HStack{
                    VStack{
                        Image(item.image)
                    .resizable()
                    .clipShape(Rectangle())
                    .frame(width: 120, height: 100)
                    .cornerRadius(10)
                    
                    }.padding(10)
                    VStack(alignment: .leading) {
                        HStack() {
                        Text("\(item.title)")
                            .font(.headline)
                            .frame( alignment: .leading)
                            Spacer()
                            Image("nonvegICON")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
//                        .frame(width: 200, height: 50, alignment: .leading)
            
                            
                        Text("\(item.descs)")
                            .font(.system(size: 12))
                            .padding(.bottom)
//                            .multilineTextAlignment(.leading)
//                            .frame(width: 200, height: 50)
                        HStack {
                            Text("\(item.rate)")
                                .bold()
                            Text("\(item.weight)")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                            
                            Button(action: {
                                
                            }, label: {
                                Text("Add")
                                    .frame(width: 50, height: 30)
                                    .foregroundColor(.white)
                                    .background(Color.green)
                                    .cornerRadius(10)
                            })
                        }
                    }
                }
                    
            }
        }
    }
}

struct FirstPageView_Previews: PreviewProvider {
    static var previews: some View {
        FirstPageView()
    }
}
