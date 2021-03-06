class SessionsController < ApplicationController
  def create
    auth = request.env['rack.auth']
    binding.pry
    unless User.find_from_hash(auth)
      # Create a new user or add an auth to existing user, depending on
      # whether there is already a user signed in.
      @user =User.create_from_hash(auth, current_user)
    end
    # Log the authorizing user in.
    self.current_user = @user

    render :text => "Welcome, #{current_user.name}."
  end
end
