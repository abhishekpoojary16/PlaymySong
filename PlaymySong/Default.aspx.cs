using System;
using System.Collections.Generic;
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
        public string link_1, link_2, link_3, link_4, link_5;
        public string contributer_1, contributer_2, contributer_3, contributer_4, contributer_5;
        public int upvotes_1, upvotes_2, upvotes_3, upvotes_4, upvotes_5;

        Dictionary<string, string> link = new Dictionary<string, string>();
        Dictionary<string, string> contributer = new Dictionary<string, string>();
        Dictionary<string, int> upvotes = new Dictionary<string, int>();


        protected void Page_Load(object sender, EventArgs e)
        {
            Restructure();
        }

        protected void Restructure()
        {
            link.Clear();
            contributer.Clear();
            upvotes.Clear();

            GetData();
            SetData();
            Page.DataBind();
        }

        protected void GetData()
        {
            using (SqlConnection sqlcon = new SqlConnection(WebConfigurationManager.AppSettings["dbcon"]))
            {
                using (SqlCommand command = new SqlCommand("select Link, Contributer, Upvotes from Master order by Upvotes desc", sqlcon))
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
           link_1 = link["link_1"];
           link_2 = link["link_2"];
           link_3 = link["link_3"];

           contributer_1 = contributer["contributer_1"];
           contributer_2 = contributer["contributer_2"];
           contributer_3 = contributer["contributer_3"];

           upvotes_1 = upvotes["upvotes_1"];
           upvotes_2 = upvotes["upvotes_2"];
           upvotes_3 = upvotes["upvotes_3"];
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
                    "where id = " + btnId;
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