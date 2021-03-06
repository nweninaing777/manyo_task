class Admin::UsersController < ApplicationController
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
