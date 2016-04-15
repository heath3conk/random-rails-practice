module FormHelper
  def setup_user(user)
    user.pets ||= Pet.new
    2.times { user.pets.build }
    user
  end
end