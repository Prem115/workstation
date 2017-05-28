#
# Cookbook:: workstation
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


require 'spec_helper'

describe 'workstation::default' do
  describe package ('tree') do
   it { should be_installed }
  end
  context 'When all attributes are default, on an centos 6.7' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.7')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
