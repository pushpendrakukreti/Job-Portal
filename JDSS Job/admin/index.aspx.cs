﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace mskiForm.admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    txtUserName.Text = Request.Cookies["UserName"].Value;
                    txtPassword.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
        }
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["FormCon"].ConnectionString;
        }

        protected void btnEnter_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(GetConnectionString()))
                {
                    if (chkRememberMe.Checked)
                    {
                        Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
                    }
                    else
                    {
                        Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

                    }
                    Response.Cookies["UserName"].Value = txtUserName.Text.Trim();
                    Response.Cookies["Password"].Value = txtPassword.Text.Trim();

                    con.Open();

                    SqlCommand cmd = new SqlCommand("spCheckUser", con);

                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@Action", "Select");

                    SqlParameter p2 = new SqlParameter("@username", txtUserName.Text);

                    SqlParameter p3 = new SqlParameter("@password", txtPassword.Text);

                    cmd.Parameters.Add(p1);

                    cmd.Parameters.Add(p2);

                    cmd.Parameters.Add(p3);

                    SqlDataReader rd = cmd.ExecuteReader();

                    if (rd.HasRows)

                    {

                        rd.Read();

                        lblMsg.Text = "You are Authorized.";

                        Session["id"] = txtUserName.Text;

                        FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, true);

                        Response.Redirect("Dashboard.aspx");

                        Session.RemoveAll();

                    }

                    else
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                        lblMsg.Text = "Invalid Username or Password";
                    }
                }
            }

            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
    }
}