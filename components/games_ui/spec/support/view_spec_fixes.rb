ActionView::TestCase::TestController.instance_eval do
  helper GamesUi::Engine.routes.url_helpers
end
ActionView::TestCase::TestController.class_eval do
  def _routes
    GamesUi::Engine.routes
  end
end
