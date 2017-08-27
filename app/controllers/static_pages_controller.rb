class StaticPagesController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    def home
        @posts = Post.all
    end

    def admin
        @posts = Post.all
    end


end
