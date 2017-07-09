<%@ Page Title="パスワードが変更されました" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPasswordConfirmation.aspx.cs" Inherits="AspDotNetSample.Account.ResetPasswordConfirmation" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <div>
        <p>パスワードが変更されました。ログインするには <asp:HyperLink ID="login" runat="server" NavigateUrl="~/Account/Login">こちら</asp:HyperLink> をクリックしてください </p>
    </div>
</asp:Content>
