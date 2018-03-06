class Users::SessionsController < Devise::SessionsController
  include Accessible
end
