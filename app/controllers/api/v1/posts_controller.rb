class Api::V1::PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # GET /posts
  def index
    type = "front"
    if request.headers["REQUESTTYPE"]
      type = request.headers["REQUESTTYPE"]
    end

    @posts = Post.search(current_user,type).order("id desc")

    json_response(@posts)
  end

  # GET /posts/1
  def show
    json = @post.as_json
    json["comments"] = @post.comments
    render json: json
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.partners  = Partner.where("id IN (?)", params[:post][:partners])
    @post.programs  = Program.where("id IN (?)", params[:post][:programs])
    if @post.save
      json_response(@post)
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    @post.partners  = Partner.where("id IN (?)", params[:post][:partners])
    @post.programs  = Program.where("id IN (?)", params[:post][:programs])
    if @post.update(post_params)
      json_response(@post)
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    render json: {}, status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:title, :details, :user_id, :status, :partners, :programs, :tags, :external_url, :upload_id)
    end
end
