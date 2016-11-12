<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Console.aspx.cs" Inherits="GearApp.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <style>
        div.header {
            margin: 0px auto;
            width: 370px;
            height: 135px;
            border-radius: 25px;
            background: #ffb84d;
            padding: 5px;
        }
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="wholepage">
        <div class="console">
            <div class="header">
                <img src="Images/simple-Gear.png" id="Gear" alt="Gear" style="width:110px;height:110px;margin:10px 5px;"/>
                <script>rotateAnimation("Gear", 15)</script>
                <table>
                    <tr>
                    <th><asp:label id="lblUser" runat="server" Font-Names="Arial" ForeColor="White" Font-Size="60px" /></th>
                    </tr>
                    <tr>

                    </tr>
                </table>
                
             </div>
        </div>
    </div>
</asp:Content>
