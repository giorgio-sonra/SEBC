# /etc/krb5.conf

```
[libdefaults]
default_realm = GIORGIO-SONRA.IO
dns_lookup_kdc = false
dns_lookup_realm = false
ticket_lifetime = 86400
renew_lifetime = 604800
forwardable = true
default_tgs_enctypes = arcfour-hmac
default_tkt_enctypes = arcfour-hmac
permitted_enctypes = arcfour-hmac
udp_preference_limit = 1
kdc_timeout = 3000
[realms]
GIORGIO-SONRA.IO = {
kdc = n1.localdomain
admin_server = n1.localdomain
}
```
