//
//  CommentViewModelTests.swift
//  SwiftUIDemoLBGAccountTests
//
//  Created by Kamlakar Shimpi on 11/12/24.
//

import XCTest
import Combine
@testable import SwiftUIDemoLBGAccount

final class CommentViewModelTests: XCTestCase {
    func test_API_Failed_Comments() {
        let mockServices = MockCommentViewService()
        mockServices.result = .failure(.invalidData)
        let sut = CommentViewModel(commentViewServices: mockServices)
        sut.fetchComments()
        XCTAssert(sut.comments.isEmpty)
    }
    
    func test_API_Success_Comments() {
        let mockServices = MockCommentViewService()
        guard let comments = mockServices.comments() else { return }
        mockServices.result = .success(comments)
        let sut = CommentViewModel(commentViewServices: mockServices)
        let expectation = expectation(description: "Fetching Comments")
        var cancellable: AnyCancellable?
        cancellable = sut.$comments
            .dropFirst()
            .sink(receiveValue: { value in
                expectation.fulfill()
            })
        
        sut.fetchComments()
        wait(for: [expectation], timeout: 5)
        XCTAssert(!sut.comments.isEmpty)
    }
}
