# For /etc/default/slapd
default['openldap-server'][:default_config][:slapd_conf] = nil # SLAPD_CONF
default['openldap-server'][:default_config][:slapd_user] = 'openldap' # SLAPD_USER
default['openldap-server'][:default_config][:slapd_group] = 'openldap' # SLAPD_GROUP
default['openldap-server'][:default_config][:slapd_pidfile] = nil # SLAPD_PIDFILE
default['openldap-server'][:default_config][:slapd_services] = "ldap:/// ldapi:///" # SLAPD_SERVICES
default['openldap-server'][:default_config][:slapd_sentinel_file] = '/etc/ldap/noslapd' # SLAPD_SENTINEL_FILE
default['openldap-server'][:default_config][:slapd_options] = nil # SLAPD_OPTIONS

# These attributes were not originally 1:1 with variable names, so preserve them for compatibility
default['openldap-server'][:defaut_config][:slapd_no_start] =
  if node['openldap-server'][:default_config].key?(:slapd_nostart)
    node['openldap-server'][:default_config][:slapd_nostart]
  else
    false
  end # SLAPD_NO_START

default['openldap-server'][:default_config][:krb5_ktname] =
  if node['openldap-server'][:default_config].key?(:slapd_kerb_file)
    node['openldap-server'][:default_config][:slapd_kerb_file]
  else
    '/etc/krb5.keytab'
  end # KRB5_KTNAME

default['openldap-server'][:domain] = 'default.com'
default['openldap-server'][:rootpw] = '{SSHA}0NDdeikW2csDSgF4+It1SLhpJYw3d6+z'
default['openldap-server'][:root_user_attr] = "cn=admin"
default['openldap-server'][:db_dir] = '/var/lib/ldap'

default['openldap-server'][:db_ldif] = 'db.ldif.erb'
