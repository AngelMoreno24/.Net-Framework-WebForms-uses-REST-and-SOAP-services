﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.XPath;

namespace A6
{
    public partial class addAccount : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Empty TextBox1 before adding usernames
            TextBox1.Text = "";

            //gets the path fo the xml file containing accounts
            string directoryPath = HttpContext.Current.Server.MapPath("~/App_Data/Accounts.xml");

            //Creates needed objects to read xml
            XPathDocument dx = new XPathDocument(directoryPath);
            XPathNavigator nav = dx.CreateNavigator();

            //Reads Account details
            XPathNodeIterator iterator = nav.Select("/Accounts/Account");

            //Goes through each existing account and displays the usernames to a textbox
            while (iterator.MoveNext())
            {
                //Gets the username and stores it into a string
                XPathNodeIterator it = iterator.Current.Select("Username");
                it.MoveNext();
                string courseName = it.Current.Value;

                //Gets the username and stores it into a string
                it = iterator.Current.Select("Password");
                it.MoveNext();
                string courseCode = it.Current.Value;
                TextBox1.Text += courseName +"\n";
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            //bool value keeps track of whether or not the account already exists
            bool exists = false;

            //Reads Account details
            String directoryPath = HttpContext.Current.Server.MapPath("~/App_Data/Accounts.xml");

            //Creates needed objects to read xml
            XPathDocument dx = new XPathDocument(directoryPath);
            XPathNavigator nav = dx.CreateNavigator();

            //Reads Account details
            XPathNodeIterator iterator = nav.Select("/Accounts/Account");

            //Goes through each existing account to check if the users input already exists.
            while (iterator.MoveNext())
            {
                //Gets the username and stores it into a string
                XPathNodeIterator it = iterator.Current.Select("Username");
                it.MoveNext();
                string username = it.Current.Value;

                //Gets the password and stores it into a string
                it = iterator.Current.Select("Password");
                it.MoveNext();
                string Password = it.Current.Value;

                //tells the user if it exists by editing a label
                if (!exists)
                {
                    if (username == TextBox2.Text && Password == TextBox3.Text)
                    {
                        Label4.Text = "account already exists";
                        exists = true;
                    }
                    else
                    {
                        Label4.Text = "account added to xml file";
                    }
                }
            }

            //If the account doesnt exist, this will add the account to the xml file
            if (!exists)
            {
                //will store each line of the xml file
                List<string> read = new List<string>();

                //gets the path to the xml file
                directoryPath = HttpContext.Current.Server.MapPath("~/App_Data/Accounts.xml");

                //reads the file with StreamReader
                StreamReader reader = new StreamReader(directoryPath);


                //reads a few lines to get past the first <Accounts> line
                string info = "";
                info = reader.ReadLine();
                read.Add(info);
                info = reader.ReadLine();
                read.Add(info);
                info = reader.ReadLine();
                read.Add(info);
                info = reader.ReadLine();
                read.Add(info);
                info = reader.ReadLine();
                read.Add(info);

                //Reads every line ands stores it until the end of Accounts
                while (info != "</Accounts>")
                {
                    info = reader.ReadLine();
                    if (info != "</Accounts>")
                    {
                        read.Add(info);
                    }

                }
                reader.Close();



                //adds the new user made account to the xml file in the proper format
                read.Add("\t<Account>");
                read.Add("\t\t<Username>" + TextBox2.Text + "</Username>");
                read.Add("\t\t<Password>" + TextBox3.Text + "</Password>");
                read.Add("\t</Account>");
                read.Add("</Accounts>");



                //empty file before adding xml info
                System.IO.File.WriteAllText(directoryPath, string.Empty);
                StreamWriter writer = File.AppendText(directoryPath);

                //re-enter each line from reading the xml file the first time
                foreach (var line in read)
                {
                    writer.WriteLine(line);
                }

                writer.Close();

                //correctly set value of needed objects to read the xml file
                dx = new XPathDocument(directoryPath);
                nav = dx.CreateNavigator();

                //reads the Account information
                iterator = nav.Select("/Accounts/Account");

                //reset textbox containing previous users
                TextBox1.Text = "";

                //adds the users to the textbox once again
                while (iterator.MoveNext())
                {
                    //Gets the username and stores it into a string
                    XPathNodeIterator it = iterator.Current.Select("Username");
                    it.MoveNext();
                    string courseName = it.Current.Value;

                    //Gets the password and stores it into a string
                    it = iterator.Current.Select("Password");
                    it.MoveNext();
                    string courseCode = it.Current.Value;
                    TextBox1.Text += courseName + "\n";
                }
            }
            else
            {
                
            }
        }
    }
}