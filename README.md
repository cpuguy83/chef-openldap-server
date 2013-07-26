# openldap-server cookbook

# Requirements
Ubuntu >= 10.04 or Debian >= 7.0.0  
Requirement is based on slapd package minimum requirement of 2.4.  
OpenLDAP 2.4 included the dynamic config option, which is what this cookbook uses  

# Usage
* include_recipe 'openldap-server::default'  
  * Installs OpenLDAP from the package repo  
  * Configures a basic ldap database  
    * Includes People, Groups, and Services OU containers  
    * Includes the memberOf overlay  
    * Sets up access controls/no unauthenticated access  

* Setup attributes listed below
* You can optionally supply your own ldif instead of using the provided

# Attributes
### Main Options ###

_Domain name to use which creates the suffix_  
`node[:ldap][:domain] = 'default.com'`

_Root password for the LDAP database_  
_This can and should be hashed and salted, use slappasswd to generate_  
`node[:ldap][:rootpw] = 'default'`

_User attribute to use for root user_  
__This ends up as "cn=admin,dc=example,dc=com"__  
`node[:ldap][:root_user_attr] = "cn=admin"`

_Where do you want the ldap DB to be stored_  
`node[:ldap][:db_dir] = '/var/lib/ldap'`

_You can use these options in your own template if you like_
_To supply your own ldif template/file to use_  
`node[:ldap[:db_ldif] = 'db.ldif.erb'`  



### Default Config Options (/etc/default/slapd) ###

    default[:ldap][:default_config][:slapd_conf] = nil # SLAPD_CONF  
    default[:ldap][:default_config][:slapd_user] = 'openldap' # SLAPD_USER  
    default[:ldap][:default_config][:slapd_group] = 'openldap' # SLAPD_GROUP  
    default[:ldap][:default_config][:slapd_pidfile] = nil # SLAPD_PIDFILE  
    default[:ldap][:default_config][:slapd_services] = "ldap:/// ldapi:///" # SLAPD_SERVICES  
    default[:ldap][:default_config][:slapd_nostart] = false # SLAPD_NO_START  
    default[:ldap][:default_config][:slapd_sentinel_file] = '/etc/ldap/noslapd' # SLAPD_SENTINEL_FILE  
    default[:ldap][:default_config][:slapd_kerb_file] = '/etc/krb5.keytab' # KRB_KTNAME  
    default[:ldap][:default_config][:slapd_options] = nil # SLAPD_OPTIONS  


# Recipes
openldap-server::install - Installs OpenLDAP

openldap-server::createdb - Creates basic DB

openldap-server::default - includes both install and createdb reciepes


# Author

Author:: cpuguy83 (cpuguy83@gmail.com)
