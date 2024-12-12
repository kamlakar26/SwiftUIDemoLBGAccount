//
//  CommentViewModel.swift
//  SwiftUIDemoLBGAccount
//
//  Created by Kamlakar Shimpi on 11/12/24.
//

import Foundation
import Combine

class CommentViewModel {
    private let commentViewServices: CommentViewServiceDelegate
    
    init(commentViewServices: CommentViewServiceDelegate = CommentViewService()) {
        self.commentViewServices = commentViewServices
    }
    
    var comments = [CommentModel]()
    
    func fetchComments() {
        commentViewServices.getComments {[weak self] result in
            switch result {
            case .success(let comments):
                self?.comments = comments ?? []
            case .failure(let error):
                print(error)
            }
        }
    }
}
