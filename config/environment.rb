# Load the Rails application.
require_relative "application"

Encoding.default_external = Encoding::UTF_8 
Encoding.default_internal = Encoding::UTF_8

# Initialize the Rails application.
Rails.application.initialize!

# Set the default host and port to be the same as Action Mailer.
Rails.application.default_url_options = Rails.application.config.action_mailer.default_url_options
