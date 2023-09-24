

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                /*Text("Newest picks for today!")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)*/
                Image("sephora")
                    //.frame(width: 100, height: 100, alignment: .center)
                    .resizable()
                    //.edgesIgnoringSafeArea(.all)
                    
                ZStack{
                    
                    Rectangle()
                        .foregroundColor(Color(hue: 0, saturation: 0.047, brightness: 0.944))
                        .frame(width: 200, height:50) // Adjust the size as needed
                        .cornerRadius(25)
                    NavigationLink(destination: ActualView()) {
                     Text("Shop Now!")
                    }
                    
                    
                }
                
                    
                    
                    
                    
                
                
            }
            
        }
        //.padding()
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
