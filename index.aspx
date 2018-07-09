<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner-text">
               <div class="container">
                  <h1>Prepare for exams  the smart way</h1>
                  <p>Join us today to know how  you can ace entrance exams  </p>
                   <p>&nbsp;</p>
                   <p>
                        <div class="search-box">	
                             <table>
                                 <tr>
                                     <td class="auto-style1"><strong>Enter Email:</strong></td>
                                     <td>
                                         <asp:TextBox ID="TextBox1" runat="server" Width="421px"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <br />
                                 <tr>
                                     <td class="auto-style1"><strong>Enter Category:</strong></td>
                                     <td>
                                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Width="470px" Height="60px" DataSourceID="ObjectDataSource1" DataTextField="catnam" DataValueField="catcod">
                                         </asp:DropDownList>
                                     </td>
                                 </tr>
                                 <br />
                                 <tr>
                                     <td class="auto-style1"><strong>Select Level:</strong></td>
                                     <td>
                                         <asp:DropDownList ID="DropDownList2" runat="server" Height="71px" Width="463px">
                                             <asp:ListItem Value="B">Beginer</asp:ListItem>
                                             <asp:ListItem Value="I">Intermediate</asp:ListItem>
                                             <asp:ListItem Value="E">Expert</asp:ListItem>
                                         </asp:DropDownList></td>
                                 </tr>
                               
                             </table>
                             <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsquiz.clscat"></asp:ObjectDataSource>
                          </div>
                          <div class="learning-btn">
                             <br /><asp:Button ID="b1" CssClass="btn" Text="Start Quiz Now" runat="server" OnClick="b1_Click"  />
                          </div>
                       </p>
                   </div>
        </div>
    
</asp:Content>

