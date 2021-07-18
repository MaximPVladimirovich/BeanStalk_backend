class RegistrationsController < ApplicationController


  def create
    roaster = Roaster.create(
      name: params['roaster']['name'],
      password: params['roaster']['password']
      password_confirmation: params['user']['password'],
      email: params['user']['email']
    )

    if roaster
      session[:roaster_id] =roaster.id
      render json: {
        status: :created,
        roaster: roaster
    } 
    else 
      render json: {
      status: 500
      }
    end
  end
end