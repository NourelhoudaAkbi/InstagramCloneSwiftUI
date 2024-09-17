//
//  ContentView.swift
//  InstagramCloneSwiftUI
//
//  Created by Nour el houda Akbi on 17/9/2024.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        ZStack{
            
            VStack{
                Header()
                ScrollView{
                    Stories()
                    Posts()
                }
                BottomNavBar()
            }
        }
    }
}
struct Header : View {
    var body : some View {
        HStack (alignment: .center, spacing: 5){
            Image("InstaLogo")
                .resizable()
                .frame(width:100, height: 30)
            Image(systemName : "chevron.down")
                //.foregroundColor(.white)
                .font(.system(size: 13).bold())
            
            Spacer()
            HStack(alignment: .center, spacing: 20) {
               
                Image(systemName: "suit.heart")
                Image(systemName: "message.badge")
            }
           // .foregroundColor(.white)
            .font(.system(size: 20).bold())
        }
        .padding(.init(top: 10, leading: 15, bottom: 1, trailing: 10))
    }
}

struct myStory : View {
    let colorGradient = LinearGradient(gradient: Gradient(colors: [.purple, .red, .pink, .orange]), startPoint: .top, endPoint: .bottom)
    var body: some View {
        VStack {
            Image("ppic3")
                .resizable()
                .frame(width:55, height:55)
                .clipShape(Circle())
                .overlay(Circle().stroke(colorGradient, lineWidth: 2).padding(-5))
            
            Text("Your story")
                .font(.caption)
               // .foregroundColor(.white)
        }
        
    }
}

struct storyCard : View {
    let profilePicture : String
    let userName : String
    
    let colorGradient = LinearGradient(gradient: Gradient(colors: [.purple, .red, .pink, .orange]), startPoint: .top, endPoint: .bottom)
    var body: some View {
        VStack {
            Image(profilePicture)
                .resizable()
                .frame(width:55, height:55)
                .clipShape(Circle())
                .overlay(Circle().stroke(colorGradient, lineWidth: 2).padding(-5))
            
            Text(userName)
                .font(.caption)
               // .foregroundColor(.white)
        }
    }
}

struct post : View {
    var body : some View {
        VStack {
            HStack {
                Image("ppic3")
                    .resizable()
                    .frame(width:30, height: 30)
                    .clipShape(Circle())
                
                Text("katie")
                    .font(.caption)
                    .bold()
                Spacer()
                
                Image(systemName: "ellipsis")
            }
            //.foregroundColor(.white)
            
            HStack {
                Image("postpic")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                   
            }
            VStack (alignment: .leading) {
                HStack {
                    Image(systemName: "suit.heart")
                    Image(systemName: "bubble.right")
                    Image(systemName: "paperplane")
                    Spacer()
                    
                    Image(systemName: "bookmark")
                
                }
               // .foregroundColor(.white)
                .padding(.init(top: 1, leading: 0, bottom: 0, trailing: 0))
                HStack {
                    Text("1,811 likes")
                        .font(.caption)
                        .bold()
                }
               // .foregroundColor(.white)
                .padding(.init(top: 2, leading: 0, bottom: 0, trailing: 0))
                
                
                HStack (alignment: .firstTextBaseline, spacing: 3) {
                    Text("**katie** Enjoying nature .. ")
                        .font(.caption)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
               // .foregroundColor(.white)
                .offset(y:3)
                
                VStack(alignment: .leading, spacing: 15)
                {
                    
                    
                    HStack {
                        Text("View all 12 comments")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .offset(y:5)
                    }
                    
                    HStack {
                        Text("1 day ago")
                            .font(.caption2)
                            .foregroundColor(.secondary)
                        
                    }
                }
            }
        }
        //.foregroundColor(.white)
        .padding(.init(top: 3, leading: 15, bottom: 10, trailing: 15))
        
        
    }
    
}

struct Posts : View {
    
    var body: some View {
        ForEach(1..<5) { i in
            post()
        }
    }
}

struct Stories : View {
    let images = ["ppic1", "ppic2", "ppic3", "ppic4", "ppic5"]
    
    let colorGradient = LinearGradient(gradient: Gradient(colors: [.purple, .red, .pink, .orange]), startPoint: .top, endPoint: .bottom)
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                myStory()
                ForEach(1..<images.count) { i in
                    storyCard(profilePicture: "ppic\(i)", userName: "igUser\(i)")
                }
                .padding(.init(top: 0, leading: 15, bottom: 0, trailing:0))
                
                
            }
            .padding(.init(.init(top: 6, leading: 15, bottom: 0, trailing: 0)))
        }
        
    }
}

struct BottomNavBar : View {
    var body : some View {
        
        HStack() {
            VStack {
                Image(systemName: "house.fill")
                Text("")
            }
            Spacer()
            VStack {
                Image(systemName: "magnifyingglass")
                Text("")
            }
            Spacer()
            VStack {
                Image(systemName: "plus.app")
                Text("")
            }
            Spacer()
            VStack {
                Image(systemName: "bag")
                Text("")
            }
            Spacer()
            VStack{
                Image("ppic3")
                    .resizable()
                    .frame(width:20, height: 20)
                    .clipShape(Circle())
                Text("")
            }
        }
        .font(.system(size: 18))
       // .foregroundColor(.white)
        .padding(.init(top: 10, leading: 30, bottom: 10, trailing: 30))
    }
}

#Preview {
    ContentView()
}
