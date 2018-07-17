using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["ccod"] == null)
                Response.Redirect("index.aspx");
            else
            {
                nsquiz.clstbqst obj = new nsquiz.clstbqst();
                List<nsquiz.clstbqstprp> k = obj.disp_rec(Convert.ToInt32(Session["ccod"]), Session["lvl"].ToString());
                DataTable tb = new DataTable();
                tb.Columns.Add(new DataColumn("qstcode", Type.GetType("System.Int32")));
                tb.Columns.Add(new DataColumn("qstdsc", Type.GetType("System.String")));
                //tb.Columns.Add(new DataColumn("optcod", Type.GetType("System.ToInt32")));
                List<String> arr = new List<String>();
                for (int i = 0; i < 6; i++)
                {
                    Random rnd = new Random();
                    int idx = rnd.Next(0, k.Count);
                    int flag = 0;
                    for (int t = 0; t < tb.Rows.Count; t++)
                    {
                        if (Convert.ToInt32(tb.Rows[t]["qstcode"]) == Convert.ToInt32(k[idx].qstcode))
                        {
                            flag = 1;
                            break;
                        }
                    }
                    if (flag == 1)
                    {
                        i--;
                        continue;
                    }
                    DataRow r = tb.NewRow();
                    r[0] = k[idx].qstcode;
                    r[1] = k[idx].qstdsc;
                    //add option
                    // List<String> arr = new List<string>();
                    nsquiz.clsopt obj1 = new nsquiz.clsopt();
                    List<nsquiz.clsoptprp> kt = obj1.find_rec(k[idx].qstcode);
                    arr.Add(kt[0].optdsc);
                    tb.Rows.Add(r);
                }
                    //display paper to user
                    for (int j = 0; j < arr.Count; j++)
                    {
                        String temp = arr[j];
                        Random a = new Random();
                        int RandomIndex = a.Next(j, arr.Count);
                        arr[j] = arr[RandomIndex];
                        arr[RandomIndex] = temp;
                    }
                    ViewState["ppr"] = tb;
                    ViewState["ans"] = arr;
                    GridView1.DataSource = tb;
                    GridView1.DataBind();
                    DataList1.DataSource = arr;
                    DataList1.DataBind();
                
            }
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //GridView1.PageIndex = e.NewPageIndex;
        //GridView1.DataBind();

        if (e.NewPageIndex == 0)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataTable tb = (DataTable)(ViewState["ppr"]);
            GridView1.DataSource = tb;
            GridView1.DataBind();
        }
    }

    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        Int32 a = GridView1.PageIndex;
        String s;
        s = e.CommandArgument.ToString();
        Int32 qstcode = Convert.ToInt32(GridView1.DataKeys[0][0]);
        nsquiz.clsopt obj = new nsquiz.clsopt();
        List<nsquiz.clsoptprp> k = obj.find_rec(qstcode);
        if (k[0].optdsc.Equals(s))
        {
            Int32 total = Convert.ToInt32(Label4.Text) + 1;
            Label4.Text = total.ToString();
        }
        GridView1.PageIndex = a + 1;
        DataTable tb = (DataTable)(ViewState["ppr"]);
        GridView1.DataSource = tb;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        nsquiz.clsrec obj = new nsquiz.clsrec();
        nsquiz.clsrecprp objprp = new nsquiz.clsrecprp();
        objprp.reccatcode = Convert.ToInt32(Session["ccod"]);
        objprp.recdate = DateTime.Now;
        objprp.recscore = Convert.ToInt32(Label4.Text);
        objprp.recusreml = Session["eml"].ToString();
        obj.save_rec(objprp);
        Session["ccod"] = null;
        Session["lvl"] = null;
        Response.Redirect("frmhis.aspx");
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
         Label3.Text= (Convert.ToInt32(Label3.Text)-1).ToString();
    }
}