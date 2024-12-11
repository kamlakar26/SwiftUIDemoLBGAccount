//
//  MockCommentViewService.swift
//  SwiftUIDemoLBGAccount
//
//  Created by Kamlakar Shimpi on 11/12/24.
//

import Foundation
@testable import SwiftUIDemoLBGAccount

class MockCommentViewService: CommentViewServiceDelegate {
    
    
    var result: Result<[SwiftUIDemoLBGAccount.CommentModel]?, SwiftUIDemoLBGAccount.DemoError>!
   
    func getComments(completion: @escaping (Result<[SwiftUIDemoLBGAccount.CommentModel]?, SwiftUIDemoLBGAccount.DemoError>) -> Void) {
        completion(result)
    }

    func comments() -> [CommentModel]? {
        do {
            guard let fileUrl =  Bundle.main.url(forResource: "Comments", withExtension: "json") else {
                return nil
            }
            let data = try Data(contentsOf: fileUrl)
            return try JSONDecoder().decode([CommentModel].self, from: data)
        } catch _ {
            return nil
        }
    }
    
}
