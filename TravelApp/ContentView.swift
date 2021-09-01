//
//  ContentView.swift
//  TravelApp
//
//  Created by Oleg Kudimov on 8/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                DiscoverCategoriesView()
                
                PopularDestinationsView()
                
                PopularRestarauntsView()
                
                TradingCreatorsView()
                
                
            }
            .navigationTitle("Discover")
        }
        
    }
}


struct Destination: Hashable {
    let name, country, imageName: String
}


struct PopularDestinationsView: View {
    
    let destionations: [Destination] = [
        .init(name: "Paris", country: "France", imageName: "eiffel_tower"),
        .init(name: "Tokyo", country: "Japan", imageName: "japan"),
        .init(name: "New York", country: "USA", imageName: "new_york")
    ]
    var body: some View {
        VStack {
            HStack {
                Text("Popular Destinations")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 14, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(destionations, id: \.self) { destination in
                        VStack(alignment: .leading, spacing: 0) {
                            
                            Image(destination.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 125, height: 125)
                                .clipped()
                                .cornerRadius(5)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 6)
                     
                       
                            Text(destination.name)
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 12)
                            Text(destination.country )
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 12)
                                .padding(.bottom, 8)
                                .foregroundColor(.gray)
                            
                        }
                            //.frame(width: 125)
                            .background(Color(.init(white: 0.9, alpha: 1)))
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.init(top: 0, leading: 0, bottom: 4, trailing: 0))
                    }
                }.padding(.horizontal)
                
            }
            
        }
    }
}


struct Restaurants: Hashable {
    let name, imageName: String
    
}


struct PopularRestarauntsView: View {
    
    let restaurants: [Restaurants] = [
        .init(name: "Japan's Finest Tapas", imageName:  "tapas"),
        .init(name: "Bar & Grill", imageName:  "bar_grill")
    ]
    var body: some View {
        VStack {
            HStack {
                Text("Popular Places to eat")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 14, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(restaurants, id: \.self) { restaurant in
                        HStack(spacing: 2) {
                            Image(restaurant.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .clipped()
                                .padding(.init(top: 6, leading: 6, bottom: 6, trailing: 1))
                            
                            VStack(alignment: .leading, spacing: 6) {
                                HStack {
                                    Text(restaurant.name)
                                    Spacer()
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.gray)
                                            
                                    })
                                    
                                }
                                
                                
                                HStack {
                                    Image(systemName: "star.fill")
                                    Text("4.7 • Sushi • $$")
                                }
                                Text("Tokyo, Japan")
                                    
                            }
                            .font(.system(size: 12, weight: .semibold))
                                
                            Spacer()
                        }
                            .frame(width: 230)
                            .background(Color(.init(white: 0.9, alpha: 1)))
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.init(top: 0, leading: 0, bottom: 4, trailing: 0))
                    }
                }.padding(.horizontal)
            }
        }
    }
}


struct User: Hashable {
    let name, imageName: String
}


struct TradingCreatorsView: View {
    
    let users: [User] = [
        .init(name: "Amy Adams", imageName: "amy"),
        .init(name: "Billy", imageName: "billy"),
        .init(name: "Sam Smith", imageName: "sam")
    ]
    var body: some View {
        VStack {
            HStack {
                Text("Trending Creators")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 14, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 8) {
                    ForEach(users, id: \.self) { user in
                        VStack {
                            Image(user.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .cornerRadius(60)
                            Text(user.name)
                                .font(.system(size: 12, weight: .semibold))
                                .multilineTextAlignment(.center)
                            
                        }
                        .frame(width: 60)
                            .shadow(color: .gray, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2.0)
                            .padding(.init(top: 0, leading: 0, bottom: 4, trailing: 0))
                    }
                }.padding(.horizontal)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Category: Hashable {
    let name: String
    let imageName: String
}

struct DiscoverCategoriesView: View {
    
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "bag.fill")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 12) {
                ForEach(categories, id: \.self) { category in
                    VStack(spacing: 8) {
                        Image(systemName: category.imageName)
                            .foregroundColor(.white)
                            
                            .frame(width: 64, height: 64)
                            .background(Color.gray)
                            .cornerRadius(64)
                            .shadow(color: .gray, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2.0)
                        Text(category.name)
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 64)
                }
            }
            .padding(EdgeInsets(.init(top: 4, leading: 15, bottom: 4, trailing: 15)))
        }
    }
}
