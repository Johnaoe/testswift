//
//  mark1.swift
//  checktest
//
//  Created by Jonas Narbutas on 2023-10-10.
//

import SwiftUI

struct ContentView2: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        
    // MARK: - 1. BASIC
        
        AsyncImage(url: URL(string: imageURL))

        var body: some View {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Shit")
                    .font(.system(size: 180))
                    .fontWeight(.black)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.pink, .purple, .blue],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                        )
            }
            .padding()
        }
    
    // MARK: - 2. SCALE
//
//        AsyncImage(url: URL(string: imageURL), scale: 3.0)
//                .scaledToFit()
//                .frame(width: 50, height: 50)
        
        // MARK: - 3. PLACEHOLDER
            
    //        AsyncImage(url: URL(string: imageURL)){
    //            image in image.imageModifier()
    //
    //        } placeholder: {
    //            Image(systemName: "photo.circle.fill").iconModifier()
    //        }
    //        .padding(40)
            
        // MARK: - 4. PHASE
            
    //        AsyncImage(url: URL(string: imageURL)) {phase in
    //            // SUCCESS: The image successfully loaded.
    //            // FAILURE: Failed to load.
    //            // EMPTY: No image is loaded.
    //
    //            if let image = phase.image {
    //                image.imageModifier()
    //            } else if phase.error != nil {
    //                Image(systemName: "ant.circle.fill").iconModifier()
    //            } else {
    //                Image(systemName: "photo.circle.fill").iconModifier()
    //            }
    //        }
    //        .padding(40)
            
            // MARK: - 5. ANIMATION
            
//            AsyncImage(url:  URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
//                switch phase {
//                case .success(let image):
//                    image.imageModifier()
//                        .transition(.move(edge: .bottom))
//                case .failure(_):
//                    Image(systemName: "ant.circle.fill").iconModifier()
//                case .empty:
//                    Image(systemName: "photo.circle.fill").iconModifier()
//                @unknown default:
//                    ProgressView()
//                }
//            }
//            .padding(40)
    }
}
struct ContentView_Previews2: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
