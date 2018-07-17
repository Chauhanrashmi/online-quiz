<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p class="text-center">
    &nbsp;</p>
<p class="text-center">
    &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        <span style="font-size: x-large"><strong>Enter Email Address:</strong></span><asp:TextBox ID="TextBox1" runat="server" Height="42px" Width="301px"></asp:TextBox>
</p>
<p class="text-center">
    &nbsp;</p>
<p class="text-center">
    <strong><span style="font-size: x-large">Enter Password</span></strong>:<asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="353px"></asp:TextBox>
</p>
<p class="text-center">
    &nbsp;</p>
<p class="text-center">
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" OnClick="Button1_Click" Text="Log In" Width="543px" />
</p>

</asp:Content>

