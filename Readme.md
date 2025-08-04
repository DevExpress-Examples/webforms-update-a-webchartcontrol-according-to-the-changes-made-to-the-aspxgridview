# ASP.NET Web Forms Chart - How to update a WebChartControl based on ASPxGridView changes

This example demonstrates how to update a WebChartControl based on edited grid data. Both WebChartControl and ASPxGridView use [XpoDataSource](https://docs.devexpress.com/AspNet/3726/components/grid-view/concepts/bind-to-data/binding-to-large-data-database-server-mode/data-binding-to-large-data-via-xpo). WebChartControl is updated via the [ASPxClientWebChartControl.PerformCallback()](https://docs.devexpress.com/AspNet/js-ASPxClientWebChartControl.PerformCallback(args)) method in the [ASPxClientGridView.EndCallback](https://docs.devexpress.com/AspNet/js-ASPxClientGridView.EndCallback) event handler.

## Files to Review

* [Products.cs](./CS/WebSite/App_Code/Products.cs) (VB: [Products.vb](./VB/WebSite/App_Code/Products.vb))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Global.asax](./CS/WebSite/Global.asax) (VB: [Global.asax](./VB/WebSite/Global.asax))

<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=webforms-update-a-webchartcontrol-according-to-the-changes-made-to-the-aspxgridview&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=webforms-update-a-webchartcontrol-according-to-the-changes-made-to-the-aspxgridview&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
