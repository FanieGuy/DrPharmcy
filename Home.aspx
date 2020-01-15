<%@ Page Title="" Language="C#" MasterPageFile="~/NAV.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
    .mySlides
         {
            display:none;
        }
        
        .auto-style11 {
            width: 100%;
        }
        
    .auto-style12 {
        width: 835px;
    }
    .auto-style13 {
        width: 834px;
    }
    .auto-style14 {
        width: 832px;
    }
    .auto-style15 {
        width: 804px;
    }
            
        .auto-style17 {
            width: 100%;
        }
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="w3-content" style="border: medium none #FF0000; max-width:400px">
                 
     <table class="auto-style17">
        <tr>
            <td>
                 <img class="mySlides" src="App_Images/skip.jpg" />
         <img class="mySlides" src="App_Images/appoint.jpg" />             
         <img class="mySlides" src="App_Images/save.jpg" />

            </td>
        </tr>        
     </table>     
      
    </div> 
    <script>
        var slideIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");

            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }

            slideIndex++;
            if (slideIndex > x.length) {
                slideIndex = 1;
            }
            x[slideIndex - 1].style.display = "block";
            setTimeout(carousel, 2000);
        }

    </script>  
</asp:Content>




