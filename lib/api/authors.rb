module API
  class Authors < Grape::API
    resource :authors do
      get do
        {
            name: 'yeqianfeng'
        }
      end
    end
  end
end