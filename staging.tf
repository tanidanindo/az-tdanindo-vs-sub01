resource "azapi_resource" "bp_algosec_aux_CL" {
  name      = "bp_algosec_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_algosec_aux_CL",
          "columns" : [
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "name" : "event",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "string"
            },
            {
              "name" : "service",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "log",
              "type" : "string"
            },
            {
              "name" : "host",
              "type" : "string"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            }

          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}





resource "azapi_resource" "bp_algosec_CL" {
  name      = "bp_algosec_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_algosec_CL",
          "columns" : [
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            }

          ]
          description = "Analytics Tier Table for AlgoSec logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}






resource "azapi_resource" "bp_average_data_CL" {
  name      = "bp_average_data_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_average_data_CL",
          "columns" : [
            {
              "name" : "_BinSize",
              "type" : "long"
            },
            {
              "name" : "_BinStartTime",
              "type" : "datetime"
            },
            {
              "name" : "_RuleLastModifiedTime",
              "type" : "datetime"
            },
            {
              "name" : "_RuleName",
              "type" : "string"
            },
            {
              "name" : "_OriginalTimeGenerated",
              "type" : "datetime"
            },
            {
              "name" : "_OriginalType",
              "type" : "string"
            },
            {
              "name" : "Count",
              "type" : "long"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            }

          ]
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}






