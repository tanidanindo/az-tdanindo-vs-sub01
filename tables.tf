resource "azapi_resource" "data_collection_logs_table" {
  name      = "Example_CL"
  parent_id = "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-td-vs01/providers/Microsoft.OperationalInsights/workspaces/tanilaw01"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "Example_CL",
          "columns" : [
            {
              "name" : "TimeGenerated",
              "type" : "datetime",
              "description" : "The time at which the data was generated"
            },
            {
              "name" : "Level",
              "type" : "string",
              "description" : "Log level"
            },
            {
              "name" : "Logger",
              "type" : "string",
              "description" : "Logger name"
            },
            {
              "name" : "Context",
              "type" : "string",
              "description" : "Context of the log line"
            },
            {
              "name" : "Message",
              "type" : "string",
              "description" : "Log message"
            },
            {
              "name" : "AdditionalContext",
              "type" : "string",
              "description" : "Additional context of the log line"
            }
          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 30
      }
    }
  )
}


resource "azapi_resource" "data_collection_logs_table2" {
  name      = "Example2_CL"
  parent_id = "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-td-vs01/providers/Microsoft.OperationalInsights/workspaces/tanilaw01"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "Example2_CL",
          "columns" : [
            {
              "description" : "The time at which the data was generated",
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "description" : "The computer that generated the data",
              "name" : "Computer",
              "type" : "string"
            },
            {
              "description" : "Additional message properties",
              "name" : "AdditionalContext",
              "type" : "dynamic"
            },
            {
              "description" : "Name of the counter",
              "name" : "CounterName",
              "type" : "string"
            },
            {
              "description" : "Value collected for the counter",
              "name" : "CounterValue",
              "type" : "real"
            }
          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 30
      }
    }
  )
}


resource "azapi_resource" "data_collection_logs_table3" {
  name      = "Example3_CL"
  parent_id = "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-td-vs01/providers/Microsoft.OperationalInsights/workspaces/tanilaw01"
  type      = "Microsoft.OperationalInsights/workspaces/tables@2022-10-01"
  body = jsonencode(
    {
      "properties" : {
        "schema" : {
          "name" : "Example3_CL",
          "columns" : [
            {
              "description" : "The time at which the data was generated",
              "name" : "TimeGenerated",
              "type" : "datetime"
            },
            {
              "description" : "The computer that generated the data",
              "name" : "Computer",
              "type" : "string"
            },
            {
              "description" : "Additional message properties",
              "name" : "AdditionalContext",
              "type" : "dynamic"
            },
            {
              "description" : "Name of the counter",
              "name" : "CounterName",
              "type" : "string"
            },
            {
              "description" : "Value collected for the counter",
              "name" : "CounterValue",
              "type" : "real"
            }

          ]
        },
        "retentionInDays" : 30,
        "totalRetentionInDays" : 30
      }
    }
  )
}


resource "azapi_resource" "data_collection_logs_table3" {
  name      = "Example3_CL"
  parent_id = "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-td-vs01/providers/Microsoft.OperationalInsights/workspaces/tanilaw01"
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
        "totalRetentionInDays" : 30
      }
    }
  )
}
