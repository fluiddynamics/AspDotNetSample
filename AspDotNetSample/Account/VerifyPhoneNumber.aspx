<%@ Page Title="電話番号を確認する" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerifyPhoneNumber.aspx.cs" Inherits="AspDotNetSample.Account.VerifyPhoneNumber" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <h2><%: Title %>。</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="form-horizontal">
        <h4>確認コードを入力する</h4>
        <hr />
        <asp:HiddenField runat="server" ID="PhoneNumber" />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Code" CssClass="col-md-2 control-label">コード</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Code" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Code"
                    CssClass="text-danger" ErrorMessage="[コード] フィールドは必須です。" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="Code_Click"
                    Text="送信" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
