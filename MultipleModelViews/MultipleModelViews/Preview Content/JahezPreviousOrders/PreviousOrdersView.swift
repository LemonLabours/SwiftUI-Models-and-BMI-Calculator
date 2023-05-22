
import SwiftUI

struct PreviousOrdersView: View {
    var body: some View {
        ZStack{
            
            VStack{
                Spacer()
                PHeaderView()
                
                ScrollView{
                    
                    ForEach(allOrders){ order in
                        VStack{
                            Spacer()
                                .frame(height: 30)
                            HStack{
                                Spacer()
                                    .frame(width: 30)
                                VStack (alignment: .leading){
                                    Text(order.resturantName)
                                    Text(order.dateOfOrder)
                                        .foregroundColor(.gray)
                            
                                }
                                Spacer()
                                Image(order.status)
                                    .resizable()
                                    .frame(width: 90, height: 30)
                                    .cornerRadius(10)
                                Spacer()
                                    .frame(width: 30)
                            }
                            Spacer()
                                .frame(height: 30)
                            Divider()
                        }

                        
                    }
                }
            }
        }
    }
}

struct PreviousOrdersView_Previews: PreviewProvider {
    static var previews: some View {
        PreviousOrdersView()
    }
}
