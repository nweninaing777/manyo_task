class Admin::UsersController < ApplicationController
<<<<<<< HEAD
  before_action :if_not_admin, only: [ :index, :edit, :update, :destroy]
     before_action :set_user, only: [:show, :edit, :update, :destroy]


     def index
       @users = User.all.includes(:tasks).all.order(created_at: :desc)
     end

     def new
       @user = User.new
     end

     def create
       @user = User.new(user_params)
       if @user.save
         @user && @user.authenticate(params[:password])
         session[:user_id] = @user.id
         redirect_to admin_user_path(@user.id), notice: "ユーザーを作成しました"
       else
         render :new
       end
     end

     def show
       @tasks = @user.tasks
     end

     def edit
     end

     def update
       if @user.update(user_params)
         redirect_to admin_users_path(@user), notice:"ユーザー「#{@user.name}」を編集しました"
       else
         render :edit
       end
     end

     def destroy
       if @user.destroy
         redirect_to admin_users_path, notice:"ユーザー「#{@user.name}」を削除しました"
       else
         redirect_to admin_users_path, notice:"ユーザー「#{@user.name}」を削除できません"
       end
     end

     private

     def if_not_admin
       unless current_user.admin?
         flash[:notice] = 'あなたは管理者ではありません'
         redirect_to root_path
       end
     end

     def set_user
       @user = User.find(params[:id])
     end

     def user_params
       params.require(:user).permit(:name, :email, :password,
                                    :password_confirmation, :admin)
     end

   end
=======
  before_action :set_admin
    before_action :set_user, only: [:show, :edit, :update, :destroy]


    def new
      # binding.pry
      @user = User.new

    end

    def create
      # binding.pry
      @user = User.new(user_params)
      if @user.save
        redirect_to admin_users_path, notice: "ユーザー「#{@user.name}」を登録しました。"
      else
        render :new
      end
    end

    def edit
      # @user = User.find(user_params[:id])
    end

    def update
      if @user.update(user_params)
        flash[:notice] =  "ユーザー #{@user.name} 更新しました"
        redirect_to admin_users_path
      else
        render :edit, notice: "管理者がいなくなります！ #{@user.name} の管理者を外して更新ができません！すまん。"
      end
    end

    def show
      # binding.pry
      # @user = User.find(user_params[:id])
    end

    def index
      @users = User.all.includes(:tasks)
    end

    def destroy
      if@user.destroy
        redirect_to admin_users_path, notice: "ユーザー #{@user.name} を削除しました"
      else
        redirect_to admin_users_path, notice: "管理者がいなくなります！ #{@user.name} を削除できません！すまんね。"
      end
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)

    end
    private

    def set_admin
      user = current_user
      if user.nil?
        redirect_to tasks_path, notice: 'あなたは管理者ではありません'
      else
        if user.admin == false
          redirect_to new_session_path, notice: 'あなたは管理者ではありません'
        end
      end
    end

    def set_user
      @user = User.find(params[:id])
    end

    
  end
>>>>>>> 3bbcd2869510d89227b1ebea83385ca5010afaae
