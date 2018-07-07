using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        nsquiz.clstbqst obj = new nsquiz.clstbqst();
        nsquiz.clstbqstprp objprp = new nsquiz.clstbqstprp();
        objprp.qstcatcod = Convert.ToInt32(DropDownList1.SelectedValue);
        objprp.qstlvl = DropDownList2.SelectedValue;
        objprp.qstdsc = TextBox1.Text;
        obj.save_rec(objprp);
        //code for answer
        Response.Redirect("frmqst.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmqst.aspx");
    }
}