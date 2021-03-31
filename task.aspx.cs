using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogBook
{
    public partial class task : System.Web.UI.Page
    {

        public string FirstName { get {
                return txtTask.Text;
            }
            set
            {
                txtTask.Text = value;
            }
        }


        readonly string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        /// <summary>Add Button Click</summary>
        protected void BttnAdd_Click(object sender, EventArgs e)
        {
            
            if (CheckIfTaskExists())
            {
                Response.Write("<script>alert('Task with this ID already Existed.');</script>");
            }
            else
            {
                AddNewTask();
            }
        }

        /// <summary>Update Button Click</summary>
        protected void BttnUpdate_Click(object sender, EventArgs e)
        {
            if (CheckIfTaskExists())
            {
                UpdateTask(); 
            }
            else
            {
                Response.Write("<script>alert('Task does not Exist.');</script>");
            }
        }

        /// <summary>Delete Button Click</summary>
        protected void BttnDelete_Click(object sender, EventArgs e)
        {
            if (CheckIfTaskExists())
            {
                DeleteTask();
            }
            else
            {
                Response.Write("<script>alert('Task does not Exist.');</script>");
            }
        }

        /// <summary>Go Button Click</summary>
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            GetTaskById();
        }

        ///<summary>
        ///user defined function
        ///</summary>
        void GetTaskById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from task_detail_tbl where task_id='" + txtTaskId.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    txtTaskId.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Task ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(''" + ex.Message + "');</script>");
                
            }
        }

        /// <summary>
        /// Delete a task using an ID.
        /// If succesful, the table will be cleared.
        /// </summary>
        void DeleteTask()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from task_detail_tbl WHERE task_id='" + txtTaskId.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Task Deleted Successfully');</script>");
                ClearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(''" + ex.Message + "');</script>");
            }
        }

        /// <summary>
        /// Update a task using an ID.
        /// If succesful, the table will be updated.
        /// </summary>
        void UpdateTask()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE task_detail_tbl SET task_name=@task_name WHERE task_id='" + txtTaskId.Text.Trim()+"'", con);
                cmd.Parameters.AddWithValue("@task_name", txtTaskName.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Task updated Successfully');</script>");
                ClearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(''" + ex.Message + "');</script>");
            }
        }

        /// <summary>
        /// Add a nre task using an ID.
        /// If succesful, the table will be added.
        /// </summary>
        void AddNewTask()
        {
            string taskid = txtTaskId.Text.Trim();
            string taskname = txtTaskName.Text.Trim();
            string task = txtTask.Text.Trim(); 
            string challenges = txtChallenges.Text.Trim(); 
            string overcome = txtOvercome.Text.Trim(); 
            string learning_experience = txtLearningX.Text.Trim(); 

            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand($@"INSERT INTO task_detail_tbl(task_id,task_name,task,challenges,overcome,learning_experience) 
                VALUES (@task_id,@task_name,@task,@challenges,@overcome,@learning_experience)", con);


                cmd.Parameters.AddWithValue("@task_id", taskid);
                cmd.Parameters.AddWithValue("@task_name", taskname);
                cmd.Parameters.AddWithValue("@task", task);
                cmd.Parameters.AddWithValue("@challenges", challenges);
                cmd.Parameters.AddWithValue("@overcome", overcome);
                cmd.Parameters.AddWithValue("@learning_experience", learning_experience);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Task added Successfully');</script>");
                ClearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(''" + ex.Message + "');</script>");
            }
        }
        bool CheckIfTaskExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from task_detail_tbl where task_id='" + txtTaskId.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(''" + ex.Message + "');</script>");
                return false;
            }
        }
        void ClearForm()
        {
            txtTask.Text = "";
            txtTaskId.Text = "";
            txtTaskName.Text = "";
            txtChallenges.Text = "";
            txtOvercome.Text = "";
            txtLearningX.Text = "";
        }

        protected void btnTaskId_Click(object sender, EventArgs e)
        {

        }

        protected void SampleFunc()
        {
            string myText = "";
            string secondText = "beautiful";
            //1st option
            myText = "hello" + " " + "world";
            myText = $@"Hello world";

            myText = "hello " + secondText + " world";
            myText = $@"Hello {secondText} world"; ;


            // SQL Query optison
            //1
            string query = "";
            query = $@"SELECT * FROM table_name WHERE col_1 = '" + myText + "'";
            query = $@"SELECT * FROM table_name WHERE col_1 = '{myText}'";
            query = $@"SELECT * FROM table_name WHERE col_1 = @col_1";

            //cmd.Parameters.AddWithValue("@col_1", myText);

        }

    }
}