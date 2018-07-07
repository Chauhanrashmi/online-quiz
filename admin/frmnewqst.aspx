<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmnewqst.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: x-large">
        <strong>Question Details</strong></p>
    <table class="nav-justified" style="width: 70%; height: 201px">
        <tr>
            <td style="width: 178px; font-size: large;"><strong>Select Category:</strong></td>
            <td><strong>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="catnam" DataValueField="catcod" Height="18px" Width="155px" style="font-size: large">
                </asp:DropDownList>
                </strong></td>
        </tr>
        <tr>
            <td style="width: 178px; font-size: large;"><strong>Select Level:</strong></td>
            <td><strong>
                <asp:DropDownList ID="DropDownList2" runat="server" style="font-size: large" Width="156px">
                    <asp:ListItem Value="B">Beginer</asp:ListItem>
                    <asp:ListItem Value="I">Intermediate</asp:ListItem>
                    <asp:ListItem Value="E">Expert</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
        </tr>
        <tr>
            <td style="width: 178px; font-size: large;"><strong>Question Description:</strong></td>
            <td><strong>
                <asp:TextBox ID="TextBox1" runat="server" Height="64px" TextMode="MultiLine" ValidateRequestMode="Disabled" Width="341px" style="font-size: large"></asp:TextBox>
                <br style="font-size: large" />
                <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" style="font-size: large" />
                <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" style="font-size: large" />
                </strong></td>
        </tr>
        <tr>
            <td style="width: 178px; font-size: large;"><strong>Answer:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="41px" Width="334px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsquiz.clscat"></asp:ObjectDataSource>
    <br />
</asp:Content>

