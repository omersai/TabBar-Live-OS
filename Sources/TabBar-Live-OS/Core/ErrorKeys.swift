//
//  ErrorKeys.swift
//  TabBar-Live-OS
//
//  Created by Ömer Saitoğlu on 28.09.2024.
//

import Foundation

enum ErrorKeys: String, Codable{
    case openError = "Error: GIF file could not be opened."
    case loadError = "GIF could not be loaded."
    case tabBarError = "Tab bar item view not found."
}
