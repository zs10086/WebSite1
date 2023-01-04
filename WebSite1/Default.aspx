<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <button type="button" class="btn btn-success" onclick="get();">Get</button>
    <button type="button" class="btn btn-success" onclick="post();">Post</button>

    <script>
        function get() {
            $.ajax({
                type: 'GET',
                url: '/api/values',
                contentType: 'application/json',
                success: function (data) {
                    alert(data)
                }
            });
        }
        function post() {
            var data = {
                value: 'post'
            }
            $.ajax({
                type: 'POST',
                url: '/api/values',
                contentType: 'application/json',
                dataType: 'json',
                data: JSON.stringify(data),
                success: function () {
                    alert('ok')
                }
            });
        }
    </script>

</asp:Content>
