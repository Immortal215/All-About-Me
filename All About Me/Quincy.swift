import SwiftUI

struct Quincy: View {
    @State var year = 10
    @State var textYear = "Sophmore"
    @State var events = ""
    
    var body: some View {
        VStack {
            Text("Quincy Alex")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
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
