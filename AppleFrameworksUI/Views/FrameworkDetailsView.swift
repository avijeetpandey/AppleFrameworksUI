//
//  FrameworkDetailsView.swift
//  AppleFrameworksUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct FrameworkDetailsView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            CloseButton(isShowingDetailView: $isShowingDetailView)
            
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
    FrameworkDetailsView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
