class PostsController < ApplicationController
	before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: [:destroy]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])
	end

	def create
    @post = current_user.posts.build post_params
    if @post.save
			flash[:success] = "Status Complete!"
			redirect_to @post
    else
			flash[:danger] = "Status Failed..."
			render 'new'
		end
  end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		if current_user.try(:admin?)
			@post = Post.find(params[:id])
			@post.user_id = current_user.id
			if @post.update(params[:post].permit(:title, :body))
				flash[:success] = "Status Update Complete!"
				redirect_to @post
			else
				flash[:danger] = "Status Update Failed..."
				render 'edit'
			end
		end
	end

	def destroy
		if current_user.try(:admin?)
			@post = Post.find(params[:id])
			@post.destroy
			flash[:success] = "Walk In Harmony. Post destroyed."
			redirect_to hark_path
		else
			flash[:danger] = "Darkness falls. You do not have permission to perform this function."
			redirect_to hark_path
		end
	end

	private

	def post_params
		params.require(:post).permit(:achievements, :obstacles, :goals, :panic_score)
	end
end
