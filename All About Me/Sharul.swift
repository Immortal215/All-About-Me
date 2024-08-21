import SwiftUI

struct Sharul: View {
    @State var screenWidth = UIScreen.main.bounds.width
    @State var disClick = false
    @State var truths = [
        "I have a black belt": true,
        "I have 2 sisters": false,
        "I like to touch slime": true
    ]
    @State var clicked = [
        "I have a black belt" : false,
        "I have 2 sisters" : false, 
        "I like to touch slime" : false
    ]
    
    var body: some View {
        ScrollView {
            Text("All About Me")
                .font(.largeTitle)
            Spacer()
            Text("Sharul Shah")
                .fontWeight(.black)
            
            // Sophomore
            ZStack {
                Box()
                
                HStack {
                    Image(systemName: "book.closed")
                    Text("Sophomore! | 15")
                        .textCase(.uppercase)
                }
                .padding()
                
            }
            .padding()
            
            // Swimmer
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
                VStack {
                    HStack {
                        Image(systemName: "book")
                        Text("Two Truths, 1 Lie!")
                            .textCase(.uppercase)
                            .font(.title3)
                        Image(systemName: "book")
                        
                    }
                    .padding()
                    
                    ScrollView {
                        ForEach(Array(truths.keys), id: \.self) { key in
                            Button {
                              clicked[key]!.toggle()
                            } label: {
                                if clicked[key] == false {
                                    Text(key)
                                        .foregroundStyle(.black)
                                } else {
                                    Text("\(truths[key]!)")
                    
                                }
                                
                                    
                            }
                        }
                        
                    }
                    .fixedSize()
                    .offset(y: -20)
                    //.padding()
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
