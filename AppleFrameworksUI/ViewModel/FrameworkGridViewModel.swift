//
//  FrameworkGridViewModel.swift
//  AppleFrameworksUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailedView = true
        }
    }
    
    @Published var isShowingDetailedView: Bool = false
    
    
    let columns: [GridItem] = [GridItem(.flexible(), spacing: 1),
                               GridItem(.flexible(), spacing: 1),
                               GridItem(.flexible(), spacing: 1)]
}
