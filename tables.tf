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
