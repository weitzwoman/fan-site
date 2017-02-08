require 'rails_helper'

describe Review do
  it { should validate_presence_of :reviewer }
  it { should belong_to :book }
end
