//
//  ContentView.swift
//  SwiftUI CoolIcons
//
//  Created by Amben on 6/15/21.
//

import SwiftUIFontIcon
import SwiftUI

struct ContentView: View {
    
    @State var updateBg = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    HStack {
                        Text("Material Icon (Assistant Icon)")
                        Spacer()
                        FontIcon.text(.materialIcon(code: .assistant),
                                      fontsize: 80,
                                      color: .blue)
                    }// end of hstack
                    .padding()
                    
                    HStack {
                        Text("Material Icon (Sync Icon)")
                        Spacer()
                        FontIcon.text(.materialIcon(code: .sync),
                                      fontsize: 80,
                                      color: .yellow)
                    }// end of hstack
                    .padding()
                    
                    HStack {
                        Text("Ionicon Button (Add Icon)")
                        Spacer()
                        FontIcon.button(.ionicon(code: .ios_add_circle),
                                        action: {
                                            self.updateBg.toggle()
                                        },
                                        padding: 0,
                                        fontsize: 80,
                                        color: .pink)
                    }// end of hstack
                    .padding()
            
                }// end of vstack
            }// end of zstack
            .ignoresSafeArea()
            .background(updateBg ? Color.green : Color(.systemBackground))
            .navigationTitle("Custom Icons")
        }// end of navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
