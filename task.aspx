<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="task.aspx.cs" Inherits="LogBook.task" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Task Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                        <img width="100px" src="imgs/task.png" /> 
                        </center>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col-md-3">
                        <label>Task ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="txtTaskId" runat="server" placeholder="Task ID"></asp:TextBox>
                           </div>
                        </div>
                     </div>

                       <div class="col-md-9">
                        <label>Task Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtTaskName" runat="server" placeholder="Task Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
               
                  <div class="row">
                     <div class="col-12">
                        <label>Task</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtTask" runat="server" placeholder="Task Detail" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col-12">
                        <label>Challenges</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtChallenges" runat="server" placeholder="Challenges Faced" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col-12">
                        <label>Overcome</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtOvercome" runat="server" placeholder="How" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col-12">
                        <label>Learning Experience</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtLearningX" runat="server" placeholder="Key Learning" TextMode="MultiLine" Rows="2"></asp:TextBox>

                        </div>
                     </div>
                  </div>

                   <br>

                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Add" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="BttnAdd_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Update" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="BttnUpdate_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Delete" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="BttnDelete_Click" />
                     </div>
                  </div>

               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>


         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Task List</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LogBookConnectionString %>" SelectCommand="SELECT * FROM [task_detail_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="task_id" HeaderText="task_id" SortExpression="task_id" />
                                <asp:BoundField DataField="task_name" HeaderText="task_name" SortExpression="task_name" />
                                <asp:BoundField DataField="task" HeaderText="task" SortExpression="task" />
                                <asp:BoundField DataField="challenges" HeaderText="challenges" SortExpression="challenges" />
                                <asp:BoundField DataField="overcome" HeaderText="overcome" SortExpression="overcome" />
                                <asp:BoundField DataField="learning_experience" HeaderText="learning_experience" SortExpression="learning_experience" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
