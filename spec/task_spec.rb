require 'rails_helper'

RSpec.describe Task, type: :model do
  it "is valid with valid attributes" do
    task = Task.new(title: "Test Task", status: "To Do")
    expect(task).to be_valid
  end

  it "is not valid without a title" do
    task = Task.new(title: nil, status: "To Do")
    expect(task).to_not be_valid
  end

  it "is not valid with an invalid status" do
    task = Task.new(title: "Test Task", status: "Invalid")
    expect(task).to_not be_valid
  end
end
