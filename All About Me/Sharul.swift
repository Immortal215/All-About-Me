import SwiftUI

struct Sharul: View {
    @State var screenWidth = UIScreen.main.bounds.width
    var body: some View {
        ScrollView {
            Text("All About Me")
                .font(.largeTitle)
            Spacer()
            Text("Sharul Shah")
                .fontWeight(.black)
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.black, lineWidth: 2)
                        
                    )
                    .shadow(radius: 5)
                
                VStack {
                    Text("Swimmer")
                    Image(systemName: "drop")
                }
                .padding()
                
            }
            .scaleEffect(0.9)
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.black, lineWidth: 2)
                        
                    )
                    .shadow(radius: 5)
                    .scaleEffect(0.9)
                
                VStack {
                    Text("Loves Monkies")
                    Image(systemName: "drop")
                }
                .padding()
            }
        }
    }
}
#Preview {
    ContentView()
}
