﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NACCUGSoft_Online
{
    public partial class Online_LoanApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
            {
                Response.Redirect("NewLoginUI.aspx");
            }
        }
    }
}