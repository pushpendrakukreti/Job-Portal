using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mskiForm.admin
{
    public partial class AllApplicant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Response.Redirect("Details.aspx?Id=" + gr.Cells[0].Text+ "&Name=" + gr.Cells[3].Text + "&DOB=" + gr.Cells[4].Text + "&Phone=" + gr.Cells[5].Text + "&Email=" + gr.Cells[6].Text + "&Address=" + gr.Cells[7].Text + "&City=" + gr.Cells[8].Text + "&State=" + gr.Cells[9].Text + "&ZipCode=" + gr.Cells[10].Text + "&Country=" + gr.Cells[11].Text + "&Board10=" + gr.Cells[12].Text + "&Year10="+ gr.Cells[13].Text + "&Marks10=" + gr.Cells[14].Text + "&Board12=" + gr.Cells[15].Text + "&Year12=" + gr.Cells[16].Text + "&Marks12=" + gr.Cells[17].Text + "&BoardGrad=" + gr.Cells[18].Text + "&YearGrad=" + gr.Cells[19].Text + "&MarksGrad=" + gr.Cells[20].Text + "&Pos=" + gr.Cells[21].Text + "&Type=" + gr.Cells[22].Text + "&Experience=" + gr.Cells[23].Text + "&Eligible=" + gr.Cells[24].Text + "&Account=" + gr.Cells[25].Text);
        }
    }
}