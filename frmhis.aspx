<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmhis.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: xx-large">
        <strong>Text History:</strong></p>
    <p style="font-size: xx-large">
        &nbsp;</p>
    <p style="font-size: xx-large">
        <asp:GridView ID="GridView1" runat="server" style="font-size: x-large" Width="1319px" DataSourceID="ObjectDataSource1">
        </asp:GridView>
    </p>
<p style="font-size: xx-large">
        &nbsp;</p>
<p style="font-size: xx-large">
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="dsprec" TypeName="nsquiz.clsrec">
            <SelectParameters>
                <asp:SessionParameter Name="eml" SessionField="eml" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
</asp:Content>

