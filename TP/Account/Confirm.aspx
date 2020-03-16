<%@ Page Title="Confirmation du compte" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="TP.Account.Confirm" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   

    <div class="container py-5 ml-auto">
         <h2><%: Title %>.</h2>
                 Click <asp:Button style="border:none;background-color:white;" Text="Here" runat="server" CssClass="btn-link" OnClick="Unnamed1_Click" /> to Confirm ur account             
          
    </div>
</asp:Content>
