class Task < ApplicationRecord
    include Loggable

    before_validation :before_validate_logger
    after_validation :after_validate_logger

    before_commit :before_commit_logger
    after_commit :after_commit_logger

    validates :title, presence: true
    validates :status, inclusion: { in: %w[To\ Do In\ Progress Done] }, presence: true

    scope :finished, -> { where(status: "Done") }
    scope :latest, -> { where(created_at: 1.hours.ago..DateTime.now) }
  end
  