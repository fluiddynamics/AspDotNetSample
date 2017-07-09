<%@ Page Title="アカウントの管理." Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="AspDotNetSample.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>。</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>アカウント設定を変更してください</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>パスワード:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[変更]" Visible="false" ID="ChangePassword" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[作成]" Visible="false" ID="CreatePassword" runat="server" />
                    </dd>
                    <dt>外部ログイン:</dt>
                    <dd><%: LoginsCount %>
                        <asp:HyperLink NavigateUrl="/Account/ManageLogins" Text="[管理]" runat="server" />

                    </dd>
                    <%--
                        2 要素認証システムでの検証の 2 番目の要素として、電話番号を使用できます。
                        SMS を使用する 2 要素認証をサポートするように、この ASP.NET アプリケーションを
                        設定する方法の詳細については、<a href="https://go.microsoft.com/fwlink/?LinkId=403804">この資料</a>をご覧ください。
                        2 要素認証を設定した後、次のブロックをコメント解除します
                    --%>
                    <%--
                    <dt>電話番号:</dt>
                    <% if (HasPhoneNumber)
                       { %>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/AddPhoneNumber" runat="server" Text="[追加]" />
                    </dd>
                    <% }
                       else
                       { %>
                    <dd>
                        <asp:Label Text="" ID="PhoneNumber" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/AddPhoneNumber" runat="server" Text="[変更]" /> &nbsp;|&nbsp;
                        <asp:LinkButton Text="[削除]" OnClick="RemovePhone_Click" runat="server" />
                    </dd>
                    <% } %>
                    --%>

                    <dt>2 要素認証:</dt>
                    <dd>
                        <p>
                            2 要素認証プロバイダーが構成されていません。2 要素認証をサポートするように、この ASP.NET アプリケーションを
                            設定する方法の詳細については、<a href="https://go.microsoft.com/fwlink/?LinkId=403804">この資料</a>をご覧ください。
                        </p>
                        <% if (TwoFactorEnabled)
                          { %> 
                        <%--
                        有効
                        <asp:LinkButton Text="[無効化]" runat="server" CommandArgument="false" OnClick="TwoFactorDisable_Click" />
                        --%>
                        <% }
                          else
                          { %> 
                        <%--
                        無効
                        <asp:LinkButton Text="[有効化]" CommandArgument="true" OnClick="TwoFactorEnable_Click" runat="server" />
                        --%>
                        <% } %>
                    </dd>
                </dl>
            </div>
        </div>
    </div>

</asp:Content>
