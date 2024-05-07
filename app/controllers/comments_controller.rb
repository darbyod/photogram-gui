class CommentsController < ApplicationController

def create

    input_photo_id = params.fetch("query_photo_id")
    input_author_id = params.fetch("query_author_id")
    input_comment = params.fetch("query_comment")
    
    a_new_comment = Comment.new
    a_new_comment.photo_id = input_photo_id
    a_new_comment.author_id = input_author_id
    a_new_comment.body = input_comment
    
    a_new_comment.save
    
    redirect_to("/photos/" + input_photo_id.to_s)

end

end
