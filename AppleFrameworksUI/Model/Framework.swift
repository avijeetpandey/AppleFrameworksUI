//
//  Framework.swift
//  AppleFrameworksUI
//
//  Created by Avijeet on 22/03/24.
//

import Foundation

struct Framework: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
