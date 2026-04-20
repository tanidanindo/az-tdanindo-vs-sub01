resource "azurerm_monitor_data_collection_rule" "example" {
  name                = "dcr-example"
  resource_group_name = "rg-sentinel-migration"
  location            = var.resource_group_location

  destinations {
    log_analytics {
      name                  = "tanilaw01"
      workspace_resource_id = "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-td-vs01/providers/Microsoft.OperationalInsights/workspaces/tanilaw01"
    }
  }
  data_flow {
    streams       = ["Custom-Example_CL"]
    destinations  = ["tanilaw01"]
    output_stream = "Custom-Example_CL"
  }
  stream_declaration {
    stream_name = "Custom-Example_CL"
    column {
      name = "TimeGenerated"
      type = "datetime"
    }
    column {
      name = "Level"
      type = "string"
    }
    column {
      name = "Logger"
      type = "string"
    }
    column {
      name = "Context"
      type = "string"
    }
    column {
      name = "Message"
      type = "string"
    }
    column {
      name = "AdditionalContext"
      type = "string"
    }
  }
}






resource "azapi_resource" "data_collection_rule_1" {
  name      = "dcr01"
  parent_id = "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-sentinel-migration"
  type      = "microsoft.insights/datacollectionrules@2022-06-01"
  body = jsonencode(
    {
      kind     = "Direct"
      location = var.resource_group_location
      properties = {
        dataCollectionEndpointId : "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-secops/providers/Microsoft.Insights/dataCollectionEndpoints/dce01",
        streamDeclarations = {
          "Custom-Example2_CL" = {
            columns = [
              {
                name = "TimeGenerated"
                type = "datetime"
              },
              {
                name = "Level"
                type = "string"
              },
              {
                name = "Logger"
                type = "string"
              },
              {
                name = "Context"
                type = "string"
              },
              {
                name = "Message"
                type = "string"
              },
              {
                name = "AdditionalContext"
                type = "string"
              }
            ]
          }
        }

        destinations = {
          logAnalytics = [
            {
              workspaceResourceId = "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-td-vs01/providers/Microsoft.OperationalInsights/workspaces/tanilaw01"
              name                = "tanilaw01"
            }
          ]
        }

        dataFlows = [
          {
            streams      = ["Custom-Example2_CL"]
            destinations = ["tanilaw01"]
            outputStream = "Custom-Example2_CL"
          }
        ]
      }
    }
  )
}
