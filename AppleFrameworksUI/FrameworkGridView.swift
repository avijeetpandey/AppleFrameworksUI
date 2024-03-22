//
//  FrameworkGridView.swift
//  AppleFrameworksUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible(), spacing: 1),
                               GridItem(.flexible(), spacing: 1),
                               GridItem(.flexible(), spacing: 1)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkItemCell(framework: framework)
                    }
                }.navigationTitle("🍎 Frameworks")
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
