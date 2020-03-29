class profile::base {
  user {'admin':
    ensure => present,
  }
  include profile::ssh_server
  file_line { 'workaround-puppet-agent-6-14-ssl-issue':
    ensure => present,
    path   => "${facts['rubysitedir']}/../../vendor_ruby/puppet/type/file/source.rb",
    line   => '      client.get(url, include_system_store: true) do |response|',
    match  => '^      client.get\(url\) do \|response\|',
  }
}
