# Upgrade Cloudera Manager

Upgrade to the latest C5.9 release

Use the API on the command line to:

> using jq - JSON parser
  https://stedolan.github.io/jq

* Report the latest available version of the API

```
$ curl -u giorgio-sonra:<password> -s http://n1:7180/api/version
v15
```

* Report the CM version

```
$ curl -u giorgio-sonra:<password> -s http://n1:7180/api/v15/cm/version | jq -r '.version'
5.10.0
```

* List all CM users

```
$ curl -u giorgio-sonra:cloudera -s http://n1:7180/api/v15/users | jq -r '.items[].name'
admin
giorgio-sonra
minotaur
```

* Report the database server in use by CM
```
$ curl -u giorgio-sonra:cloudera -s http://n1:7180/api/v15/cm/scmbInfo | jq -r '.scmDbType'
MYSQL
```
