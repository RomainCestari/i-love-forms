class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def create
  	@user = User.create!(user_params)
    redirect_to new_home_path          #redirige l'utilisateur à la page Home une fois le formulaire remplie
  end

  def user_params
  	# require doit être supprimé pour le formulaire FORM_TAG
  	params.require(:user).permit(:username, :email, :bio)   #définit les parametres utilisateur
  end
end
