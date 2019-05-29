class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :pet


  # def user_comments
  #   @user = User.find_by(id: session[:user_id])
  #   Comment.all.each do |comment|
  #     if comment.user == @user
  #        return comment
  #     end
  #   end
  # end





end
