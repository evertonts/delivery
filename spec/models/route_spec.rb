require 'rails_helper'

describe Route, :type => :model do
  it { is_expected.to validate_presence_of :source }
  it { is_expected.to validate_presence_of :destination }
  it { is_expected.to validate_presence_of :distance }
end
