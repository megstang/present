require 'rails_helper'

RSpec.describe Inning, type: :model do
  it {should validate_presence_of :name}
  it {should have_many :turing_modules}
end
