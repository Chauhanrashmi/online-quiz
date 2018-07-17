using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void b1_Click(object sender, EventArgs e)
    {
        Session["eml"] = TextBox1.Text;
        Session["ccod"] = Convert.ToInt32(DropDownList1.SelectedValue);
        Session["lvl"] = DropDownList2.SelectedValue;
        Response.Redirect("frmquiz.aspx");
    }
}