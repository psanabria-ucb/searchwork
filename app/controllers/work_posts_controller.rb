class WorkPostsController < ApplicationController
  before_action :set_work_post, only: [:show, :edit, :update, :destroy]

  # GET /work_posts
  # GET /work_posts.json
  def index
    @work_posts = WorkPost.all
  end

  # GET /work_posts/1
  # GET /work_posts/1.json
  def show
  end

  # GET /work_posts/new
  def new
    @work_post = WorkPost.new
  end

  # GET /work_posts/1/edit
  def edit
  end

  # POST /work_posts
  # POST /work_posts.json
  def create
    @work_post = WorkPost.new(work_post_params)

    respond_to do |format|
      if @work_post.save
        format.html { redirect_to @work_post, notice: 'Work post was successfully created.' }
        format.json { render :show, status: :created, location: @work_post }
      else
        format.html { render :new }
        format.json { render json: @work_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_posts/1
  # PATCH/PUT /work_posts/1.json
  def update
    respond_to do |format|
      if @work_post.update(work_post_params)
        format.html { redirect_to @work_post, notice: 'Work post was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_post }
      else
        format.html { render :edit }
        format.json { render json: @work_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_posts/1
  # DELETE /work_posts/1.json
  def destroy
    @work_post.destroy
    respond_to do |format|
      format.html { redirect_to work_posts_url, notice: 'Work post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_post
      @work_post = WorkPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_post_params
      params.require(:work_post).permit(:title, :description)
    end
end
