//
//  StartButtonView.swift
//  Fructus (iOS)
//
//  Created by Brando Lugo on 5/26/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }) {
            HStack(spacing: 8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: BUTTOn
        .accentColor(Color.white)
    }
}

//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
