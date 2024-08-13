<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v23.1, Version=23.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v23.1, Version=23.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.XtraCharts.v23.1.Web, Version=23.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v23.1, Version=23.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<%@ Register Assembly="DevExpress.Xpo.v23.1, Version=23.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" ClientInstanceName="chart"
                Height="261px" Width="1016px" DataSourceID="XpoDataSource1"
                CrosshairEnabled="True">
                <SeriesSerializable>
                    <cc1:Series Name="Series 1"
                        ArgumentDataMember="ProductName" ValueDataMembersSerializable="UnitPrice">
                        <ViewSerializable>
                            <cc1:LineSeriesView></cc1:LineSeriesView>
                        </ViewSerializable>
                        <LabelSerializable>
                            <cc1:PointSeriesLabel LineVisibility="True">
                            </cc1:PointSeriesLabel>
                        </LabelSerializable>
                    </cc1:Series>
                </SeriesSerializable>
                <SeriesTemplate>
                    <LabelSerializable>
                        <cc1:SideBySideBarSeriesLabel LineVisibility="True">
                        </cc1:SideBySideBarSeriesLabel>
                    </LabelSerializable>
                    <ViewSerializable>
                        <cc1:SideBySideBarSeriesView>
                        </cc1:SideBySideBarSeriesView>
                    </ViewSerializable>
                </SeriesTemplate>
                <DiagramSerializable>
                    <cc1:XYDiagram>
                        <AxisX VisibleInPanesSerializable="-1">
                            <Label Angle="45"></Label>
                        </AxisX>
                        <AxisY VisibleInPanesSerializable="-1">
                        </AxisY>
                    </cc1:XYDiagram>
                </DiagramSerializable>
                <FillStyle>
                    <OptionsSerializable>
                        <cc1:SolidFillOptions/>
                    </OptionsSerializable>
                </FillStyle>
            </dxchartsui:WebChartControl>
            <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" Width="1015px" AutoGenerateColumns="False" DataSourceID="XpoDataSource1" KeyFieldName="ProductID">
                <Columns>
                    <dxwgv:GridViewCommandColumn VisibleIndex="2" ShowEditButton="True">
                    </dxwgv:GridViewCommandColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataCheckColumn FieldName="Discontinued" Visible="False">
                    </dxwgv:GridViewDataCheckColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="EAN13" Visible="False"
                        VisibleIndex="0">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True"
                        VisibleIndex="4">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="5">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="QuantityPerUnit" Visible="False"
                        VisibleIndex="1">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="6">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="7">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="8">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="9">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="10">
                    </dxwgv:GridViewDataTextColumn>
                </Columns>
                <SettingsPager PageSize="15">
                </SettingsPager>
                <ClientSideEvents BeginCallback="function(s, e) {
	callBackEvent = e.command;
}"
                    EndCallback="function(s, e) {
	if (callBackEvent == &quot;UPDATEEDIT&quot;)
		chart.PerformCallback(&quot;test&quot;);
}" />
            </dxwgv:ASPxGridView>

        </div>

        <dx:XpoDataSource ID="XpoDataSource1" runat="server" TypeName="nwind.Products">
        </dx:XpoDataSource>

    </form>
</body>
</html>
