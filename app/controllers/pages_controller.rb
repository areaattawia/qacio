class PagesController < ApplicationController
	def home
		redirect_to projects_path if current_user
	end

  def sign_in
  end

  def test
  end

end
