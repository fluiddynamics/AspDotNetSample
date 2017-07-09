using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using AspDotNetSample.Models;

namespace AspDotNetSample.Account
{
    public partial class ForgotPassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Forgot(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // ユーザーのメール アドレスを検証
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                ApplicationUser user = manager.FindByName(Email.Text);
                if (user == null || !manager.IsEmailConfirmed(user.Id))
                {
                    FailureText.Text = "ユーザーが存在しないか、未確認です。";
                    ErrorMessage.Visible = true;
                    return;
                }
                // アカウント確認とパスワード リセットを有効にする方法の詳細については、https://go.microsoft.com/fwlink/?LinkID=320771 を参照してください
                // コードとパスワードの再設定ページへのリダイレクトを記載した電子メールを送信します
                //string code = manager.GeneratePasswordResetToken(user.Id);
                //string callbackUrl = IdentityHelper.GetResetPasswordRedirectUrl(code, Request);
                //manager.SendEmail(user.Id, "パスワード", "のリセット <a href=\"" + callbackUrl + "\">こちら</a>をクリックして、パスワードをリセットしてください.");
                loginForm.Visible = false;
                DisplayEmail.Visible = true;
            }
        }
    }
}