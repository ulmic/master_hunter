class Web::WelcomeController < Web::ApplicationController
  def index
    posts = Post.published.processed
    @cats_posts = posts.select{|x| x.pet_type == 'cat'}
    @dogs_posts = posts.select{|x| x.pet_type == 'dog'}
    @another_posts = posts - @cats_posts - @dogs_posts

    render layout: "landing_application"
  end
end
