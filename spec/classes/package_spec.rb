require 'spec_helper'

describe 'bluepill::package' do
 it { should contain_package('bluepill').with_provider('gem') }
end
