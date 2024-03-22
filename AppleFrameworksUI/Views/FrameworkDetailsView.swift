//
//  FrameworkDetailsView.swift
//  AppleFrameworksUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct FrameworkDetailsView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            CloseButton()
            
            Spacer()
            
            FrameworkItemCell(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                print("tapped")
            } label: {
                 LearnMoreButtonView(title: "Learn more")
            }
        }
    }
}


#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework)
}
