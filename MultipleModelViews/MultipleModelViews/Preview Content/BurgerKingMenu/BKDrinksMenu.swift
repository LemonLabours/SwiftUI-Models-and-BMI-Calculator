

import SwiftUI

        struct BKDrinksMenu: View {
            var body: some View {
                ZStack{
                    Color.bgBK.ignoresSafeArea()
                    
                    VStack {
                        HeaderView()
                        
                        ScrollView{
                            ForEach(allDrinks){ drink in
                                HStack{
                                    Spacer()
                                        .frame(width: 30)
                                    VStack(alignment: .leading) { // Set alignment to leading
                                        Text(drink.drinkName)
                                            .foregroundColor(Color.brownBK)
                                            .bold()
                                        
                                        Text(drink.drinkPrice)
                                            .foregroundColor(Color.brownBK)
                                    }
                                    Spacer()
                                    Image(drink.drinkImage)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    Spacer()
                                        .frame(width: 30)
                                }
                                
                            }
                        }
                    }
                }
            }
        }

struct BKDrinksMenu_Previews: PreviewProvider {
    static var previews: some View {
        BKDrinksMenu()
    }
}
