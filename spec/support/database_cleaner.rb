# spec/support/database_cleaner.rb

require 'database_cleaner'

RSpec.configure do |config|
  config.use_transactional_fixtures = false

  config.before(:all) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
  end

  config.around(:each) do |example|
    DatabaseCleaner.strategy = if example.metadata[:js] || example.metadata[:type] == 'feature'
      :truncation
    else
      :transaction
    end
    DatabaseCleaner.start

    example.run

    Capybara.reset_sessions!
    DatabaseCleaner.clean
  end
end
