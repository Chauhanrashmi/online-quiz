<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="nav-justified">
    <tr>
        <td>&nbsp;</td>
        <td>

    <p class="text-center">
    &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
            <p class="text-center">
        <img src="images/register-bannerImg.jpg" alt="" style="height: 197px; width: 545px; margin-top: 0px"/></p>
            <p class="text-center">
                &nbsp;</p>
            <p class="text-center">
                &nbsp;</p>
            <p class="text-center">
        &nbsp;<span style="font-size: x-large"><strong>Enter Email Address:</strong></span><asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="301px"></asp:TextBox>
</p>
            <p class="text-center">
                &nbsp;</p>
<p class="text-center">
    <strong><span style="font-size: x-large">Enter Password</span></strong>:<asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="360px" style="margin-left: 0px"></asp:TextBox>
</p>
            <p class="text-center">
                &nbsp;</p>
<p class="text-center">
    &nbsp;</p>
<p class="text-center">
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" OnClick="Button1_Click" Text="Log In" Width="543px" BackColor="#9966FF" ForeColor="Black" style="color: #000000; margin-top: 0; background-color: #999999" />
</p>

        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>

