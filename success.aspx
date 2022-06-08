<%@ Page Language="C#" AutoEventWireup="true" CodeFile="success.aspx.cs" Inherits="Insurance_management_System.success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</head>
<body>
       <form id="form1" runat="server">
        <div>
             <asp:Label ID="lblOrderID" runat="server" Text=""></asp:Label>
        </div>
           <asp:HyperLink ID="HyperLink1" NavigateUrl="~/index.aspx" runat="server">Home</asp:HyperLink>
          
    </form>
    <script>
        Swal.fire({
            icon: 'success',
            title: 'success',
            text: 'Something went wrong!',
            footer: '<a href="">Why do I have this issue?</a>'
        })

    </script> 
</body>

</html>
