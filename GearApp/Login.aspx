<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GearApp.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            padding: 0;
            margin: 0;
        }
        div.header {
            margin: 0px auto;
            width: 370px;
            height: 135px;
            border-radius: 25px;
            background: #ffb84d;
            padding: 5px;
        }
        
        div.login {
            margin: 10px auto;
        }
    </style>
    <script>
        var looper;
        var degrees = 0;
        function rotateAnimation(el, speed)
        {
            var cog1 = document.getElementById(el);
            if (navigator.userAgent.match("Chrome")) {
                cog1.style.webkitTransform = "rotate("+degrees+"deg)";
            } else if (navigator.userAgent.match("Firefox"))
            {
                cog1.style.MozTransform = "rotate(" + degrees + "deg)";
            } else if (navigator.userAgent.match("MSIE"))
            {
                cog1.style.msTransform = "rotate(" + degrees + "deg)";
            } else if (navigator.userAgent.match("Opera"))
            {
                cog1.style.OTransform = "rotate(" + degrees + "deg)";
            } else {
                cog1.style.transform = "rotate(" + degrees + "deg)";
            }
            looper = setTimeout('rotateAnimation(\'' + el + '\',' + speed + ')', speed);
            degrees++;
            if(degrees > 359)
            {
                degrees = 1;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wholepage">
        <div class="console">
            <div class="header">
                <img src="Images/simple-Gear.png" id="Gear" alt="Gear" style="width:110px;height:110px;margin:10px 5px;"/>
                <script>rotateAnimation("Gear", 30);    
                </script>
              </div>
            <div class="login">
                <asp:Label ID="lblUser" runat="server" Text="Select Name:" Font-Names="Arial" ForeColor="White" Height="50px" Width="380px" Font-Size="60px"></asp:Label>
                <br /> <br />
                <asp:TextBox ID="txtUser" Height="60px" Width="380px" runat="server" Font-Size="45px"></asp:TextBox>
            </div>
            <div class="Buttons">
                <asp:Button ID="btnForward" CssClass="button" runat="server" BackColor="#ffb84d" Height="140px" Width="215px" Text="Login" ForeColor="#DCDCDC" Font-Size="40px" BorderStyle="None" Style="border-radius: 10px;" OnClick="btnForward_Click"  />
                <asp:Button ID="btnBackward" CssClass="button" runat="server" BackColor="#DCDCDC" Height="140px" Width="160px" Text="Back" ForeColor="#ffb84d" Font-Size="40px" BorderStyle="None" Style="border-radius: 10px;" OnClick="btnBackward_Click"/>
            </div>
        </div>
    </div>
    

</asp:Content>
