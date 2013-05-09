# :nodoc:
module Rails
  # provides a mark_required? helper for rails views
  module MarkRequirements
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      desc 'creates initialization files'

      def generate_configuration_files
        copy_file 'features/mark_requirements.rb', 'config/features/mark_requirements.rb'
      end
    end
  end
end
