﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmstrt.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner-text">
               <div class="container">
                  <h1>Prepare for exams  the smart way</h1>
                  <h3 class="text-center"><strong>Join us today to know how  you can ace entrance exams  </strong>  </h3>
                   <p>&nbsp;</p>
                        <div class="search-box">	
                             <table>
                                 <tr>
                                     <td class="auto-style1" style="width: 517px; text-align: center; font-size: x-large;"><strong>Enter Email:</strong></td>
                                     <td class="text-center" style="width: 994px">
                                         <br />
                                         <asp:TextBox ID="TextBox1" runat="server" Width="606px" Height="66px" BorderColor="Black"></asp:TextBox>
                                         <br />
                                     </td>
                                 </tr>
                                 <caption class="text-center">
                                 <br />
                                 <tr>
                                     <td class="auto-style1" style="width: 517px; text-align: center; font-size: x-large;"><strong>Enter Category:</strong></td>
                                     <td class="text-center" style="width: 994px">
                                         <br />
                                         <strong>
                                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Width="614px" Height="70px" DataSourceID="ObjectDataSource1" DataTextField="catnam" DataValueField="catcod" style="font-weight: bold; margin-left: 0px">
                                         </asp:DropDownList>
                                         </strong>
                                         <br />
                                         <br />
                                     </td>
                                 </tr>
                                 <caption class="text-center">
                                 <br />
                                 <tr>
                                     <td class="auto-style1" style="width: 517px; text-align: center; font-size: x-large;"><strong>Select Level:</strong></td>
                                     <td class="text-center" style="width: 994px">
                                         <br />
                                         <strong>
                                         <asp:DropDownList ID="DropDownList2" runat="server" Height="70px" Width="616px" style="font-weight: bold; margin-left: 13">
                                             <asp:ListItem Value="B">Beginer</asp:ListItem>
                                             <asp:ListItem Value="I">Intermediate</asp:ListItem>
                                             <asp:ListItem Value="E">Expert</asp:ListItem>
                                         </asp:DropDownList>
                                         <br />
                                         </strong>
                                         <br />
                                     </td>
                                 </tr>
                               
                             </table>
                             <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsquiz.clscat"></asp:ObjectDataSource>
                          </div>
                          <div class="learning-btn" style="text-align: center">
                              <br />
                             <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="b1" CssClass="btn" Text="Start Quiz Now" runat="server" OnClick="b1_Click" Height="64px" style="margin-left: 0" Width="333px"  />
                          </div>
                       </p>
                   </div>
        </div>
    
</asp:Content>

