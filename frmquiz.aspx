<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmquiz.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script lang="javascript">
        function reFresh() {
            document.getElementById("ContentPlaceHolder1_Button1").click();
        }
        window.setInterval("reFresh()", 100);
  </script>
    <p>
        &nbsp;<br />
        <div class="text-left">
            <strong><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Score:-
            </span>
            <asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
            /6</strong><br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" Height="131px" PageSize="1" ShowHeader="False" Width="1281px" DataKeyNames="qstcode" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        Question:-
                        <asp:Label ID="Label1" runat="server" Text=<%# Eval("qstdsc") %>></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerSettings FirstPageText="" LastPageText="Finish" Mode="NextPrevious" NextPageText="Next" PreviousPageText="" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<br />
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        <asp:Timer ID="lbltim" runat="server" Interval="1000" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style1" style="font-size: x-large" Text="30"></asp:Label>
        &nbsp;seconds remaining
    </ContentTemplate>
</asp:UpdatePanel>
<br />
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" Height="244px" OnEditCommand="DataList1_EditCommand" Width="1150px" style="margin-right: 0px; margin-left: 137px;" BorderColor="#660033" Font-Bold="True" ForeColor="Black">
            <ItemTemplate>
                <asp:Button ID="Button1"  runat="server" CommandName="Edit" Text='<%#Container.DataItem %>' CommandArgument=<%# Container.DataItem %> />
            
                <%--<asp:CheckBox ID="CheckBox1" runat="server" Text=<%# Container.DataItem %> OnCheckedChanged="Page_Load" AutoPostBack="true"/>
            --%>
                <%--<asp:RadioButton ID="RadioButton1" runat="server" Text=<%# Eval("optdsc") %> GroupName="Ans" />
                <asp:RadioButton ID="RadioButton2" runat="server"Text=<%# Eval("optdsc") %> GroupName="Ans" />
            --%>

            </ItemTemplate>

        </asp:DataList>
    </p>
    <p class="text-center">
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="Large" ForeColor="#0066FF" Height="43px" OnClick="Button2_Click" Text="Finish Test" Width="379px" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

</asp:Content>

