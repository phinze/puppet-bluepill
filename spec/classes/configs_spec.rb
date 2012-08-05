require 'spec_helper'

describe 'bluepill::configs' do
  let(:params) {{
    :use_rsyslog => false,
    :use_logrotate => false
  }}

  it { should contain_file('/var/bluepill').with_ensure('directory') }
  it { should contain_file('/etc/bluepill').with_ensure('directory') }
  it { should contain_file('/etc/bluepill/conf.d').with_ensure('directory') }
end
