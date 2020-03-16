<%@ Page Title="S'inscrire" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TP.Account.Register" %>

<%@ Import Namespace="TP" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<asp:Content ID="content1" ContentPlaceHolderID="showcase_register" runat="server">
   
    <div class="" style="background: url(/pic/showcase.jpg) no-repeat center center/cover; height: max-content; font-family: 'Indie Flower', cursive;">
       
        <div class=" container col-md-6 text-light d-flex flex-column py-5 ">
            <div class="d-flex flex-column justify-content-around p-0">
                <span>Prepare for</span>
                <span id="title">SMART  CITY
                    <br />
                    CONFERENCE</span>
                <h3 style="font-size: 1.8rem" class="text-success">2018</h3>
                <span style="color: red; font-size: 1.5rem">Register <span style="color: white">&</span> Join</span>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <p  class="text-danger container">
        <asp:Literal runat="server"  ID="ErrorMessage" />
    </p>
        <div class="py-5 " style="background-color: #d1e2e2;">
            <asp:Label ID="Error" runat="server" />
            <div class="col-md-4 p-1 m-auto " style="background: linear-gradient( #23771d,#23771d, #ffffff,#23771d, yellow,#23771d,#23771d, #ffffff,#23771d, #ffffff,#23771d,#23771d, yellow, #23771d, #ffffff,#23771d, yellow,#23771d,#23771d, yellow,#23771d, yellow,#23771d);">
                <div class="py-5 rounded" style="background-color: #d1e2e2;">
                    <div class="col-md-12 d-flex flex-column justify-content-center align-items-center">
                        <h3 class="text-center">Register <span class="text-success">&</span> Get Your
                <br />
                            Invitation
                  <br />
                            to the Conference</h3>
                        <div class="col-md-11">
                            <asp:TextBox ID="Email" runat="server" CssClass="form-control col-md-12 mt-1 " BackColor="#f4f4f4" placeholder="Enter your email address" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="Required Field." />
                            <asp:RegularExpressionValidator Display="Dynamic" ErrorMessage="Format incorrect(exemple@aze.com)" ForeColor="red" CssClass="pl-2" ValidationExpression="\S+@\S+\.\S+" ControlToValidate="Email" runat="server" />
                        </div>
                        <div class="col-md-11">
                            <asp:TextBox runat="server" CssClass="form-control col-md-12 mt-1  " BackColor="#f4f4f4" placeholder="Confirm you email address" ID="confirm_email" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Field." ForeColor="red" Display="Dynamic" CssClass="pl-2" ControlToValidate="confirm_email" runat="server" />
                            <asp:CompareValidator CssClass="pl-2" ErrorMessage="Not match" ForeColor="red" Display="Dynamic" ControlToValidate="confirm_email" runat="server" ControlToCompare="Email" Operator="Equal" />
                        </div>
                        <div class="col-md-11">
                            <asp:TextBox runat="server" CssClass="form-control col-md-12 mt-1 " BackColor="#f4f4f4" placeholder="Enter your Username" ID="Nom_txt" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Field." ForeColor="red" Display="Dynamic" CssClass="pl-2" ControlToValidate="Nom_txt" runat="server" />
                        </div>
                        <div class="col-md-11">
                            <asp:TextBox runat="server" TextMode="Password" CssClass="form-control col-md-12 mt-1 " BackColor="#f4f4f4" placeholder="Enter your password" ID="Password" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Field." ForeColor="red" Display="Dynamic" CssClass="pl-2" ControlToValidate="Password" runat="server" />

                        </div>
                        <div class="col-md-11">
                            <asp:TextBox runat="server" ID="ConfirmPassword" CssClass="form-control col-md-12 mt-1  " BackColor="#f4f4f4" TextMode="Password" placeholder="Confirm your password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="Required Field." />
                            <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match" />
                        </div>
                        <div class="col-md-11">
                            <asp:TextBox runat="server" CssClass="form-control col-md-12 mt-1  " BackColor="#f4f4f4" placeholder="Your Phone number..." ID="PhoneNumber" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Field." ForeColor="red" Display="Dynamic" CssClass="pl-2" ControlToValidate="PhoneNumber" runat="server" />
                            <asp:RegularExpressionValidator ForeColor="red" Display="Dynamic" CssClass="pl-2" ErrorMessage="Phone must have only numbers" ControlToValidate="PhoneNumber" ValidationExpression="[0-9]{10}" runat="server" />
                        </div>
                        <div class="col-md-11">
                            <asp:TextBox runat="server" CssClass="form-control col-md-12 mt-1 " BackColor="#f4f4f4" placeholder="Your Job.." ID="emploi_txt" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Field." ForeColor="red" Display="Dynamic" CssClass="pl-2" ControlToValidate="emploi_txt" runat="server" />
                        </div>
                        <div class="d-flex flex-column col-md-11 justify-content-around">
                            <asp:Button runat="server" CssClass="btn btn-success mt-4" OnClick="CreateUser_Click" Text="Resgister"/>
                            <section id="socialLoginForm">
                                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <asp:HiddenField ID="alerty" Value="aaaaaaaaa" runat="server" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script>
        function alerty() {
            Swal.fire(
                'Good job!',
                'Register finished with success,Check your Email!'
            );

        }

    </script>
</asp:Content>
