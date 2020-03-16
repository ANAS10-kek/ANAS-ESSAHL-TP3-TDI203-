<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpenAuthProviders.ascx.cs" Inherits="TP.Account.OpenAuthProviders" %>

<div id="socialLoginList">
    <h4 class="py-3 text-center">OR</h4>
    <button class="btnGoogle col-md-12" type="submit" name="provider" value="Google">
        <%--<div class="google-btn">--%>
        <div class="google-icon-wrapper">
            <img class="google-icon" src="../pic/btn_google_light_normal_ios.svg" />
        </div>

        <p class="btn-text">Sign in with google</p>
        <%--   </div>--%>
    </button>
    <br />
    <button type="submit" style="background-color: #0d8cf1; height: max-content; display: flex; justify-content: space-between; align-items: center; padding: 0px 0px 0px 3px; margin: 0; text-decoration: none; color: #ffffff; cursor: pointer; border: none; box-shadow: 0 3px 4px 0 rgba(0,0,0,.25);"
        class="btnFacebook col-md-12" name="provider" value="Facebook"
        title="Connexion à l'aide de votre compte.">
        <span class="IconFace">
            <i style="color: white" class="fab fa-3x fa-facebook-square"></i>
        </span>
        <span style="padding: 0px 50px; font-family: Roboto;">Continue with Facebook</span>
    </button>
</div>
