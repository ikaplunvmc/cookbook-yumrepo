maintainer       "Eric G. Wolfe"
maintainer_email "wolfe21@marshall.edu"
license          "Apache 2.0"
description      "Installs and configures EPEL, ELFF, Dell, and VMware yum repositories."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.16.2"
depends          "yum"
name             "yumrepo"
recipe "yumrepo::default", "Installs EPEL, and Dell repositories."
recipe "yumrepo::corporate", "Example recipe for deploying rpms from an internal yum.example.com/yum repo"
recipe "yumrepo::dell", "Installs Dell OpenManage and optionatlly firmware components."
recipe "yumrepo::epel", "Installs Fedora Extra Packages for Enterprise Linux (EPEL) repository"
recipe "yumrepo::elff", "No longer maintained - Deprecated"
recipe "yumrepo::rbel", "Ruby and Opschef packages for RHEL"
recipe "yumrepo::vmware-tools", "Installs VMware (vmware-tools) repository"
recipe "yumrepo::vmware-tools-upgrade", "Upgrades vmware-tools 4.x components to 5.0u1"
recipe "yumrepo::annvix", "Annvix repository for packages usable with Red Hat Enterprise Linux and CentOS."
recipe "yumrepo::postgresql9", "PostgreSQL 9.0 RPMs from pgrpms.org"
recipe "yumrepo::zenoss", "YUM repo for ZenOss stable"
recipe "yumrepo::jenkins", "Jenkins CI"

%w{ redhat centos scientific amazon }.each do |os|
  supports os, ">= 5.0"
end
