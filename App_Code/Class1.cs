using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace nsquiz
{

    public interface inttbcat
    {
        Int32 catcod { get; set; }
        string catnam { get; set; }
    }
    public class clscatprp : inttbcat
    {
        private Int32 prvcatcod;
        private String prvcatnam;
        public int catcod
        {
            get
            {
                return prvcatcod;
            }

            set
            {
                prvcatcod = value;
            }
        }

        public string catnam
        {
            get
            {
                return prvcatnam;
            }
            set
            {
                prvcatnam = value;
            }
        }

    }
    public abstract class clscon
    {
        protected SqlConnection con=new SqlConnection();
        public clscon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }
    public class clscat:clscon
    {
        public void save_rec(clscatprp p)
        {
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("inscat",con);
            cmd.CommandType = CommandType.StoredProcedure;
           // cmd.Parameters.Add("@catcod", SqlDbType.Int).Value = p.catcod;
            cmd.Parameters.Add("@catnam", SqlDbType.VarChar, 50).Value = p.catnam;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clscatprp p)
        {
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updatecat",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@catcod", SqlDbType.Int).Value = p.catcod;
            cmd.Parameters.Add("@catnam", SqlDbType.VarChar,50).Value = p.catnam;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clscatprp p)
        {
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delcat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@catcod", SqlDbType.Int).Value = p.catcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clscatprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("displcat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clscatprp> obj = new List<clscatprp>();
            while(dr.Read())
            {
                clscatprp k = new clscatprp();
                k.catcod = Convert.ToInt32(dr[0]);
                k.catnam = dr[1].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clscatprp> find_rec(Int32 catcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("findcat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@catcod", SqlDbType.Int).Value = catcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clscatprp> obj = new List<clscatprp>();
            if(dr.HasRows)
            {
                dr.Read();
                clscatprp k = new clscatprp();
                k.catcod = Convert.ToInt32(dr[0]);
                k.catnam = dr[1].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }

    public interface inttbqst
    {
        Int32 qstcode { get; set; }
        String qstdsc { get; set; }
        Int32 qstcatcod { get; set; }
        String qstlvl { get; set; }
    }
    public class clstbqstprp : inttbqst
    {
        private Int32  prvqstcode,prvqstcatcod;
        private String prvqstdsc, prvqstlvl;
        public int qstcode
        {
            get
            {
                return prvqstcode;
            }

            set
            {
                prvqstcode = value;
            }
        }

        public string qstdsc
        {
            get
            {
                return prvqstdsc;
            }
            set
            {
                prvqstdsc = value;
            }
        }
        public int qstcatcod
        {
            get
            {
                return prvqstcatcod;
            }
            set
            {
                prvqstcatcod = value;
            }
        }
        public string qstlvl
        {
            get
            {
                return prvqstlvl;
            }
            set
            {
                prvqstlvl = value;
            }
        }
    }
    public class clstbqst:clscon
    {
        public void save_rec(clstbqstprp p)
        {
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insqst",con);
            cmd.CommandType = CommandType.StoredProcedure;
           // cmd.Parameters.Add("@qstcode", SqlDbType.Int).Value = p.qstcode;
            cmd.Parameters.Add("@qstdsc", SqlDbType.VarChar, 50).Value = p.qstdsc;
            cmd.Parameters.Add("@qstcacod", SqlDbType.Int).Value = p.qstcatcod;
            cmd.Parameters.Add("@qstlvl",SqlDbType.VarChar,50).Value=p.qstlvl;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clstbqstprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updateqst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@qstcode", SqlDbType.Int).Value = p.qstcode;
            cmd.Parameters.Add("@qstdsc", SqlDbType.VarChar, 50).Value = p.qstdsc;
            cmd.Parameters.Add("@qstcatcod", SqlDbType.Int).Value = p.qstcatcod;
            cmd.Parameters.Add("@qstlvl", SqlDbType.VarChar, 50).Value = p.qstlvl;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clstbqstprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delqst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@qstcode", SqlDbType.Int).Value = p.qstcode;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clstbqstprp> disp_rec(Int32 catcod,String lvl)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispqst",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@catcod",SqlDbType.Int).Value=catcod;
            cmd.Parameters.Add("@lvl", SqlDbType.VarChar, 50).Value = lvl;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clstbqstprp> obj = new List<clstbqstprp>();
            while (dr.Read())
            {
                clstbqstprp k = new clstbqstprp();
                k.qstcode = Convert.ToInt32(dr[0]);
                k.qstdsc = dr[1].ToString();
                k.qstcatcod = Convert.ToInt32(dr[2]);
                k.qstlvl = dr[2].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clstbqstprp> find_rec(Int32 qstcode)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("findqst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@qstcode", SqlDbType.Int).Value = qstcode;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clstbqstprp> obj = new List<clstbqstprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clstbqstprp k = new clstbqstprp();
                k.qstcode = Convert.ToInt32(dr[0]);
                k.qstdsc = dr[1].ToString();
                k.qstcatcod = Convert.ToInt32(dr[2]);
                k.qstlvl = dr[2].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }

    public interface inttbopt
    {
        Int32 optcode { get; set; }
        String optdsc { get; set; }
        Int32 optqstcode { get; set; }
    }
    public class clsoptprp : inttbopt
    {
        private Int32 prvoptcode, prvoptqstcode;
        private String prvoptdsc;
        public int optcode
        {
            get
            {
                return prvoptcode;
            }
            set
            {
                prvoptcode = value;
            }
        }

        public string optdsc
        {
            get
            {
                return prvoptdsc;
            }
            set
            {
                prvoptdsc = value;
            }
        }
        public int optqstcode
        {
            get
            {
                return optqstcode;
            }
            set
            {
                optqstcode = value;
            }
        }
    }
    public class clsopt:clscon
    {
        public void save_rec(clsoptprp p)
        {
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insopt",con);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("@optcode", SqlDbType.Int).Value = p.optcode;
            cmd.Parameters.Add("@optdsc", SqlDbType.VarChar,50).Value = p.optdsc;
            cmd.Parameters.Add("@optqstcode", SqlDbType.Int).Value = p.optqstcode;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clsoptprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updateopt", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@optcode", SqlDbType.Int).Value = p.optcode;
            cmd.Parameters.Add("@optcdsc", SqlDbType.VarChar, 50).Value = p.optdsc;
            cmd.Parameters.Add("@optqstcode", SqlDbType.Int).Value = p.optqstcode;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsoptprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delopt", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@optcode", SqlDbType.Int).Value = p.optcode;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsoptprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispopt", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("@optcode", SqlDbType.Int).Value = p.optcode;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsoptprp> obj = new List<clsoptprp>();
            while (dr.Read())
            {
                clsoptprp k = new clsoptprp();
                k.optcode = Convert.ToInt32(dr[0]);
                k.optdsc = dr[1].ToString();
                k.optqstcode = Convert.ToInt32(dr[2]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsoptprp> find_rec(Int32 optcode)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("findopt", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@optcode", SqlDbType.Int).Value = optcode;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsoptprp> obj = new List<clsoptprp>();
            while (dr.HasRows)
            {
                dr.Read();
                clsoptprp k = new clsoptprp();
                k.optcode = Convert.ToInt32(dr[0]);
                k.optdsc = dr[1].ToString();
                k.optqstcode = Convert.ToInt32(dr[2]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }

    public interface intrec
    {
        Int32 reccode { get; set; }
        DateTime recdate { get; set; }
        Int32 reccatcode { get; set; }
        Int32 recscore { get; set; }
        String recusreml { get; set; }
    }
    public class clsrecprp:intrec
    {
        private Int32 prvreccode;
        private Int32 prvreccatcode;
        private Int32 prvrecscore;
        private String prvrecusreml;
        private DateTime prvrecdate;

        public int reccode
        {
            get
            {
                return prvreccode ;
            }

            set
            {
                prvreccode = value ;
            }
        }

        public DateTime recdate
        {
            get
            {
                return prvrecdate;
            }
            set
            {
                prvrecdate = value;
            }
        }
        public int reccatcode
        {
            get
            {
                return prvreccatcode;
            }
            set
            {
                prvreccatcode = value;
            }
        }
        public int recscore
        {
            get
            {
                return prvrecscore;
            }
            set
            {
                prvrecscore = value;
            }
        }
        public string recusreml
        {
            get
            {
                return prvrecusreml;
            }
            set
            {
                prvrecusreml = value;
            }
         }
    }
    public class clsrec:clscon
    {
        public void save_rec(clsrecprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insrec", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("@reccode", SqlDbType.Int).Value = p.reccode;
            cmd.Parameters.Add("@recdate", SqlDbType.DateTime).Value = p.recdate;
            cmd.Parameters.Add("@reccatcode", SqlDbType.Int).Value = p.reccatcode;
            cmd.Parameters.Add("@recscore", SqlDbType.Int).Value = p.recscore;
            cmd.Parameters.Add("@recusreml",SqlDbType.VarChar,50).Value=p.recusreml;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clsrecprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updaterec", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@reccode", SqlDbType.Int).Value = p.reccode;
            cmd.Parameters.Add("@recdate", SqlDbType.DateTime).Value = p.recdate;
            cmd.Parameters.Add("@reccatcode", SqlDbType.Int).Value = p.reccatcode;
            cmd.Parameters.Add("@recscore", SqlDbType.Int).Value = p.recscore;
            cmd.Parameters.Add("@recusreml", SqlDbType.VarChar, 50).Value = p.recusreml;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsrecprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delrec", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@reccode", SqlDbType.Int).Value = p.reccode;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsrecprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("disprec", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsrecprp> obj = new List<clsrecprp>();
            while(dr.Read())
            {
                clsrecprp k = new clsrecprp();
                k.reccode = Convert.ToInt32(dr[0]);
                //k.recdate =Convert.ToInt32(dr[1]);
                k.reccatcode = Convert.ToInt32(dr[2]);
                k.recscore = Convert.ToInt32(dr[3]);
                k.recusreml = dr[4].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsrecprp> find_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("findrec", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsrecprp> obj = new List<clsrecprp>();
            while (dr.HasRows)
            {
                dr.Read();
                clsrecprp k = new clsrecprp();
                k.reccode = Convert.ToInt32(dr[0]);
                //k.recdate =Convert.ToInt32(dr[1]);
                k.reccatcode = Convert.ToInt32(dr[2]);
                k.recscore = Convert.ToInt32(dr[3]);
                k.recusreml = dr[4].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
}