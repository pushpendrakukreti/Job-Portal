using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mskiForm.admin
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string tenth= Request.QueryString["Board10"]+" "+ Request.QueryString["Year10"] + "<br> " + Request.QueryString["Marks10"];
            string twelth = Request.QueryString["Board12"] + " " + Request.QueryString["Year12"] + "<br> " + Request.QueryString["Marks12"];
            string grad = Request.QueryString["BoardGrad"] + " " + Request.QueryString["YearGrad"] + "<br> " + Request.QueryString["MarksGrad"];
            string address= Request.QueryString["Address"] + ", " + Request.QueryString["City"] + ", " + Request.QueryString["State"] + "<br>" + Request.QueryString["ZipCode"] + ", " + Request.QueryString["Country"];

            lblid.Text = Request.QueryString["Id"].ToString();
            lblname.Text = Request.QueryString["Name"];
            lbldob.Text = Request.QueryString["DOB"];
            lblphone.Text = Request.QueryString["Phone"];
            lblemail.Text = Request.QueryString["Email"];
            lbladdress.Text = address;
            lbl10.Text = tenth;
            lbl12.Text = twelth;
            lblgrad.Text = grad;
            lblposition.Text = Request.QueryString["Pos"];
            lbltype.Text = Request.QueryString["Type"];
            lblexperience.Text = Request.QueryString["Experience"];
            lbleligible.Text = Request.QueryString["Eligible"];
            lblaccount.Text = Request.QueryString["Account"];
        }
    }
}