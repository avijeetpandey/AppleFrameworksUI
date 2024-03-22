//
//  LearnMoreButton.swift
//  AppleFrameworksUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct LearnMoreButtonView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .frame(width: 300,height: 48)
            .background(.red)
            .foregroundStyle(.white)
            .font(.system(size: 20, weight: .semibold, design: .default))
            .clipShape(.rect(cornerRadius: 8))
    }
}


#Preview {
    LearnMoreButtonView(title: "Learn more")
}
