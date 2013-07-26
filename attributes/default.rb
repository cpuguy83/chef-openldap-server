# For /etc/default/slapd
default[:ldap][:default_config][:slapd_conf] = nil # SLAPD_CONF
default[:ldap][:default_config][:slapd_user] = 'openldap' # SLAPD_USER
default[:ldap][:default_config][:slapd_group] = 'openldap' # SLAPD_GROUP
default[:ldap][:default_config][:slapd_pidfile] = nil # SLAPD_PIDFILE
default[:ldap][:default_config][:slapd_services] = "ldap:/// ldapi:///" # SLAPD_SERVICES
default[:ldap][:default_config][:slapd_nostart] = false # SLAPD_NO_START
default[:ldap][:default_config][:slapd_sentinel_file] = '/etc/ldap/noslapd' # SLAPD_SENTINEL_FILE
default[:ldap][:default_config][:slapd_kerb_file] = '/etc/krb5.keytab' # KRB_KTNAME
default[:ldap][:default_config][:slapd_options] = nil # SLAPD_OPTIONS

default[:ldap][:domain] = 'default.com'
default[:ldap][:rootpw] = '{SSHA}0NDdeikW2csDSgF4+It1SLhpJYw3d6+z'
default[:ldap][:root_user_attr] = "cn=admin"
default[:ldap][:db_dir] = '/var/lib/ldap'

default[:ldap][:db_ldif] = 'db.ldif.erb'
