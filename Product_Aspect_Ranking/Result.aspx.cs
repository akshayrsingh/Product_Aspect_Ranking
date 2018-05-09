using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connString"].ConnectionString);
    private static DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        string query = "select Feature,COUNT(*) as countOfColoumn , COUNT(PositivePolarity)as PositivePolarity,COUNT(NegativePolarity)as NegativePolarity from FO_Table  where value is not null group by feature";

        SqlDataAdapter da = new SqlDataAdapter(query, conn);
        dt = new DataTable();
        da.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();
        int xAxisValue = 0;
        int yAxisPositiveValue = 0;
        int yAxisNegativeValue = 0;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            xAxisValue += Convert.ToInt32(dt.Rows[i]["countOfColoumn"]);
            yAxisPositiveValue += Convert.ToInt32(dt.Rows[i]["PositivePolarity"]);
            yAxisNegativeValue += Convert.ToInt32(dt.Rows[i]["NegativePolarity"]);
        }

        double total = (yAxisPositiveValue + yAxisNegativeValue);
        double yPos = Convert.ToDouble(Convert.ToDouble(yAxisPositiveValue) / total) * 100;
        double yNeg = Convert.ToDouble(Convert.ToDouble(yAxisNegativeValue) / total) * 100;

        Chart1.Series["Series1"].IsValueShownAsLabel = true;
        Chart1.Series["Series1"].Points.AddXY(xAxisValue, yAxisPositiveValue);
        Chart1.Series["Series1"].Points.AddXY(xAxisValue, yAxisNegativeValue);
        Chart1.DataBind();
        Chart1.Series["Series1"].Points[0].LabelToolTip = "Positive Polarity";
        Chart1.Series["Series1"].Points[1].LabelToolTip = "Negative Polarity";

         lblShow.Text = "Total positive percentage of " + ProductInfo.ProductName + " is " + Convert.ToInt32(yPos) + "%";
    }

    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        dt.DefaultView.Sort = e.SortExpression;
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    SqlDataAdapter da = new SqlDataAdapter(new SqlCommand("select * from ConstructiveMaster where cWord='" + e.Row.Cells[0].Text + "'", conn));
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        e.Row.Cells[3].Text = "Constructive";
        //    }
        //    else
        //    {
        //        e.Row.Cells[3].Text = "-";
        //    }

        //}
    }
}