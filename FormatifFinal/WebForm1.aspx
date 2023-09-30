<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FormatifFinal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h1 class="text-center text-primary mb-4">Jeu des dés</h1>


            <div class="row">
                <div class="col-md-4">
                    <center>                 
                        <asp:Image ID="diceImage1" width="250px" height="250px"  ImageUrl="~/images/accueil.jpg" runat="server" />
                        <div class="row">
                            
                            <h4>Pointage:</h4>
                            <asp:Label ID="lblPointage" class="text-center text-primary" runat="server" Text="0" Font-Bold="True"></asp:Label>
                        </div>

                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                       <asp:Image ID="diceImage2" width="250px" height="250px"  ImageUrl="~/images/accueil.jpg" runat="server" />
                        <div class="row">
                            <h4>Bonus:</h4>
                            <asp:Label ID="lblBonus" class="text-center text-primary" runat="server" Text="0" Font-Bold="True"></asp:Label>
                        </div>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <asp:Image ID="diceImage3" width="250px" height="250px"  ImageUrl="~/images/accueil.jpg" runat="server" />
                        <div class="row">
                            <h4>Total des points:</h4>
                            <asp:Label ID="lblTotal" class="text-center text-primary" runat="server" Text="0" Font-Bold="True"></asp:Label>
                        </div>

                    </center>
                </div>
            </div>
            <br />
            <br />
                <center>
                <h4>Cumulatif des points:</h4>
                <asp:Label ID="lblCumul" class="text-center text-primary" runat="server" Text="0" Font-Bold="True"></asp:Label>
            </center>
                <br />
                <br />  
             <center>
            <div>
                <asp:Button ID="btnJouer" Width="200" runat="server" Text="Jouer a nouveau" CssClass="btn btn-primary mb-2" OnClick="btnJouer_Click"  />
            </div>
            <asp:Button ID="btnReinitialiser" Width="200" runat="server" Text="Réinitialiser pointage" CssClass="btn btn-success mb-2" OnClick="btnReini_Click"  />
             </center>
        </div>
    </form>
</body>
</html>
