require 'grape-swagger'

module Api::Mobile
  class Root < Grape::API
    format :json
    prefix :api

    rescue_from Grape::Exceptions::ValidationErrors do |e|
      rack_response({status: 'error', error: e.message}.to_json, 400)
    end

    get :ping do
      {status: 'ok'}
    end

    mount Api::Mobile::Reviews

    add_swagger_documentation hide_documentation_path: true
  end
end
