class Web::WelcomeController < Web::ApplicationController
  def index
    @posts = Post.published.processed.last 10

    render layout: "landing_application"
  end
end
