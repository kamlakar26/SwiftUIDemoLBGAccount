//
//  CommentsHomeView.swift
//  SwiftUIDemoLBGAccount
//
//  Created by Kamlakar Shimpi on 11/12/24.
//

import SwiftUI

struct CommentsHomeView: View {
    private var viewModel = CommentViewModel()
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.comments) { comment in
                        NavigationLink(destination: DetailCommentView(commentModel: comment), label:  {
                            CommentRow(commentModel: comment)
                        })
                    }
                }
                .onAppear {
                    viewModel.fetchComments()
                }
                .navigationTitle("Comment List")
            }
        }
    }
}

#Preview {
    CommentsHomeView()
}