resource "azapi_resource" "bp_beyondtrust_CL" {
  name      = "bp_beyondtrust_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_beyondtrust_CL",
          "columns" : [
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for BeyondTrust logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}






resource "azapi_resource" "bp_carbonblack_CL" {
  name      = "bp_carbonblack_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_carbonblack_CL",
          "columns" : [
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for Carbon Black logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}






resource "azapi_resource" "bp_catchall_aux_CL" {
  name      = "bp_catchall_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_catchall_aux_CL",
          "columns" : [
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "name" : "event",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "string"
            },
            {
              "name" : "service",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "log",
              "type" : "string"
            },
            {
              "name" : "host",
              "type" : "string"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            }
          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}







resource "azapi_resource" "bp_cisco_fmc_aux_CL" {
  name      = "bp_cisco_fmc_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_cisco_fmc_aux_CL",
          "columns" : [
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "name" : "event",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "string"
            },
            {
              "name" : "service",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "log",
              "type" : "string"
            },
            {
              "name" : "host",
              "type" : "string"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            }
          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}





resource "azapi_resource" "bp_cisco_fmc_CL" {
  name      = "bp_cisco_fmc_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_cisco_fmc_CL",
          "columns" : [
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {

              "name" : "process",
              "type" : "dynamic"
            },
            {

              "name" : "service",
              "type" : "dynamic"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for Cisco FMC logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}




resource "azapi_resource" "bp_cisco_ucm_aux_CL" {
  name      = "bp_cisco_ucm_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_cisco_ucm_aux_CL",
          "columns" : [
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "name" : "event",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "string"
            },
            {
              "name" : "service",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {

              "name" : "log",
              "type" : "string"
            },
            {
              "name" : "host",
              "type" : "string"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            }

          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}






resource "azapi_resource" "bp_cisco_ucm_CL" {
  name      = "bp_cisco_ucm_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_cisco_ucm_CL",
          "columns" : [
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            }

          ]
          description = "Analytics Tier Table for Cisco UCM logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}





resource "azapi_resource" "bp_ciscovpn_CL" {
  name      = "bp_ciscovpn_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_ciscovpn_CL",
          "columns" : [
            {
              "description" : "",
              "name" : "device_uuid",
              "type" : "string"
            },
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "name" : "eventid",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "eventtype",
              "type" : "string"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "pid",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "pri",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "name" : "syslog_msg_class",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "syslog_msg_id",
              "type" : "int"
            },
            {
              "description" : "",
              "name" : "syslog_msg_text",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "syslog_severity",
              "type" : "int"
            },
            {
              "description" : "",
              "name" : "syslog_time",
              "type" : "int"
            },
            {
              "description" : "",
              "name" : "syslogreportedtime",
              "type" : "datetime"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "description" : "",
              "name" : "jsonfield",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "name" : "Group",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "User",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "src_ip",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "TunnelGroup",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "GroupPolicy",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "recordtype",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "Duration",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "Reason",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "msg",
              "type" : "string"
            }

          ]
          description = "Analytics Tier Table for Cisco AnyConnect VPN logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}






resource "azapi_resource" "bp_f5_aux_CL" {
  name      = "bp_f5_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_f5_aux_CL",
          "columns" : [
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "name" : "event",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "string"
            },
            {
              "name" : "service",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "log",
              "type" : "string"
            },
            {
              "name" : "host",
              "type" : "string"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            }

          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}






resource "azapi_resource" "bp_f5_CL" {
  name      = "bp_f5_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_f5_CL",
          "columns" : [
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for F5 logs"
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}







resource "azapi_resource" "bp_f5apm_aux_CL" {
  name      = "bp_f5apm_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_f5apm_aux_CL",
          "columns" : [
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "name" : "event",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "string"
            },
            {
              "name" : "service",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "log",
              "type" : "string"
            },
            {
              "name" : "host",
              "type" : "string"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            }

          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}








resource "azapi_resource" "bp_solarwinds_aux_CL" {
  name      = "bp_solarwinds_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_solarwinds_aux_CL",
          "columns" : [
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "name" : "event",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "string"
            },
            {
              "name" : "service",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "log",
              "type" : "string"
            },
            {
              "name" : "host",
              "type" : "string"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            }
          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}









resource "azapi_resource" "bp_solarwinds_CL" {
  name      = "bp_solarwinds_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_solarwinds_CL",
          "columns" : [
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for SolarWinds logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}









resource "azapi_resource" "bp_suricata_CL" {
  name      = "bp_suricata_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_suricata_CL",
          "columns" : [
            {
              "name" : "alert_action",
              "type" : "string"
            },
            {
              "name" : "alert_category",
              "type" : "string"
            },
            {
              "name" : "alert_gid",
              "type" : "int"
            },
            {
              "name" : "alert_metadata_confidence",
              "type" : "string"
            },
            {
              "name" : "alert_metadata_created_at",
              "type" : "string"
            },
            {
              "name" : "alert_metadata_performance_impact",
              "type" : "string"
            },
            {
              "name" : "alert_metadata_signature_severity",
              "type" : "string"
            },
            {
              "name" : "alert_metadata_tag",
              "type" : "string"
            },
            {
              "name" : "alert_metadata_updated_at",
              "type" : "string"
            },
            {
              "name" : "alert_rev",
              "type" : "int"
            },
            {
              "name" : "alert_severity",
              "type" : "int"
            },
            {
              "name" : "alert_signature",
              "type" : "string"
            },
            {
              "name" : "alert_signature_id",
              "type" : "int"
            },
            {
              "name" : "application_protocol",
              "type" : "string"
            },
            {
              "name" : "dest_ip",
              "type" : "string"
            },
            {
              "name" : "dest_port",
              "type" : "int"
            },
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "event_type",
              "type" : "string"
            },
            {
              "name" : "flow_direction",
              "type" : "string"
            },
            {
              "name" : "flow_id",
              "type" : "long"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "http_method",
              "type" : "string"
            },
            {
              "name" : "http_request_headers",
              "type" : "dynamic"
            },
            {
              "name" : "http_url",
              "type" : "string"
            },
            {
              "name" : "http_user_agent",
              "type" : "string"
            },
            {
              "name" : "http_version",
              "type" : "string"
            },
            {
              "name" : "in_iface",
              "type" : "string"
            },
            {
              "name" : "packet_source",
              "type" : "string"
            },
            {
              "name" : "pid",
              "type" : "string"
            },
            {
              "name" : "program",
              "type" : "string"
            },
            {
              "name" : "protocol",
              "type" : "string"
            },
            {
              "name" : "RI",
              "type" : "string"
            },
            {
              "name" : "src_ip",
              "type" : "string"
            },
            {
              "name" : "src_port",
              "type" : "int"
            },
            {
              "name" : "syslog_host",
              "type" : "string"
            },
            {
              "name" : "syslog_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "tags",
              "type" : "dynamic"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "name" : "tx_id",
              "type" : "int"
            },
            {
              "description" : "",
              "name" : "http_response_headers",
              "type" : "dynamic"
            }
          ]
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}







resource "azapi_resource" "bp_webproxy_aux_CL" {
  name      = "bp_webproxy_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_webproxy_aux_CL",
          "columns" : [
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "description" : "",
              "name" : "event",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "process",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "service",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "message",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "log",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "host",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "description" : "",
              "name" : "ls_version",
              "type" : "string"
            }
          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}









resource "azapi_resource" "bp_webproxy_CL" {
  name      = "bp_webproxy_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_webproxy_CL",
          "columns" : [
            {
              "description" : "",
              "name" : "app",
              "type" : "string"
            },
            {
              "name" : "bytes",
              "type" : "string"
            },
            {
              "name" : "cache_control",
              "type" : "string"
            },
            {
              "name" : "destip",
              "type" : "string"
            },
            {
              "name" : "dhost",
              "type" : "string"
            },
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "file_name",
              "type" : "string"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "lat",
              "type" : "string"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "mt",
              "type" : "string"
            },
            {
              "name" : "mtd",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "proto",
              "type" : "string"
            },
            {
              "name" : "rep",
              "type" : "string"
            },
            {
              "name" : "rep_level",
              "type" : "string"
            },
            {
              "name" : "rule",
              "type" : "string"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "name" : "srcip",
              "type" : "string"
            },
            {
              "name" : "status",
              "type" : "string"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "name" : "ua",
              "type" : "string"
            },
            {
              "name" : "url",
              "type" : "string"
            },
            {
              "name" : "urlc",
              "type" : "string"
            },
            {
              "name" : "urlp",
              "type" : "string"
            },
            {
              "name" : "user",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "http_referrer",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "encoding_type",
              "type" : "string"
            }
          ]
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}









resource "azapi_resource" "bp_f5apm_CL" {
  name      = "bp_f5apm_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_f5apm_CL",
          "columns" : [
            {
              "description" : "",
              "name" : "direction",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "dst_ip",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "eventid",
              "type" : "int"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "name" : "location",
              "type" : "string"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "msg",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "partition",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "name" : "sessionid",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "sev",
              "type" : "int"
            },
            {
              "description" : "",
              "name" : "src_ip",
              "type" : "string"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "description" : "",
              "name" : "user",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "useragent",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "severity",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "eventtype",
              "type" : "string"
            }
          ]
          description = "Analytics Tier Table for F5 APM (SSL VPN) logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}












resource "azapi_resource" "bp_fta_CL" {
  name      = "bp_fta_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_fta_CL",
          "columns" : [
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for Kiteworks FTA logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}









resource "azapi_resource" "bp_fw_aux_CL" {
  name      = "bp_fw_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_fw_aux_CL",
          "columns" : [
            {
              "description" : "",
              "name" : "acl",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "direction",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "dst_interface",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "dst_ip",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "dst_port",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "event",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "eventid",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "host",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "log",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "description" : "",
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "message",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "process",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "protocol",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "service",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "src_interface",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "src_ip",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "src_port",
              "type" : "string"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "description" : "",
              "name" : "user",
              "type" : "string"
            },
            {
              "description" : "",
              "name" : "action",
              "type" : "string"
            }
          ]
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}








resource "azapi_resource" "bp_infoblox_CL" {
  name      = "bp_infoblox_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_infoblox_CL",
          "columns" : [
            {
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "name" : "message",
              "type" : "string"
            },
            {
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for InfoBlox logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}






resource "azapi_resource" "bp_logstash_stats_CL" {
  name      = "bp_logstash_stats_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_logstash_stats_CL",
          "columns" : [
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "apireq_timestamp",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ephemeral_id",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "heap_used",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "http_address",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "id",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "jvm",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "name",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "pipeline",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "snapshot",
              "type" : "boolean"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "status",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "tags",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "version",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Table contains statistics about logstash pulled from the Logstash API"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}









resource "azapi_resource" "bp_mcafee_CL" {
  name      = "bp_mcafee_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_mcafee_CL",
          "columns" : [
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "message",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for McAfee logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}



resource "azapi_resource" "bp_netdevices_aux_CL" {
  name      = "bp_netdevices_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_netdevices_aux_CL",
          "columns" : [
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "event",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "process",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "service",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "message",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "log",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "host",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_version",
              "type" : "string"
            }
          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}








resource "azapi_resource" "bp_netdevices_CL" {
  name      = "bp_netdevices_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_netdevices_CL",
          "columns" : [
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "message",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for Network Device logs"
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}






resource "azapi_resource" "bp_opswat_aux_CL" {
  name      = "bp_opswat_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_opswat_aux_CL",
          "columns" : [
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "event",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "process",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "service",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "message",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "log",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "host",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_version",
              "type" : "string"
            }
          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}







resource "azapi_resource" "bp_opswat_CL" {
  name      = "bp_opswat_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_opswat_CL",
          "columns" : [
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "aborted",
              "type" : "boolean"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "abortedReason",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "actualExt",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "allowed_actions_taken",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "blocked",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "blocked_actions_taken",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "count_allowed",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "count_blocked",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "detailActionTaken",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "deviceInfo",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "downloaded",
              "type" : "boolean"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "encryptedArchive",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "engThreatPairs",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "failed_download",
              "type" : "boolean"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "failed_to_delete",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "fileName",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "fileSize",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "fileStatus",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "fileType",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "fileTypeConverted",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "filetypeLong",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "fileTypeTotals",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "logType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "md5",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "media_image_file_copied",
              "type" : "boolean"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "media_image_file_failed_copy",
              "type" : "boolean"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "message",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "msg",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NtfsAdsFile",
              "type" : "boolean"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "pid",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "process",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "process_server",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "scanningSystem",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "scanResult",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "scanResultA",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "sessionEnd",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "sessionID",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "sessionStart",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "sha1",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "sha256",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "skippedScanFileCount",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "system_information",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "totalFilesProcessed",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "totalFilesScanned",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "totalSize",
              "type" : "string"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "unprocessed_files_count",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "userInfo",
              "type" : "dynamic"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "wasHashLookup",
              "type" : "int"
            },
            {
              "description" : "",
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "eventCode",
              "type" : "string"
            }
          ]
          description = "Analytics Tier Table for OPSWAT logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}








resource "azapi_resource" "bp_securid_CL" {
  name      = "bp_securid_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_securid_CL",
          "columns" : [
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "message",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for RSA SecurID logs"
        },
        "retentionInDays" : 90,
        "totalRetentionInDays" : 365
      }
    }
  )
}











resource "azapi_resource" "bp_securid_CL" {
  name      = "bp_securid_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_securid_CL",
          "columns" : [
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "event",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "host",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "log",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_timestamp",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ls_version",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "message",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "process",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "service",
              "type" : "dynamic"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TimeGenerated",
              "type" : "datetime"
            }
          ]
          description = "Analytics Tier Table for RSA SecurID logs"
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}










resource "azapi_resource" "bp_SecurityEvent_aux_CL" {
  name      = "bp_SecurityEvent_aux_CL"
  parent_id = "/subscriptions/3b6ec3d0-18a5-40b2-b076-c567766e210a/resourceGroups/rg-ccan-pltfrm-monitor-mgmt-001/providers/Microsoft.OperationalInsights/workspaces/log-ccan-pltfrm-mgmt-001"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "bp_SecurityEvent_aux_CL",
          "columns" : [
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SourceSystem",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Account",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AccountType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Computer",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "EventSourceName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Channel",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Task",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Level",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "EventData",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "EventID",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Activity",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "PartitionKey",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "RowKey",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "StorageAccount",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AzureDeploymentID",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AzureTableName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AccessList",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AccessMask",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AccessReason",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AccountDomain",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AccountExpires",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AccountName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AccountSessionIdentifier",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AdditionalInfo",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AdditionalInfo2",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AllowedToDelegateTo",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Attributes",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AuditPolicyChanges",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AuditsDiscarded",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AuthenticationLevel",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AuthenticationPackageName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AuthenticationProvider",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AuthenticationServer",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AuthenticationService",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "AuthenticationType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "CACertificateHash",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "CalledStationID",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "CallerProcessId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "CallerProcessName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "CallingStationID",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "CAPublicKeyHash",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "CategoryId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "CertificateDatabaseHash",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ClassId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ClassName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ClientAddress",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ClientIPAddress",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ClientName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "CommandLine",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "CompatibleIds",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "DCDNSName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "DeviceDescription",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "DeviceId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "DisplayName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Disposition",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "DomainBehaviorVersion",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "DomainName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "DomainPolicyChanged",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "DomainSid",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "EAPType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ElevatedToken",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ErrorCode",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ExtendedQuarantineState",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "FailureReason",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "FileHash",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "FilePath",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "FilePathNoUser",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Filter",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ForceLogoff",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Fqbn",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "FullyQualifiedSubjectMachineName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "FullyQualifiedSubjectUserName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "GroupMembership",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "HandleId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "HardwareIds",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "HomeDirectory",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "HomePath",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ImpersonationLevel",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "InterfaceUuid",
              "type" : "guid"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "IpAddress",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "IpPort",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "KeyLength",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LmPackageName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LocationInformation",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LockoutDuration",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LockoutObservationWindow",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LockoutThreshold",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LoggingResult",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LogonGuid",
              "type" : "guid"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LogonHours",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LogonID",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LogonProcessName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LogonType",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "LogonTypeName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "MachineAccountQuota",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "MachineInventory",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "MachineLogon",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "MandatoryLabel",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "MaxPasswordAge",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "MemberName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "MemberSid",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "MinPasswordAge",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "MinPasswordLength",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "MixedDomainMode",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NASIdentifier",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NASIPv4Address",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NASIPv6Address",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NASPort",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NASPortType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NetworkPolicyName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NewDate",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NewMaxUsers",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NewProcessId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NewProcessName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NewRemark",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NewShareFlags",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NewTime",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NewUacValue",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NewValue",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "NewValueType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ObjectName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ObjectServer",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ObjectType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ObjectValueName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "OemInformation",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "OldMaxUsers",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "OldRemark",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "OldShareFlags",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "OldUacValue",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "OldValue",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "OldValueType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "OperationType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "PackageName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ParentProcessName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "PasswordHistoryLength",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "PasswordLastSet",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "PasswordProperties",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "PreviousDate",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "PreviousTime",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "PrimaryGroupId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "PrivateKeyUsageCount",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "PrivilegeList",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Process",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ProcessId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ProcessName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Properties",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ProfilePath",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ProtocolSequence",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ProxyPolicyName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "QuarantineHelpURL",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "QuarantineSessionID",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "QuarantineSessionIdentifier",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "QuarantineState",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "QuarantineSystemHealthResult",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "RelativeTargetName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "RemoteIpAddress",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "RemotePort",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Requester",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "RequestId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "RestrictedAdminMode",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "RowsDeleted",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SamAccountName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ScriptPath",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SecurityDescriptor",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ServiceAccount",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ServiceFileName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ServiceName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ServiceStartType",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ServiceType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SessionName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ShareLocalPath",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ShareName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SidHistory",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Status",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubjectAccount",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubcategoryGuid",
              "type" : "guid"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubcategoryId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Subject",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubjectDomainName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubjectKeyIdentifier",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubjectLogonId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubjectMachineName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubjectMachineSID",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubjectUserName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubjectUserSid",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SubStatus",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TableId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetAccount",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetDomainName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetInfo",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetLinkedLogonId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetLogonGuid",
              "type" : "guid"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetLogonId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetOutboundDomainName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetOutboundUserName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetServerName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetSid",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetUser",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetUserName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TargetUserSid",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TemplateContent",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TemplateDSObjectFQDN",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TemplateInternalName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TemplateOID",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TemplateSchemaVersion",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TemplateVersion",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TokenElevationType",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TransmittedServices",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "UserAccountControl",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "UserParameters",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "UserPrincipalName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "UserWorkstations",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "VirtualAccount",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "VendorIds",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Workstation",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "WorkstationName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "EventLevelName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SourceComputerId",
              "type" : "guid"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "EventOriginId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "TimeCollected",
              "type" : "datetime"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "ManagementGroupName",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SystemUserId",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Version",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Opcode",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Keywords",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "Correlation",
              "type" : "string"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SystemProcessId",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "SystemThreadId",
              "type" : "int"
            },
            {
              "isDefaultDisplay" : false,
              "isHidden" : false,
              "name" : "EventRecordId",
              "type" : "string"
            }
          ]
          description = "Analytics Tier Table for RSA SecurID logs"
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 365
      }
    }
  )
}

