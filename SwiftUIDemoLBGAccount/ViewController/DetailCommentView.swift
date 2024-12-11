//
//  DetailCommentView.swift
//  SwiftUIDemoLBGAccount
//
//  Created by Kamlakar Shimpi on 11/12/24.
//

import SwiftUI

struct DetailCommentView: View {
    var commentModel: CommentModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("Name:- \(commentModel.name ?? "None")")
                .font(.title3)
                .accessibilityLabel("Name \( commentModel.name ?? ""))")
            Text("Email:- \(commentModel.email ?? "None")")
                .font(.title2)
                .accessibilityLabel("Email \( commentModel.email ?? ""))")
            Text("Body:- \(commentModel.body ?? "None")")
                .font(.body)
                .accessibilityLabel("Body \( commentModel.body ?? ""))")
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text("Comment Details"), displayMode: .inline)
    }
}

#Preview {
    DetailCommentView(commentModel: CommentModel(postID: 1, id: 1, name: "id labore ex et quam laborum", email: "Eliseo@gardner.biz", body: "audantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"))
}

