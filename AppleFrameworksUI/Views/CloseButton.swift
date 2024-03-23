//
//  CloseButton.swift
//  AppleFrameworksUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct CloseButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
               isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                
            }
        }.padding()
    }
}

#Preview {
    CloseButton(isShowingDetailView: .constant(false))
}
