require 'grape-swagger'

module Api::Mobile
  class Root < Grape::API
    format :json
    prefix :api

    get :ping do
      {status: 'ok'}
    end

    add_swagger_documentation hide_documentation_path: true
  end
end
