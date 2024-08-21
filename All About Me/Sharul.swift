import SwiftUI

struct Sharul: View {
    @State var screenWidth = UIScreen.main.bounds.width
    @State var disClick = false
    var body: some View {
        ScrollView {
            Text("All About Me")
                .font(.largeTitle)
            Spacer()
            Text("Sharul Shah")
                .fontWeight(.black)
            
            //sophmore
            ZStack {
                Box()
                
                HStack {
                    Image(systemName: "book.closed")
                    Text("Sophmore!")
                        .textCase(.uppercase)
                }
                  .padding()
                
            }
            .padding()
            
            // swimmer
            ZStack {
                Box()
                VStack {
                    HStack {
                        Image(systemName: "drop")
                        Text("Swimmer")
                            .font(.title3)
                        Image(systemName: "drop")
                    }
                    DisclosureGroup("Teams", isExpanded: $disClick) {
                        Text("Sharks (13)")
                        Text("Core Aquatics (14-15)")
                        Text("Prospect Swim Team (14-15)")
                    }
                    .foregroundStyle(.black)
                    .fixedSize()
                    
                }
                .padding()
                
                Image(systemName: "person")
                    .offset(y: disClick ? -15 : 0)
                    
                
            }
            
            ZStack {
               Box()
                VStack{
                    HStack {
                        Image(systemName: "book")
                        Text("Two Truths!")
                            .textCase(.uppercase)
                        Image(systemName: "book")

                    }
                    .padding()
                    

                }
                
            }
            .padding()
        
        }
    }
}

struct Box: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black, lineWidth: 2)
                
            )
            .shadow(radius: 5)
            .scaleEffect(0.9)
    }
}
