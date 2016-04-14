module FormHelper
  def setup_user(user)
    user.pets ||= Pet.new
    3.times { user.pets.build }
    user
  end
end