#
# Cookbook:: workstation
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
require 'spec_helper'

describe 'workstation::default' do

  it 'should install the tree package' do
   expect(package('tree')).to be_installed
  end
  
  it 'should listen on port 80' do
   expect(port(80)).to be_listening
  end
  
  it 'motd should be present' do
   file_motd = file('/etc/motd')
   
   expect(file_motd).to be_file
   expect(file_motd).to be_owned_by('root')
  end

end
