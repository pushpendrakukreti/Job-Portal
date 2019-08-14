using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mskiForm.admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void GetUser()
        {
            System.Data.DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            lblUser.Text = dv.Count.ToString();
        }
        public void GetSupplier()
        {
            System.Data.DataView dv1 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            lblSupplier.Text = dv1.Count.ToString();
        }
        public void GetTrainer()
        {
            System.Data.DataView dv2 = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
            lblTrainer.Text = dv2.Count.ToString();
        }
    }
}