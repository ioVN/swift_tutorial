//
//  ContentView.swift
//  Swift_Tutorial
//
//  Created by CáMập-DưaChuột on 11/4/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            // Use system images from SF Symbols
            // Image(systemName: "house.fill")
            //      .imageScale(.large)
            //      .foregroundStyle(.tint)
            //      .padding()
            
            //  Use images from the asset catalog, which can be added to your project in Xcode.
            Image("Logo-ioVN")
                .resizable()
                .scaledToFit() // => same as .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .frame(width: 100, height: 100)
                .accessibilityHidden(true)
            
            HStack {
                
                Text("Hello, ioVN")
                //  .font(.title3) <- shadow by HStack label
                //  .fontWeight(.bold) <- shadow by HStack label
                //  .foregroundStyle(.red) <- shadow by HStack label
                
                // Use `Spacer` to create flexible space between views in a layout.
                // Spacer()
                
                Image(systemName: "wand.and.sparkles.inverse")
                    .imageScale(.small) // => to small image
                    .offset(x:0, y: -2) // => to move the image up by 2 points
                //  .foregroundStyle(.red) <- shadow by HStack label
            }
            .font(.title3)
            .fontWeight(.bold)
            .foregroundStyle(.red)
            
            Text("Come visit for an experience of lifetime...")
            //  .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.light) // => preview in light mode only
}
