using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalFurnitureShowroom.User
{
    public partial class user : System.Web.UI.MasterPage
    {
        string s;
        string t;
        string[] a = new string[5];
        int tot = 0;
        int totCount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["aa"] != null)
            {
               s = Convert.ToString(Request.Cookies["aa"].Value);
               string[] strArr = s.Split('|');
               for (int i = 0; i < strArr.Length; i++)
               {
                  t = Convert.ToString(strArr[i].ToString());
                   string[] strArr1 = t.Split(',');
                   for (int j = 0; j < strArr1.Length; j++)
                    {
                       a[j] = strArr1[j].ToString();
                   }
                   tot = tot + (int.Parse(a[2].ToString()) * int.Parse(a[3].ToString()));
                totCount = totCount + 1;
             }
             cartTotItem.Text = totCount.ToString();
             cartTorPrice.Text = tot.ToString();
           }
        }
    }
}