require 'rails_helper'

describe Review do
  it { should validate_presence_of :review }
  it { should belong_to :book }
end
