<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="PageNestedToMasterPage.aspx.cs" Inherits="PageNestedToMasterPage" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
</asp:Content>