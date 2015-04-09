ActionView::TestCase::TestController.instance_eval do
  helper WebUi::Engine.routes.url_helpers
end
ActionView::TestCase::TestController.class_eval do
  def _routes
    WebUi::Engine.routes
  end
end
