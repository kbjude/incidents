module Api
    module V1
        class RegistrationsController < Devise::SessionsController
            respond_to :json
        end
    end
end