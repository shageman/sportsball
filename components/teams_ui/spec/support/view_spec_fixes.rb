ActionView::TestCase::TestController.instance_eval do
  helper TeamsUi::Engine.routes.url_helpers
end
ActionView::TestCase::TestController.class_eval do
  def _routes
    TeamsUi::Engine.routes
  end
end
