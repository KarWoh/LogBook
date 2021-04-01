using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogBook
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    UserLogin.Visible = true; 
                    SignUp.Visible = true; 

                    LogOut.Visible = false;
                    UserNameDisplay.Visible = false;

                    AdminLogin.Visible = true; 
                }
                else if (Session["role"].Equals("user"))
                {
                    UserLogin.Visible = false; 
                    SignUp.Visible = false; 

                    LogOut.Visible = true; 
                    UserNameDisplay.Visible = true; 
                    UserNameDisplay.Text = "Hello " + Session["username"].ToString();

                    AdminLogin.Visible = true; 
                }
                else if (Session["role"].Equals("admin"))
                {
                    UserLogin.Visible = false; 
                    SignUp.Visible = false;

                    LogOut.Visible = true; 
                    UserNameDisplay.Visible = true; 
                    UserNameDisplay.Text = "Hello Admin";

                    AdminLogin.Visible = false; 
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void BttnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void BttnViewTask_Click(object sender, EventArgs e)
        {
            Response.Redirect("task.aspx");
        }

        protected void BttnUserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void BttnUserSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void BttnLogOut_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            UserLogin.Visible = true; 
            SignUp.Visible = true; 

            LogOut.Visible = false; 
            UserNameDisplay.Visible = false; 

            AdminLogin.Visible = true; 
        }
    }
}