import SwiftUI

struct Quincy: View {
    @State var year = 10
    @State var textYear = "Sophmore"
    @State var events = ""
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 90)
                    .foregroundColor(.blue)
                    .shadow(radius: 15)
                VStack {
                    Text("All About")
                        .font(.title)
                    Text("Quincy Alex")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                }
            }
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 150, height: 70)
                    .foregroundColor(.orange)
                    .shadow(radius: 15)
                Button(action: {
                    year += 1
                    if year > 12 {
                        year = 10
                        textYear = "Sophmore"
                    }
                    if year == 10 {
                        textYear = "Sophmore"
                    } else if year == 11 {
                        textYear = "Junior"
                    } else if year == 12 {
                        textYear = "Senior"
                    }
                }, label: {
                    Text("\(year)th grade\n\(textYear) Year")
                        .foregroundColor(.red)
                })
            }
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 150, height: 70)
                    .foregroundColor(.red)
                    .shadow(radius: 15)
                VStack {
                    Text("I run track")
                    Button(action: {
                        events += "100m, 200m"
                        if events == "100m, 200m100m, 200m" {
                            events = ""
                        }
                    }, label: {
                        Text("Events: \(events)")
                    })
                }
            }
        }
    }
}
    
