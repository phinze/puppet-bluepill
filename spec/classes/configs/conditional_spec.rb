require 'spec_helper'

describe 'bluepill::configs::conditional' do
  def default_params(additions)
    {
      :use_rsyslog => false,
      :use_logrotate => false
    }.merge(additions)
  end

  context 'use_logrotate = true' do
    let(:params) { default_params(:use_logrotate => true) }
    it { should include_class('bluepill::configs::logrotate') }
  end

  context 'use_logrotate = false' do
    let(:params) { default_params(:use_logrotate => false) }
    it { should_not include_class('bluepill::configs::logrotate') }
  end

  context 'use_rsyslog = true' do
    let(:params) { default_params(:use_rsyslog => true) }
    it { should include_class('bluepill::configs::rsyslog') }
  end

  context 'use_rsyslog = false' do
    let(:params) { default_params(:use_rsyslog => false) }
    it { should_not include_class('bluepill::configs::rsyslog') }
  end
end
