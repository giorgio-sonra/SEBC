# API /api/v2/cm/deployment

```json
{
  "timestamp" : "2017-03-08T09:57:40.868Z",
  "clusters" : [ {
    "name" : "giorgio-sonra",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "995098624"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "995098624"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "2288831692"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "385"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "n1.localdomain"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "hive_password"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-98590831bc6f650a7318a6722574432c",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-038755eb5c5210e65"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-98590831bc6f650a7318a6722574432c",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "i-038755eb5c5210e65"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "am79cv1smea11758uc469q5yo"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-98590831bc6f650a7318a6722574432c",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "i-038755eb5c5210e65"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "c8ifguikpsdwoxde0ndknqrfm"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-51c9bb3b7390c2fd6ef70d6340f221ef",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-0e4130f775b87dfdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7h855a1fenlrvccv8lcryfv7g"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-a0711592c515870c64b353ca186c1b30",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-0b9394a8588e42c23"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "4qo30gth4mjluvk5sdipclr4b"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-a3c059c39afb56393e0589a397ce8b54",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-06bef95ace2692251"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "a5m2lk2fueir09demsin70pap"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "n1.localdomain"
        }, {
          "name" : "database_password",
          "value" : "hue_password"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-98590831bc6f650a7318a6722574432c"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-98590831bc6f650a7318a6722574432c",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "i-038755eb5c5210e65"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "947c9o6w7ai6rtq17a2ui4g77"
          }, {
            "name" : "secret_key",
            "value" : "E9LTUJvAsZv9hYl0Kdf0Br30sgK7Ad"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "n1.localdomain"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie_password"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "995098624"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-98590831bc6f650a7318a6722574432c",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "i-038755eb5c5210e65"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8ul1c16ais0zxgjnpugoqtqnn"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "6"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "1"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1800"
          }, {
            "name" : "rm_io_weight",
            "value" : "900"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "8192"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "4096"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "true"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "true"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "2VI7GU2f9P5gClW4xLE7rpLuNnwq0w"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-GATEWAY-98590831bc6f650a7318a6722574432c",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-038755eb5c5210e65"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "yarn-JOBHISTORY-bb1d2559eef283aff06577f3d7cba387",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "i-0b892e8fbf9ef131e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e09h405zeynwswpmxf23ku4bn"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-51c9bb3b7390c2fd6ef70d6340f221ef",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0e4130f775b87dfdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "63uotuuha3re3brths9inghcg"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-a0711592c515870c64b353ca186c1b30",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0b9394a8588e42c23"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5niw2nhp69n6t4qj6m1jg92zz"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-bb1d2559eef283aff06577f3d7cba387",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0b892e8fbf9ef131e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9kc8fu42qfafjjf05xmmau13x"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-a3c059c39afb56393e0589a397ce8b54",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "i-06bef95ace2692251"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "42"
          }, {
            "name" : "role_jceks_password",
            "value" : "2wq0e9zkopg49h4svj02nqaw9"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "838860800"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/dfs/dn"
          }, {
            "name" : "dfs_datanode_bind_wildcard",
            "value" : "true"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "10736126771"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "1073741824"
          }, {
            "name" : "dfs_datanode_use_datanode_hostname",
            "value" : "true"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "200"
          }, {
            "name" : "rm_io_weight",
            "value" : "100"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/dfs/jn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_bind_wildcard",
            "value" : "true"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "2070937600"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          }, {
            "name" : "secondary_namenode_bind_wildcard",
            "value" : "true"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "2070937600"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_client_use_datanode_hostname",
          "value" : "true"
        }, {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "Q22OJ69hp7FogoxzyQrIV7qFpAIdma"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "VWJWvfOHp5NVprqtHC8tpvFggaiRia"
        }, {
          "name" : "hdfs_canary_health_enabled",
          "value" : "false"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "LI8Udaar8N2Bt9NafGCUBJf9TQaHWC"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-a0711592c515870c64b353ca186c1b30",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "i-0b9394a8588e42c23"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-51c9bb3b7390c2fd6ef70d6340f221ef",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0e4130f775b87dfdd"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_datanode_du_reserved",
            "value" : "10737418240"
          }, {
            "name" : "role_jceks_password",
            "value" : "5yba0v9maef0s1zfjwkmls62m"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-a0711592c515870c64b353ca186c1b30",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0b9394a8588e42c23"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_datanode_du_reserved",
            "value" : "10737418240"
          }, {
            "name" : "role_jceks_password",
            "value" : "6i96mo3y05fgd0r4nhkurns92"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-bb1d2559eef283aff06577f3d7cba387",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0b892e8fbf9ef131e"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_datanode_du_reserved",
            "value" : "10737418240"
          }, {
            "name" : "role_jceks_password",
            "value" : "2db4rf9fu874vjh9hb1mcz3tb"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-a3c059c39afb56393e0589a397ce8b54",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-06bef95ace2692251"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5eehq813pkqk6nl9pjhouk1dt"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-bb1d2559eef283aff06577f3d7cba387",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-0b892e8fbf9ef131e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "13hmvvitjri22ctqwwkhgjqy5"
          } ]
        }
      }, {
        "name" : "hdfs-GATEWAY-98590831bc6f650a7318a6722574432c",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-038755eb5c5210e65"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-HTTPFS-98590831bc6f650a7318a6722574432c",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "i-038755eb5c5210e65"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "841rxh4o7qymau9j0gutlmxtz"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-51c9bb3b7390c2fd6ef70d6340f221ef",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-0e4130f775b87dfdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "4r0jcwgk9t692e17ygcv2ito1"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-a0711592c515870c64b353ca186c1b30",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-0b9394a8588e42c23"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6eiza1pvibqfdcx9puue6htcl"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-a3c059c39afb56393e0589a397ce8b54",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-06bef95ace2692251"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1xe2hjjc5jl9fvcs4763kwx2s"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-a3c059c39afb56393e0589a397ce8b54",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-06bef95ace2692251"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "giorgio-sonra-hdfs-ha"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "giorgio-sonra-hdfs-ha"
          }, {
            "name" : "namenode_id",
            "value" : "44"
          }, {
            "name" : "role_jceks_password",
            "value" : "873eslhqifc72flddd19e5j0z"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-bb1d2559eef283aff06577f3d7cba387",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-0b892e8fbf9ef131e"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "giorgio-sonra-hdfs-ha"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "giorgio-sonra-hdfs-ha"
          }, {
            "name" : "namenode_id",
            "value" : "50"
          }, {
            "name" : "role_jceks_password",
            "value" : "5cr9xipamix5rwkbg9vmc313y"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "i-038755eb5c5210e65",
    "ipAddress" : "172.31.39.128",
    "hostname" : "n1.localdomain",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-06bef95ace2692251",
    "ipAddress" : "172.31.34.172",
    "hostname" : "n2.localdomain",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0b892e8fbf9ef131e",
    "ipAddress" : "172.31.34.53",
    "hostname" : "n3.localdomain",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0b9394a8588e42c23",
    "ipAddress" : "172.31.41.226",
    "hostname" : "n4.localdomain",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0e4130f775b87dfdd",
    "ipAddress" : "172.31.33.149",
    "hostname" : "n5.localdomain",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__b45bdc32-cba7-4025-8ea6-157fc12fb032",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "d80ee87b59a6b2efdfc02b49ea57fe52822abb0a582cee9a421d4ab1b25c23e8",
    "pwSalt" : -1564693224097998469,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-98590831bc6f650a7318a6722574432c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "4babfcacbbfcf0848145db5a388e2f98c73292c34ee4d7d103f331fd20497e93",
    "pwSalt" : -499242193644269770,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-98590831bc6f650a7318a6722574432c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "e63256353c46411e5dda1e93d5abb987f688b83ce490d1250429def61f7076fc",
    "pwSalt" : -5078160026828538608,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-98590831bc6f650a7318a6722574432c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "4cfc8c616729aaaf3d39cdc0f52ee37b58beb9534a7b097637a8ba32e170db81",
    "pwSalt" : 8635489379841343802,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-98590831bc6f650a7318a6722574432c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "15e68ca28186b46534c247dddfb7a5ccb170daccc00f28416885d2a62dbabe6b",
    "pwSalt" : -4887567371598895690,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "b69d9feb6da295b97865d0f3e84ddff79d5d700d568c169902dffe36aa54b8a4",
    "pwSalt" : 8200632218227969763,
    "pwLogin" : true
  }, {
    "name" : "giorgio-sonra",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "7cb26b1a386d75ff826d6c14d15be0572ce9f9a4de33c37cc7d96eb0986dd91b",
    "pwSalt" : 1314032585027786482,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "511d68a505375d6b11c847f03282eb5f07b8ce75c282b7ffed6f3485fd3b8860",
    "pwSalt" : -3904751417056793278,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.8.3",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20161019-1013",
    "gitHash" : "518f0d6d44abc87bc392646e4369a20c8192b7cf",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "EVENTSERVER",
        "items" : [ {
          "name" : "event_server_heapsize",
          "value" : "995098624"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "995098624"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1293942784"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "n1.localdomain"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "rman_password"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        }, {
          "name" : "headlamp_heapsize",
          "value" : "995098624"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "995098624"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1293942784"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ALERTPUBLISHER-98590831bc6f650a7318a6722574432c",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "i-038755eb5c5210e65"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "5fjjx7e12x36b0cganbrs2lj1"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-98590831bc6f650a7318a6722574432c",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "i-038755eb5c5210e65"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "3kxt62cuyydmsyokizhfryu5i"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-98590831bc6f650a7318a6722574432c",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "i-038755eb5c5210e65"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "cabrrjjbdtps8gfwzmfykethz"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-98590831bc6f650a7318a6722574432c",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "i-038755eb5c5210e65"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "6vjx67gamgjverls6mc561p3z"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-98590831bc6f650a7318a6722574432c",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "i-038755eb5c5210e65"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "ard9x39huxnnhhd0y3venkhua"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/22/2012 17:40"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,http://n1.localdomain/CDH5.8.4/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/"
    } ]
  }
}
```
