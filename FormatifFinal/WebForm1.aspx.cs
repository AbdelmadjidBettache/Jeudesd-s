using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormatifFinal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Random r = new Random();
        int cumulativeScore = 0;
        static int cumulatif;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }

        }

        protected void btnJouer_Click(object sender, EventArgs e)
        {
            int pointage = 0;
            int bonus = 0;

            Random r = new Random();
            int dice1 = r.Next(6) + 1;
            int dice2 = r.Next(6) + 1;
            int dice3 = r.Next(6) + 1;

            pointage = dice1 + dice2 + dice3;

            if (dice1 == dice2 && dice1 == dice3)
                bonus = 10;
            else if (dice1 == dice2 || dice1 == dice3 || dice2 == dice3)
                bonus = 5;
            else bonus = 0;

            cumulatif += pointage + bonus;

            diceImage1.ImageUrl = @"/images/de" + dice1 + ".png";
            diceImage2.ImageUrl = @"/images/de" + dice2 + ".png";
            diceImage3.ImageUrl = @"/images/de" + dice3 + ".png";

 

            lblPointage.Text = pointage.ToString();
            lblBonus.Text = bonus.ToString();
            lblTotal.Text = (pointage + bonus).ToString();
            lblCumul.Text = cumulatif.ToString();
        }

        protected void btnReini_Click(object sender, EventArgs e)
        {
            cumulatif = 0;
            lblTotal.Text = " : 0";
            lblBonus.Text = "0";
            lblPointage.Text = "0";
            lblCumul.Text = "0";

            diceImage1.ImageUrl = @"/images/accueil.jpg";
            diceImage2.ImageUrl = @"/images/accueil.jpg";
            diceImage3.ImageUrl = @"/images/accueil.jpg";
        }
    }
}