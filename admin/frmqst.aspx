<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmqst.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: x-large">
        <strong>Question Bank</strong></p>
    <table style="height: 246px">
        <tr>
            <td style="width: 3px; font-size: large; height: 61px;"><strong>Select Category:</strong></td>
            <td style="width: 250px; height: 61px;">
                <strong>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="catnam" DataValueField="catcod" Height="75px" style="font-size: x-large" Width="258px">
                </asp:DropDownList>
                <br />
                <br />
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 3px; height: 2px; font-size: large;"><strong>Select Level:</strong></td>
            <td style="width: 250px; height: 2px;">
                <strong>
                <br />
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" Height="70px" style="font-size: x-large" Width="259px" AutoPostBack="True">
                    <asp:ListItem Value="B">Beginer</asp:ListItem>
                    <asp:ListItem Value="I">Intermediate</asp:ListItem>
                    <asp:ListItem Value="E">Expert</asp:ListItem>
                </asp:DropDownList>
                <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/frmnewqst.aspx">Add New Question</asp:HyperLink>
                </strong>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Height="34px" Width="658px" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource2" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="qstdsc" HeaderText="Questions" SortExpression="qstdsc" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 3px">&nbsp;</td>
            <td style="width: 250px">&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsquiz.clscat"></asp:ObjectDataSource>
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="disp_rec" TypeName="nsquiz.clstbqst">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="catcod" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList2" Name="lvl" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

