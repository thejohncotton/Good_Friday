class StaticPagesController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    def home
        @posts = Post.all.order(created_at: :desc)
    end

    def admin
        @posts = Post.all.all.order(created_at: :desc)
    end


end
