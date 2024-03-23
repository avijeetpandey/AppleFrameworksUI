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
    @State var isShowingSafariView: Bool = false
    
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
                isShowingSafariView = true
            } label: {
                 LearnMoreButtonView(title: "Learn more")
            }
        }.fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}


#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
