<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="LogBook.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <center>
        <img src="imgs/book2.png" class="img-fluid" />
            </center>
    </section>

    <section>
       <div class="container">
           <div class="row">
               <div class="col-12">
                   <center>
                   <h2>E-Log Book</h2>
                   <p>The Main Function</p>
                   </center>
               </div>
           </div>

           <div class="container px-4">
  <div class="row gx-5">
    <div class="col">
     <div class="p-3 border bg-light">
         <center>
              <img src="imgs/book3.png" />
          <h4>Trace Task</h4>
          <p class="text-justify">To keep track consistently work within the time given</p>
         </center>
     </div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">
           <center>
                <img src="imgs/book4.png" />
          <h4>Default List</h4>
          <p class="text-justify">Task are organised by the systematic way</p>
         </center>
      </div>
    </div>
      <div class="col">
      <div class="p-3 border bg-light">
           <center>
                <img src="imgs/book6.png" />
          <h4>Search Task</h4>
          <p class="text-justify">Type the word you want to find the specific task</p>
         </center>
      </div>
    </div>
  </div>
</div>


       </div>
    </section>


</asp:Content>
