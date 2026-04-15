resource "azapi_resource" "data_collection_rule_placeholder" {
  name      = "bp-dcr-placeholder"
  parent_id = var.resource_group_id
  type      = "microsoft.insights/datacollectionrules@2022-06-01"
  body = jsonencode(
    {
      kind     = "Direct"
      location = var.resource_group_location
      properties = {
        streamDeclarations = {
          Custom-bp_placeholder_CL = {
            columns = [

            ]
          }
        }

        destinations = {
          logAnalytics = [
            {
              workspaceResourceId = var.log_analytics_workspace_id
              name                = var.log_analytics_workspace_name
            }
          ]
        }

        dataFlows = [
          {
            streams      = ["Custom-bp_placeholder_CL"]
            destinations = [var.log_analytics_workspace_name]
            transformKql = "source|extend TimeGenerated = todatetime(ls_timestamp)\n"
            outputStream = "Custom-bp_placeholder_CL"
          }
        ]
      }
    }
  )
}
