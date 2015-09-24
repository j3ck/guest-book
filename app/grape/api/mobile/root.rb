module Api::Mobile
  class Root < Grape::API
    format :json
    prefix :api

    get :ping do
      {status: 'ok'}
    end

  end
end
