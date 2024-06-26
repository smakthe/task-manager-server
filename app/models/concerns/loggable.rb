module Loggable
    extend ActiveSupport::Concern

    def before_validate_logger
        print("\nValidation started on: #{DateTime.now}\n")
    end

    def after_validate_logger
        print("\nValidation ended on: #{DateTime.now}\n")
    end

    def before_commit_logger
        print("\nTransaction started on: #{DateTime.now}\n")
    end

    def after_commit_logger
        print("\nTransaction ended on: #{DateTime.now}\n")
    end
end