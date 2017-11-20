module API
  class Articles < Grape::API
    resource :articles do
      params do
        requires :title, type: String, desc: 'The title of the article'
        requires :content, type: String, desc: 'The content'
        requires :author, type: String, desc: 'The author'
      end
      post do
        articel = Article.new(title: params[:title], content: params[:content],
                              author: params[:author], author_id: 2)
        articel.save
        present articel
      end
    end
  end
end
