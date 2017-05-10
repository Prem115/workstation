#
# Cookbook:: workstation
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package '7zip' do
 source 'http://www.7-zip.org/a/7z938-x64.msi'
 action :install
end

package 'WinSCP-5' do
 source 'C:/Prem/Software/WinSCP-5.9.5-Setup.exe'
 action :install
end
