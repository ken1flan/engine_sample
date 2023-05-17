module Blorgh
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh

    initializer "blorgh.assets.precompile", group: :all do |app|
      app.config.assets.precompile += %w(
        blorgh/application.js
        blorgh/application.css
      )
    end
  end
end
