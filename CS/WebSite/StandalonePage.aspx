<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StandalonePage.aspx.cs" Inherits="StandalonePage" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="ads"
        KeyFieldName="ProductID">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="3">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="EAN13" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [Discontinued], [EAN13] FROM [Products]">
    </asp:AccessDataSource>
    </form>
</body>
</html>