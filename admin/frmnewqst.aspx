﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmnewqst.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: x-large">
        <strong>Question Details</strong></p>
    <table class="nav-justified" style="width: 70%; height: 201px">
        <tr>
            <td style="width: 178px; font-size: large;"><strong>Select Category:</strong></td>
            <td><strong>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="catnam" DataValueField="catcod" Height="61px" Width="329px" style="font-size: large">
                </asp:DropDownList>
                <br />
                </strong></td>
        </tr>
        <tr>
            <td style="width: 178px; font-size: large;"><strong>Select Level:</strong></td>
            <td><strong>
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" style="font-size: large" Width="333px" Height="61px">
                    <asp:ListItem Value="B">Beginer</asp:ListItem>
                    <asp:ListItem Value="I">Intermediate</asp:ListItem>
                    <asp:ListItem Value="E">Expert</asp:ListItem>
                </asp:DropDownList>
                <br />
                </strong></td>
        </tr>
        <tr>
            <td style="width: 178px; font-size: large; height: 95px;"><strong>Question Description:</strong></td>
            <td style="height: 95px"><strong>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="64px" TextMode="MultiLine" ValidateRequestMode="Disabled" Width="341px" style="font-size: large"></asp:TextBox>
                <br style="font-size: large" />
                <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                </strong></td>
        </tr>
        <tr>
            <td style="width: 178px; font-size: large;"><strong>Answer:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="41px" Width="334px"></asp:TextBox>
                <br />
                <br />
                <strong>
                <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="Submit" style="font-size: large" />
                <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="Button4" runat="server" Text="Cancel" OnClick="Button2_Click" style="font-size: large" />
                </strong>
            </td>
        </tr>
    </table>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsquiz.clscat"></asp:ObjectDataSource>
    <br />
</asp:Content>

