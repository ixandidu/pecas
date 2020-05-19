RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.reload

    if config.files_to_run.one?
      puts 'Skipping FactoryBot.lint for speed'
    else
      ActiveRecord::Base.transaction do
        start = Time.now

        # Option 1) Lint all factories with traits:
        FactoryBot.lint traits: true

        # OR Option 2) Lint selected factories (useful for legacy codebases):
        # factories_needing_tlc = [:complex_invoice, :big_product, :scary_address]
        # factories_to_lint = FactoryBot.factories.reject do |factory|
        #   factories_needing_tlc.include?(factory.name)
        # end
        # FactoryBot.lint(factories_to_lint, traits: true)

        duration = Time.now - start
        puts "FactoryBot.lint took #{duration.round(1)} seconds"

        raise ActiveRecord::Rollback
      end
    end
  end
end
