<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="LogBook.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                     <div class="card-body">

                         <div class="row">
                             <div class="col">
                                 <center>
                                    <img width="100px" src="imgs/userlogin%20icon.png" />
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <center>
                                   <h3>
                                       Member Sign Up
                                   </h3>
                                 </center>
                             </div>
                         </div>

                          <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                          <div class="row">
                             <div class="co6">
                                  <label>Full Name</label>
                                 <div class="mb-3">
                                     <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="co6">
                                  <label>Date of Birth</label>
                                 <div class="mb-3">
                                     <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                 </div>
                             </div>
                         </div>

                          <div class="row">
                             <div class="co6">
                                  <label>Contact No</label>
                                 <div class="mb-3">
                                     <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="co6">
                                  <label>Email ID</label>
                                 <div class="mb-3">
                                     <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                 </div>
                             </div>
                         </div>

                          <div class="row">
                             <div class="co4">
                                  <label>State</label>
                                 <div class="mb-3">
                                     <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">

                                         <asp:ListItem Text="Penang" Value="Penang" />
                                         <asp:ListItem Text="Kedah" Value="Kedah" />
                                         <asp:ListItem Text="Selangor" Value="Selangor" />

                                     </asp:DropDownList>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="co4">
                                  <label>City</label>
                                 <div class="mb-3">
                                     <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City" TextMode="SingleLine"></asp:TextBox>
                                 </div>
                             </div>
                         </div>

                          <div class="row">
                             <div class="co4">
                                  <label>Post Code</label>
                                 <div class="mb-3">
                                     <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Post Code" TextMode="Number"></asp:TextBox>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <center>
                             <div class="col">
                                 <span class="badge rounded-pill bg-info text-dark">Login Credentials</span>
                             </div>
                                 </center>
                         </div>


                             <div class="row">
                             <div class="co4">
                                  <label>User ID</label>
                                 <div class="mb-3">
                                     <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                  <label>Password</label>
                                 <div class="mb-3">
                                     <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                 </div>
                             </div>
                         </div>

                          <div class="row">
                             <div class="col">
                         <div class="mb-3">
                             <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                 </div>
                             </div>
                                 </div>
                             </div>


                         </div>

                     </div>
                </div>

                <a href="homepage.aspx"> Back to Home</a><br><br>
            </div>
        </div>
    </div>



</asp:Content>
