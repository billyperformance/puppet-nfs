class nfs::client::redhat (
  $nfs_v4              = false,
  $nfs_v4_idmap_domain = undef
) inherits nfs::client::redhat::params {

  contain ::nfs::client::redhat::install
  contain ::nfs::client::redhat::configure
  contain ::nfs::client::redhat::service

  Class['::nfs::client::redhat::install']->
  Class['::nfs::client::redhat::configure']->
  Class['::nfs::client::redhat::service']

}
