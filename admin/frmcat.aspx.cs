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
        nsquiz.clscat obj = new nsquiz.clscat();
        nsquiz.clscatprp objprp = new nsquiz.clscatprp();
        objprp.catnam = TextBox1.Text;
        obj.save_rec(objprp);
        GridView1.DataBind();
        TextBox1.Text = String.Empty;
    }

 





    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Int32 cod = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
        nsquiz.clscat obj = new nsquiz.clscat();
        nsquiz.clscatprp objprp = new nsquiz.clscatprp();
        objprp.catcod = cod;
        obj.delete_rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        nsquiz.clscat obj = new nsquiz.clscat();
        nsquiz.clscatprp objprp = new nsquiz.clscatprp();
        objprp.catcod = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
        objprp.catnam = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text;
        obj.update_rec(objprp);
        GridView1.EditIndex = -1;
        GridView1.DataBind();
        e.Cancel = true;
    }
}