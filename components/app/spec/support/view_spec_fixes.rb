ActionView::TestCase::TestController.instance_eval do
  helper App::Engine.routes.url_helpers
end
ActionView::TestCase::TestController.class_eval do
  def _routes
    App::Engine.routes
  end
end
