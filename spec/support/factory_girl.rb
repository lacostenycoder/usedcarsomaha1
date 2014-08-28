# spec/support/factory_girl.rb

require 'factory_girl_rails'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:all) do
    FactoryGirl.reload
  end

  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end
end
