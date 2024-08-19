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
            
            //sophmore
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.black, lineWidth: 2)
                        
                    )
                    .shadow(radius: 5)
                    .scaleEffect(0.9)

                HStack {
                    Image(systemName: "book.closed")
                    Text("Sophmore!")
                        .textCase(.uppercase)
                }
                .padding()
                
            }
            
            
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
                    HStack {
                        Image(systemName: "drop")
                        Text("Swimmer")
                        Image(systemName: "drop")
                    }
                    DisclosureGroup("Teams") {
                            Text("Sharks (13)")
                            Text("Core Aquatics (14-15)")
                    }
                    .foregroundStyle(.black)
                    .fixedSize()
                    
                }
                .padding()
                
                Image(systemName: "person")
                    .offset(y:-5)

            }
        }
    }
}
#Preview {
    ContentView()
}
