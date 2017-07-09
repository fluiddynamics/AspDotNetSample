<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lockout.aspx.cs" Inherits="AspDotNetSample.Account.Lockout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup>
        <h1>ロックアウトされています。</h1>
        <h2 class="text-danger">このアカウントはロックアウトされています。後でもう一度お試しください。</h2>
    </hgroup>
</asp:Content>
