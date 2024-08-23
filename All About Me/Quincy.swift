import SwiftUI

struct Quincy: View {
    @State var year = 10
    @State var textYear = "Sophmore"
    @State var events = ""
    @State var correct = false
    @State var wrong = false
    @State var correctAlert = false
    @State var wrongAlert = false
    
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
                    .frame(width: 175, height: 70)
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
                        .foregroundColor(.black)
                })
            }
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 175, height: 70)
                    .foregroundColor(.orange)
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
                            .foregroundColor(.black)
                    })
                }
            }
            Divider()
            .padding()
            Text("Two Truths, 1 Lie")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .underline()
            Button(action: {
                correct = true
                wrong = true
                correctAlert = true
            }, label: {
                Text("I have been to Ireland")
                    .foregroundColor(.black)
                    .background {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 175, height: 70)
                            .foregroundColor(correct ? .red : .purple)
                            .shadow(radius: 15)
                    }
            })
            .alert("That was the lie!", isPresented: $correctAlert, actions: {
                
            })
            .padding(25)
            Button(action: {
                wrong = true
                correct = true
                wrongAlert = true
            }, label: {
                Text("I have six pets")
                    .foregroundColor(.black)
                    .background {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 175, height: 70)
                            .foregroundColor(wrong ? .green : .purple)
                            .shadow(radius: 15)
                    }
            })
            .alert("That wasn't the lie", isPresented: $wrongAlert, actions: {
                
            })
            .padding(25)
            Button(action: {
                wrong = true
                correct = true
                wrongAlert = true
            }, label: {
                Text("I have been to three\ndifferent countries")
                    .foregroundColor(.black)
                    .background {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 175, height: 70)
                            .foregroundColor(wrong ? .green : .purple)
                            .shadow(radius: 15)
                    }
            })
            .alert("That wasn't the lie", isPresented: $wrongAlert, actions: {
                
            })
            .padding(25)
            Button(action: {
                correct = false
                wrong = false
                wrongAlert = false
                correctAlert = false
            }, label: {
                Text("Reset")
            })
        }
    }
}
    
