//
//  ContentView.swift
//  CV
//
//  Created by eyh.mac on 10.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = "Eyhan"
    @State private var description = "Hi, I'm Eyhan.i am a 4-year\n experienced web and mobile developer."
    
    let socialMediaLinks = [
        ("gitHub", "https://github.com/eyhdev?tab=repositories"),
        
        ("instagram", "https://www.instagram.com/eyh.dev/"),
        
        ("X", "https://twitter.com/bncibrail"),
        
        ("Th", "https://www.threads.net/@eyh.dev?igshid=MzRlODBiNWFlZA%3D%3D"),
        
        ("Be", "https://www.behance.net/ayhanjibrael"),
        
        ("YT", "https://www.youtube.com/channel/UCjPrqdZpel5bS5UBUAjwszA"),
    ]
    
    let items = [
        ("Animation SwiftUI", "Animations in SwiftUI play an important role in making the user interface more expressive and user-friendly. Creating animation with SwiftUI is quite easy and follows the following basic steps."),
        
        ("MapApp SwiftUI", "SwiftUI MapApp is an iOS application developed with SwiftUI and includes map features. SwiftUI is a modern user interface creation framework used to do development for Apple's iOS, macOS, watchOS and tvOS. SwiftUI allows developers to create user interfaces faster and more effectively."),
        
        ("SwiftUI-Animated-Sticky-Header", "May refer to an example of an animated sticky header (sticky header) developed using SwiftUI, or an application or item containing scrollable content. Sticky header means that when the user scrolls through a content, the header stays at the top of the page and stays under or behind the content."),
        
        
        ("History-App SwiftUI", "may refer to a mobile application used to access information about history, study historical events, or explore the past. This kind of application can help users to research information about history, review historical events and discover historical places. Here are the main features and components of such an application:"),
        
        
    ]
    
    //source code: GitHub
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ZStack{
                        VStack{
                            Text("Hi, I'm\(name)")
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                                .offset(x: 24)
                            
                            Text(description)
                                .font(.system(size: 10))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                                .offset(x: 45)
                        }
                        VStack{
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 90, height: 90)
                                .cornerRadius(100)
                                .padding(33)
                                .offset(x: -20)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    }
                    .frame(width: 372, height: 163)
                    .background(.ultraThinMaterial)
                    .cornerRadius(15)
                }
                .padding()
                
                ZStack{
                    VStack(alignment: .leading){}
                    VStack{
                        Text("Follow Me")
                            .font(Font.custom("DIN Alternate", size: 13).weight(.bold))
                            .offset(x: -130, y: -30)
                    }
                    .frame(width: 372, height: 107)
                    .background(.ultraThinMaterial)
                    .cornerRadius(15)
                    
                    VStack{
                        HStack{
                            ForEach(socialMediaLinks, id: \.0) { link in
                                Link(destination: URL(string: link.1)!) {
                                    Image(link.0)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 35, height: 35)
                                        .padding(7)
                                }
                            }
                        }
                        .offset(y: 10)
                    }
                }
                ZStack{
                    VStack(alignment: .leading){}
                        .frame(width: 372, height: 474)
                        .background(.ultraThinMaterial)
                        .cornerRadius(15)
                        .padding()
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text("Links")
                                .font(.title3)
                                .fontWeight(.bold)
                                .offset(x: 20)
                            
                            ForEach(items, id: \.0) { item in
                                
                                HStack{
                                    Image(systemName: "link")
                                        .padding()
                                    
                                    VStack(alignment: .leading){
                                        Text(item.0)
                                            .font(Font.custom("DIN Alternate", size: 15).weight(.semibold))
                                            .foregroundColor(.gray)
                                        Text(item.1)
                                            .font(Font.custom("DIN Alternate", size: 10))
                                            .frame(width: 228, alignment: .topLeading)
                                    }
                                }
                                .padding(2)
                            }
                        }
                        .padding(.trailing, 44)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
