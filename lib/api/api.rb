module API
  class API < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    mount ::API::Authors
  end
end