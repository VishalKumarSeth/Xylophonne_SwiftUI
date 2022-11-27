//
//  ContentView.swift
//  Harmonium
//
//  Created by Vishal Kumar on 27/11/22.
//

import SwiftUI

struct ContentView: View {
    var list:[Int] = [1,2,3,4,5,6,7]
    var colors:[Color] = [.red,.yellow,.purple,.green,.blue,.teal,.orange]
    var index:Int = 0
    
    var body: some View {
        NavigationView { 
            VStack {
                GeometryReader { geometry in
                    List { 
                        ForEach(list,id:\.self) { item in
                            HStack(spacing: 10) { 
                                Text("")
                                    .frame(width: geometry.size.width, height: geometry.size.height/9)
                                    
                            }
                            .contentShape(Rectangle())
                            .background(colors[item-1])
                            .listRowBackground(colors[item-1])
                            .onTapGesture {
                                print(item)
                                playSound(soundName: "note\(item)")
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    .scrollDisabled(true)
                    .listStyle(.plain)
                }
            }
            .background(.teal)
            .navigationTitle("Piano")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
