class Task < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  include AASM

  aasm whiny_transitions: false, column: 'state' do
    state :started, :initial => true
    state :scheduled, :completed, :cancelled

    event :schedule do
      transitions :from => :started, :to => :scheduled
    end

    event :complete do
      transitions :from => [:started, :scheduled], :to => :completed
    end

    event :cancel do
      transitions :from => [:started, :scheduled], :to => :cancelled
    end
  end
end
