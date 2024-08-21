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
    @State var clicked = [
        "I have a black belt" : false,
        "I have 2 sisters" : false, 
        "I like to touch slime" : false
    ]
    
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
                        ForEach(Array(truths.keys), id: \.self) { key in
                            Button {
                                clicked[key]!.toggle()
                            } label: {
                                if clicked[key] == false {
                                    Text(key)
                                    
                                } else {
                                    Text("\(truths[key]!)")
                                    
                                }
                                
                                
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
