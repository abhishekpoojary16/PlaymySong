using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaymySong
{
    public partial class Default : System.Web.UI.Page
    {
        public string link_1, link_2, link_3, link_4, link_5, link_6;
        public string contributer_1, contributer_2, contributer_3, contributer_4, contributer_5, contributer_6;
        public int upvotes_1, upvotes_2, upvotes_3, upvotes_4, upvotes_5, upvotes_6;

        public Dictionary<string, string> link = new Dictionary<string, string>();
        public Dictionary<string, string> contributer = new Dictionary<string, string>();
        public Dictionary<string, int> upvotes = new Dictionary<string, int>();


        protected void Page_Load(object sender, EventArgs e)
        {
            Restructure();
        }

        protected void Restructure()
        {
            link.Clear();
            contributer.Clear();
            upvotes.Clear();

            ReRank();
            GetData();
            SetData();
            Page.DataBind();            
        }

        protected void ReRank()
        {
            using (SqlConnection sqlcon = new SqlConnection(WebConfigurationManager.AppSettings["dbcon"]))
            {
                string commandtext = "spx_ReRank";
                using (SqlCommand command = new SqlCommand(commandtext, sqlcon))
                {
                    sqlcon.Open();
                    command.CommandType = CommandType.StoredProcedure;
                    command.ExecuteNonQuery();
                }
            }
        }

        protected void GetData()
        {
            using (SqlConnection sqlcon = new SqlConnection(WebConfigurationManager.AppSettings["dbcon"]))
            {
                using (SqlCommand command = new SqlCommand("select Link, Contributer, Upvotes, Rank from Master order by Rank", sqlcon))
                {
                    sqlcon.Open();
                    using (SqlDataReader dr = command.ExecuteReader())
                    {
                        int i = 1;
                        while (dr.Read())
                        {
                                link.Add(String.Format("link_{0}", i.ToString()), dr["Link"].ToString().Replace("watch?v=", "embed/"));
                                contributer.Add(String.Format("contributer_{0}", i.ToString()), dr["Contributer"].ToString());
                                upvotes.Add(String.Format("upvotes_{0}", i.ToString()), Convert.ToInt32(dr["Upvotes"]));

                                i++;   
                        }
                    }
                }
            }
        }

        protected void SetData()
        {
            if(link.TryGetValue("link_1",out link_1))
            {
                r1.Visible = true;
                contributer_1 = contributer["contributer_1"];
                upvotes_1 = upvotes["upvotes_1"];
            }

            if (link.TryGetValue("link_2", out link_2))
            {
                r2.Visible = true;
                contributer_2 = contributer["contributer_2"];
                upvotes_2 = upvotes["upvotes_2"];
            }

            if (link.TryGetValue("link_3", out link_3))
            {
                r3.Visible = true;
                contributer_3 = contributer["contributer_3"];
                upvotes_3 = upvotes["upvotes_3"];
            }

            if (link.TryGetValue("link_4", out link_4))
            {
                r4.Visible = true;
                contributer_4 = contributer["contributer_4"];
                upvotes_4 = upvotes["upvotes_4"];
            }

            if (link.TryGetValue("link_5", out link_5))
            {
                r5.Visible = true;
                contributer_5 = contributer["contributer_5"];
                upvotes_5 = upvotes["upvotes_5"];
            }

            if (link.TryGetValue("link_6", out link_6))
            {
                r6.Visible = true;
                contributer_6 = contributer["contributer_6"];
                upvotes_6 = upvotes["upvotes_6"];
            }     
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string InputString = textbox1.Value;
            string username = HttpContext.Current.User.Identity.Name.ToString().Replace("CORPORATE\\", "").ToLower();

            using (SqlConnection sqlcon = new SqlConnection(WebConfigurationManager.AppSettings["dbcon"]))
            {
                string commandtext = "spx_InsertRecord";
                using (SqlCommand command = new SqlCommand(commandtext, sqlcon))
                {
                    sqlcon.Open();
                    command.Parameters.AddWithValue("@Link", InputString);
                    command.Parameters.AddWithValue("@Contributer", username);
                    command.CommandType = CommandType.StoredProcedure;
                    command.ExecuteNonQuery();
                }
            }

            Restructure();
        }

        protected void btnUpvote_Click(object sender, EventArgs e)
        {
            LinkButton button = (LinkButton)sender;
            string buttonId = button.ID;

            int btnId = Convert.ToInt32(buttonId.Substring(buttonId.IndexOf("_") + 1, 1)); // Gets button number 

            using (SqlConnection sqlcon = new SqlConnection(WebConfigurationManager.AppSettings["dbcon"]))
            {
                string commandtext = "Update Master" +
                    " set Upvotes = Upvotes + 1" +
                    //"where id = " + btnId;
                    "where rank = " + btnId;
                using (SqlCommand command = new SqlCommand(commandtext, sqlcon))
                {
                    sqlcon.Open();
                    command.ExecuteNonQuery();   
                }
            }

            Restructure();
        }
    }
}