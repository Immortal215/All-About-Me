import SwiftUI

struct Quincy: View {
    var color = "blue"
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Quincy Alex")
                .foregroundColor(Color(color))
        })
        
    }
}
