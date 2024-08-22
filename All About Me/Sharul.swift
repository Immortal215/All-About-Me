import SwiftUI

struct Sharul: View {
    @State var screenWidth = UIScreen.main.bounds.width
    @State var disClick = false
    @State var golfClick = false 
    @State var truths = [
        "I have a black belt": true,
        "I have 2 sisters": false,
        "I like to touch slime": true
    ]
    @State var clicked = [false, false, false]
    
    var body: some View {
        ScrollView {
            Text("All About Me")
                .font(.largeTitle)
                .padding()
            
            Text("Sharul Shah")
                .fontWeight(.black)
            
            // Sophomore
            ZStack {
                Box()
                
                HStack {
                    Image(systemName: "book.closed")
                    Text("Sophomore! | 15 yrs")
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
                    .padding(.bottom, 10)
                    DisclosureGroup("Teams", isExpanded: $disClick) {
                        Text("Sharks (13)")
                        Text("Core Aquatics (14-15)")
                        Text("Prospect Swim Team (14-15)")
                    }
                    
                    .fixedSize()
                    
                }
                .padding()
                
                Image(systemName: "figure.pool.swim")
                    .offset(y: disClick ? -10 : 5)
                
            }
            
            // golf 
            ZStack {
                Box()
                VStack {
                    HStack {
                        Text("Favorite Golfers")
                            .font(.title3)
                        
                    }
                    .padding(.bottom, 10)
                    DisclosureGroup("Golfers", isExpanded: $golfClick) {
                        Link(destination: URL(string:"https://tigerwoods.com")!)
                        {
                            Text("Tiger Woods")
                                .underline()
                        }
                        Link(destination: URL(string: "https://ijga.bluegolf.com/bluegolf/ijga23/event/ijga2315/contest/1/profile/apatel229/tresults.htm?")!) {
                            Text("Aarnav P Golf")
                                .underline()
                        }
                        
                        Text("okpokopkpokpokopkpokop")
                            .foregroundStyle(.white)
                        
                    }
                    
                    .frame(maxWidth: 300)
                    .fixedSize(horizontal: true, vertical: false)
                    
                }
                .padding()
                
                Image(systemName: "figure.golf")
                    .offset(y: golfClick ? -10 : 5)
                
            }
            
            // two truth 1 lie 
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
                        // really cool, enumerated makes the array have a tuple value (1 counting, 1 the item). 
                        // .map makes it so as it goes through the array, it makes sure that it is an array and not a dictionary (able to be accesed at a given index)
                        // ForEach needs an identifier for each item in the list and \.offset gives the index given by the enumerated as the indentifier
                        ForEach(truths.keys.enumerated().map { $0 }, id: \.offset) { (index, key) in
                            
                            Button {
                                clicked[index].toggle()
                            } label: {
                                Text(clicked[index] ? "\(truths[key]!)" : key)
                                    .underline()
                                    .animation(.snappy(duration: 0))
                            }
                            
                        }
                    }
                    .fixedSize()
                    .offset(y: -20)
                    
                }
                
            }
            .padding()
            
        }
        .foregroundStyle(.black)
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
