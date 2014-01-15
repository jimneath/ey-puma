#
# Cookbook Name:: puma
# Recipe:: cleanup
#

if node[:instance_role][/app|solo/]
  # stop any old puma instances running on port 5000, 5001, etc
  execute 'cleanup old puma workers' do
    command 'ps aux | egrep "puma.50[0-9]{2}" | xargs kill'
  end
end