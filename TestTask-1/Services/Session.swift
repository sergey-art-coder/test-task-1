//
//  Session.swift
//  TestTask-1
//
//  Created by Сергей Ляшенко on 12.10.2021.
//

import Foundation

final class Session {
    
    static let shared = Session()
    
    private init() {}
    
    var token = "" // хранение токена в VK
    var userId = "" // хранение идентификатора пользователя VK
}
