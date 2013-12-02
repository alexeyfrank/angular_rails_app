module AngularRailsApp
  module Generators
    class NewAppGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("../../templates", __FILE__)

      def copy_app_template
        @directory = file_name || 'web'
        directory 'new_app', "app/assets/javascripts/#{@directory}"
      end

      def change_gem_file
        gem 'angularjs-rails'
        gem 'angularjs-rails-resource'
        gem 'underscore-rails'
      end

    end
  end
end
