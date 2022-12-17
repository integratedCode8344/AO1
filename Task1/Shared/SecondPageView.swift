//
//  SecondPageView.swift
//  Task1
//
//  Created by Arun_Skyraan on 14/09/22.
//

import SwiftUI

struct SecondPageView: View {
    
//    struct ListDetails {
//        var image : String
//        var title : String
//        var descs : String
//        var rate : String
//        var weight : String
//
//    }
    
    var allDetails : [ListDetails] = [ListDetails(image: "v1", title: "Veg carry", descs:"All vegetable  spicy masala with coconut juice", rate: "$100", weight: "300 gms"),
    ListDetails(image: "v2", title: "Corn BB", descs: "Smoke flavour with nin veg taste", rate: "$120", weight: "500 gms"),
    ListDetails(image: "v3", title: "Dhal Gravy", descs: "Sea crap spicy masala gravy", rate: "$320", weight: "325 gms"), ListDetails(image: "v6", title: "Meals", descs: "Chenninat chicken masala gravy", rate: "$220", weight: "400 gms"), ListDetails(image: "v4", title: "Meals", descs: "Chicken leg deep fry with lemon and onion", rate: "$90", weight: "543 gms"), ListDetails(image: "v5", title: "Veg kuruma", descs: "homely masala chiken with tender chicken", rate: "$110", weight: "237 gms")]
    
    var body: some View {
       List {
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
                            Image("vegicon")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
//                        .frame(width: 200, height: 50, alignment: .leading)
            
                            
                        Text("\(item.descs)")
                            .font(.system(size: 12))
                            .padding(.bottom)
//                            .multilineTextAlignment(.leading)
//                            .frame(width: 200, height: 50)
                        HStack() {
                            Text("\(item.rate)")
                                .bold()
                            Text("\(item.weight)")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                            
                            Button(action: {
                                
                            }, label: {
                                Text("Add")
                                    .frame(width: 60, height: 30)
                                    .foregroundColor(.white)
                                    .background(Color.green)
                                    .cornerRadius(15)
//                                    .padding()
                                
                            })
                            
                        }
                    }
                }
                    
            }
        }
    }
}

struct SecondPageView_Previews: PreviewProvider {
    static var previews: some View {
        SecondPageView()
    }
}
