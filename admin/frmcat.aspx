<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmcat.aspx.cs" Inherits="admin_Default" %>
<%@ MasterType VirtualPath="~/admin/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
        <span style="font-size: x-large"><strong>Categories</strong></span></p>
    <table class="nav-justified" style="width: 72%">
        <tr>
            <td class="modal-sm" style="width: 211px; font-size: large"><strong>Category:</strong></td>
            <td style="width: 732px"><strong>
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" style="font-size: large" Width="310px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 211px; font-size: large">&nbsp;</td>
            <td style="width: 732px"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-size: large" Text="Submit" />
                <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="Button2" runat="server" style="font-size: large" Text="Cancel" />
                </strong></td>
        </tr>
        <tr>
            <td colspan="2" style="font-size: large">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Height="160px" Width="835px" DataKeyNames="catcod" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="catnam" HeaderText="catnam" SortExpression="catnam" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsquiz.clscat"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>

</asp:Content>

