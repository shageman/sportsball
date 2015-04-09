module WebStyle
  class Engine < ::Rails::Engine
    isolate_namespace WebStyle

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s+File::SEPARATOR
        app.config.paths["db/migrate"].concat config.paths["db/migrate"].expanded
      end
    end

    config.generators do |g|
      g.template_engine :slim
    end
  end
end
