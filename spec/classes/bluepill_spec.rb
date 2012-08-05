require 'spec_helper'

describe 'bluepill' do
  it { should include_class('bluepill::package') }
  it { should include_class('bluepill::configs') }
end
