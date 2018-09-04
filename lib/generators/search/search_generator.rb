class SearchGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)
  argument :search, :type => :string, :default => "application"

  def generate_jsfile
    copy_file "search.js", "app/assets/javascripts/#{search.underscore}.js"
  end
end

