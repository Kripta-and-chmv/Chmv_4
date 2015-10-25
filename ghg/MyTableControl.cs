using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace mtb
{
    public class MyTableControl : Control, IPostBackEventHandler
    {
        public int ColNum { get; set; }
        public int RowNum { get; set; }
        public string Text { get; set; }

        public MyTableControl()
        {
            ColNum = 2;
            RowNum = 2;
            Text = "Hello world";
        }

        protected override void Render(HtmlTextWriter writer)
        {
            writer.AddAttribute("cellpadding", "4");
            writer.RenderBeginTag(HtmlTextWriterTag.Table);
            
            for (int i =0; i<RowNum;i++)
            {
                writer.RenderBeginTag(HtmlTextWriterTag.Tr);
                for (int j = 0; j< ColNum;j++)
                {
                    writer.RenderBeginTag(HtmlTextWriterTag.Td);
                    writer.WriteEncodedText(Text);
                    writer.RenderEndTag();//td
                }
                writer.RenderEndTag();//tr
            }
            writer.RenderEndTag();//table

            writer.AddAttribute("type", "submit");
            writer.AddAttribute("value", "Click Me!");
            writer.AddAttribute("name", this.UniqueID);
            writer.RenderBeginTag(HtmlTextWriterTag.Input);
            writer.RenderEndTag();//input

           /* writer.Write("<INPUT TYPE=\"submit\" name="+
                this.UniqueID +
                " value=\"Click Me\" />");*/

            base.Render(writer);
        }

        public delegate void OnClickEventHandler(object sender, EventArgs args);
        public event OnClickEventHandler Click;

        public void RaisePostBackEvent(string eventArgument)
        {
           
            Click(this, EventArgs.Empty);
        }


    }
}