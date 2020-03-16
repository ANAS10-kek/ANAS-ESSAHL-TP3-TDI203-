<%@ Page Title="Inscrire une connexion externe" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterExternalLogin.aspx.cs" Inherits="TP.Account.RegisterExternalLogin" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  

    <asp:PlaceHolder runat="server">
        <div class="form-horizontal container">
           <h3>Inscrivez-vous avec votre compte  <%: ProviderName %></h3>
            <h4>Formulaire d'association</h4>
            <hr />
      
            <p class="text-success">
                Vous avez été authentifié auprès de <strong><%: ProviderName %></strong>. Veuillez entrer une adresse de messagerie ci-dessous pour le site actuel
                et cliquer sur le bouton Connexion.
            </p>
            <div class="form-group col-md-6">
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Email" Enabled="false" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="email"
                        Display="Dynamic" CssClass="text-danger" ErrorMessage="Required Field" />
                    <asp:ModelErrorMessage runat="server" ModelStateKey="Email" CssClass="text-error" />
                </div>
            </div>
             <div class="form-group col-md-6">
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-3 control-label">Username :</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="UserName" Enabled="false" CssClass="form-control" TextMode="SingleLine" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                        Display="Dynamic" CssClass="text-danger" ErrorMessage="Required Field" />
                    <asp:ModelErrorMessage runat="server" ModelStateKey="UserName" CssClass="text-error" />
                </div>
            </div>
            <div class="form-group col-md-6">
                <asp:Label runat="server" AssociatedControlID="NumberPhone" CssClass="col-md-2 control-label">NumberPhone</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="NumberPhone" CssClass="form-control" TextMode="Phone" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="NumberPhone"
                        Display="Dynamic" CssClass="text-danger" ErrorMessage="Required Field" />
                    <asp:ModelErrorMessage runat="server" ModelStateKey="NumberPhone" CssClass="text-error" />
                </div>
            </div>
            <div class="form-group col-md-6">
                <asp:Label runat="server" AssociatedControlID="Job" CssClass="col-md-2 control-label">Job</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Job" CssClass="form-control" TextMode="Phone" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Job"
                        Display="Dynamic" CssClass="text-danger" ErrorMessage="Required Field" />
                    <asp:ModelErrorMessage runat="server" ModelStateKey="Job" CssClass="text-error" />
                </div>
            </div>

                  <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" Text="Continue" CssClass="btn btn-success" OnClick="LogIn_Click" />
                </div>
            </div>
        </div>
    </asp:PlaceHolder>
</asp:Content>
