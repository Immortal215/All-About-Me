import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Quincy()
                .tabItem {
                    Label("Quincy", systemImage: "pencil")
                }
                .tag(0)
            
            Sharul()
                .tabItem {
                    Label("Sharul", systemImage: "text.book.closed.fill")
                }
                .tag(1)
        }
        .tabViewStyle(.automatic)
    }
}

#Preview {
    ContentView()
}


