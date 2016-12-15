class nfs::client::ubuntu (
  $nfs_v4 = false,
  $nfs_v4_idmap_domain = undef
) {

  contain ::nfs::client::ubuntu::install
  contain ::nfs::client::ubuntu::configure
  contain ::nfs::client::ubuntu::service

  Class['::nfs::client::ubuntu::install']->
  Class['::nfs::client::ubuntu::configure']->
  Class['::nfs::client::ubuntu::service']

}
