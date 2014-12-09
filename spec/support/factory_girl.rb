RSpec.configure do |config|
  include FactoryGirl::Syntax::Methods

  config.begore :suite do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end
end
