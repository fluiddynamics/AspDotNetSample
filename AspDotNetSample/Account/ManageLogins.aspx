<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageLogins.aspx.cs" Inherits="AspDotNetSample.Account.ManageLogins" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>外部ログインを管理します。</h2>
    <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    <div>
        <section id="externalLoginsForm">

            <asp:ListView runat="server"
                ItemType="Microsoft.AspNet.Identity.UserLoginInfo"
                SelectMethod="GetLogins" DeleteMethod="RemoveLogin" DataKeyNames="LoginProvider,ProviderKey">

                <LayoutTemplate>
                    <h4>登録済みのログイン</h4>
                    <table class="table">
                        <tbody>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </tbody>
                    </table>

                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#: Item.LoginProvider %></td>
                        <td>
                            <asp:Button runat="server" Text="削除" CommandName="Delete" CausesValidation="false"
                                ToolTip='<%# "アカウントから " + Item.LoginProvider + " このログインを削除します" %>'
                                Visible="<%# CanRemoveExternalLogins %>" CssClass="btn btn-default" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>

        </section>
    </div>
    <div>
        <uc:OpenAuthProviders runat="server" ReturnUrl="~/Account/ManageLogins" />
    </div>
</asp:Content>
