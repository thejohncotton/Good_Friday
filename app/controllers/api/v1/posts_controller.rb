class Api::V1::PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

 def index 
  @posts = Post.all
  render :json => @posts.as_json
 end

 # GET /api/v1/posts/1
  # GET /api/v1/posts/1.json
  def show
  end
  # 
  # GET /api/v1/posts/new
  def new
    @post = Post.new
  end

  # GET /api/v1/posts/1/edit
  def edit
  end

  # POST /api/v1/posts
  # POST /api/v1/posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        # format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        # format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/posts/1
  # PATCH/PUT /api/v1/posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        # format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        # format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/posts/1
  # DELETE /api/v1/posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      # format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description)
    end
end
