class nfs::client::debian (
  $nfs_v4 = false,
  $nfs_v4_idmap_domain = undef
) {

  contain ::nfs::client::debian::install
  contain ::nfs::client::debian::configure
  contain ::nfs::client::debian::service

  Class['::nfs::client::debian::install']->
  Class['::nfs::client::debian::configure']->
  Class['::nfs::client::debian::service']

}
