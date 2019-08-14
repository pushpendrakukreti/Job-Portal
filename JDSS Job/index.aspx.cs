using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using mskiForm;

namespace mskiForm
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["FormCon"].ConnectionString;
        }
        protected void btnubmit_Click(object sender, EventArgs e)
        {
            string FullName = first11.Text + " " + last11.Text;
            string FullPhone = txtarea.Text + txtphone.Text;
            string FullDOB = ddmonth.SelectedItem.Value +","+ dddate.SelectedItem.Value +" "+ ddyear.SelectedItem.Value;

            using (SqlConnection con=new SqlConnection(GetConnectionString()))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tblApplicant(ApplicantName, ApplicantAddress,ApplicantCity,ApplicantState,ApplicantZipCode,ApplicantCountry,ApplicantEmail,ApplicantPhone,ApplicantTenthBoard,ApplicantTenthYear,ApplicantTenthMarks,ApplicantTwelthBoard,ApplicantTwelthYear,ApplicantTwelthMarks,ApplicantGradUniverity,ApplicantGradYear,ApplicantGradMarks,ApplicantDOB,ApplicantPosition,ApplicantType,ApplicantExperience,ApplicantEligible,ApplicantAccount) values('"+FullName+ "','" + addr1.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtzip.Text + "','" + ddcountry.SelectedItem.Value + "','" + txtemail.Text + "','" + FullPhone + "','" + txt101.Text + "','" + txt102.Text + "','" + txt103.Text + "','" + txt121.Text + "','" + txt122.Text + "','" + txt123.Text + "','" + txtclg1.Text + "','" + txtclg2.Text + "','" + txtclg3.Text + "','" + FullDOB + "','" + ddposition.SelectedItem.Value + "','"+chktype.SelectedItem.Value+"','"+txtdecription.Text+"','"+rdbUS.SelectedItem.Value+"','"+rdbActive.SelectedItem.Value+"')", con);
                int k=cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Response.Write("<script language=javascript>alert('Application submitted successfully!!<br>Thank for Applying.')</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Application Not submitted, Refill the form correctly!!<br>Apply Again.')</script>");
                }
            }
        }
    }
}