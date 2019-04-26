using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace resultScrapper
{
    public class ResultScrapper
    {
        
        public static DataTable getDataTable(Result rs)
        {
            
            DataTable dt = new DataTable("Results");
            DataColumn dc1 = new DataColumn("Roll No");
            dt.Columns.Add(dc1);
            DataColumn dc2 = new DataColumn("Name");
            dt.Columns.Add(dc2);
            DataColumn dc3 = new DataColumn("Urdu-9th");
            dt.Columns.Add(dc3);
            DataColumn dc4 = new DataColumn("Urdu-10th");
            dt.Columns.Add(dc4);
            DataColumn dc5 = new DataColumn("Eng-9th");
            dt.Columns.Add(dc5);
            DataColumn dc6 = new DataColumn("Eng-10th");
            dt.Columns.Add(dc6);
            DataColumn dc7 = new DataColumn("Isl-9th");
            dt.Columns.Add(dc7);
            DataColumn dc8 = new DataColumn("Isl-10th");
            dt.Columns.Add(dc8);
            DataColumn dc9 = new DataColumn("Pstudy-9th");
            dt.Columns.Add(dc9);
            DataColumn dc10 = new DataColumn("PStudy-10th");
            dt.Columns.Add(dc10);
            DataColumn dc11 = new DataColumn("Math-9th");
            dt.Columns.Add(dc11);
            DataColumn dc12 = new DataColumn("Math-10th");
            dt.Columns.Add(dc12);
            DataColumn dc13 = new DataColumn("Phy/G.Sc-9th");
            dt.Columns.Add(dc13);
            DataColumn dc14 = new DataColumn("Phy/G.Sc-10th");
            dt.Columns.Add(dc14);
            DataColumn dc15 = new DataColumn("PhyG.Sc-Prac");
            dt.Columns.Add(dc15);
            DataColumn dc16 = new DataColumn("chem/Elec-9th");
            dt.Columns.Add(dc16);
            DataColumn dc17 = new DataColumn("Chem/Elec-10th");
            dt.Columns.Add(dc17);
            DataColumn dc18 = new DataColumn("chem/Elec-Prac");
            dt.Columns.Add(dc18);
            DataColumn dc19 = new DataColumn("Bio/Elec-9th");
            dt.Columns.Add(dc19);
            DataColumn dc20 = new DataColumn("Bio/Elec-10th");
            dt.Columns.Add(dc20);
            DataColumn dc21 = new DataColumn("Bio/Elec-Prac");
            dt.Columns.Add(dc21);
            
            for (int k = 0; k < rs.noOfRecords; k++)
            {
                String url = "http://biselahore.com/";

                IWebDriver driver = new ChromeDriver();
                driver.Navigate().GoToUrl(url);

                //check whether student exist or not
                

                try
                {
                    String selector = "input[name=student_rno]";
                    var element = driver.FindElement(By.CssSelector(selector));
                    element.SendKeys(rs.rollNos[rs.noOfRecords]);


                    String xPath2 = "input[name=submit]";
                    var element2 = driver.FindElement(By.CssSelector(xPath2));
                    //Click the button
                    element2.Submit();

                    try
                    {
                        var ele = driver.FindElement(By.XPath("/html/body/div/div[2]/p/text()"));
                        DataRow dr = dt.NewRow();
                        dr["error"] = ele.Text;
                        dt.Rows.Add(dr);
                    }
                    catch (OpenQA.Selenium.NoSuchElementException)
                    {
                        String selector2 = "td.pagetext";
                        var headings = driver.FindElements(By.CssSelector(selector2));
                        String[] arr = new String[47];
                        int i = 0;
                        foreach (var jobdiv in headings)
                        {


                            arr[i] = jobdiv.Text;
                            i++;


                        }

                        DataRow dr = dt.NewRow();
                        dr["Roll No"] = arr[0];
                        dr["Name"] = arr[1];
                        dr["Urdu-9th"] = arr[6];
                        dr["Urdu-10th"] = arr[7];
                        dr["Eng-9th"] = arr[11];
                        dr["Eng-10th"] = arr[12];
                        dr["Isl-9th"] = arr[16];
                        dr["Isl-10th"] = arr[17];
                        dr["PStudy-9th"] = arr[21];
                        dr["PStudy-10th"] = arr[22];
                        dr["Math-10th"] = arr[26];
                        dr["Math-10th"] = arr[27];
                        dr["Phy-9th"] = arr[31];
                        dr["Phy-10th"] = arr[32];
                        dr["Phy-Prac"] = arr[33];
                        dr["Chem-9th"] = arr[36];
                        dr["Chem-10th"] = arr[37];
                        dr["Chem-Prac"] = arr[38];
                        dr["Bio-9th"] = arr[41];
                        dr["Bio-10th"] = arr[42];
                        dr["Bio-Prac"] = arr[43];
                        dt.Rows.Add(dr);
                    
                    }

                    
                    

                }
                catch(OpenQA.Selenium.NoSuchElementException)
                {
                    
                    url = "http://result.biselahore.com/";
                    driver.Navigate().GoToUrl(url);
                    String selector = "";
                    String xPath = "";
                    if(rs.degree == "Matric")
                    {
                        xPath = "//label[@for='radioOne']";
                    }
                    else
                    {
                        xPath = "//label[@for='radioTwo']";
                    }
                    var element = driver.FindElement(By.XPath(xPath));

                    element.Click();

                    selector = "input[name=rollNum]";
                    element = driver.FindElement(By.CssSelector(selector));
                    element.SendKeys(rs.rollNos[k]);


                    //Exam Type
                    if(rs.session == "Part-I")
                    {
                        xPath = "//select[@name='session']/option[3]";
                    }
                    else if(rs.session=="Part-II")
                    {
                        xPath = "//select[@name='session']/option[1]";
                    }
                    else
                    {
                        xPath = "//select[@name='session']/option[2]";
                    }
                    
                    element = driver.FindElement(By.XPath(xPath));
                    element.Click();


                    //Year
                    
                    xPath="";
                    if (rs.year == "2018")
                    {
                        xPath = "//option[text()='" + 2018 + "']";
                    }
                    else if (rs.year == "2017")
                    {
                        xPath = "//option[text()='" + 2017 + "']";
                    }
                    else if (rs.year == "2016")
                    {
                        xPath = "//option[text()='" + 2016 + "']";
                    }
                    else if (rs.year == "2015")
                    {
                        xPath = "//option[text()='" + 2015 + "']";
                    }
                    else if (rs.year == "2014")
                    {
                        xPath = "//option[text()='" + 2014 + "']";
                    }
                    else if (rs.year == "2013")
                    {
                        xPath = "//option[text()='" + 2013 + "']";
                    }
                    else if (rs.year == "2012")
                    {
                        xPath = "//option[text()='" + 2012 + "']";
                    }
                    else if (rs.year == "2011")
                    {
                        xPath = "//option[text()='" + 2011 + "']";
                    }
                    else if (rs.year == "2010")
                    {
                        xPath = "//option[text()='" + 2010 + "']";
                    }
                    else if (rs.year == "2009")
                    {
                        xPath = "//option[text()='" + 2009 + "']";
                    }
                    else if (rs.year == "2008")
                    {
                        xPath = "//option[text()='" + 2008 + "']";
                    }
                    else if (rs.year == "2007")
                    {
                        xPath = "//option[text()='" + 2007 + "']";
                    }
                    selector = "select[name=year]";
                    element = driver.FindElement(By.CssSelector(selector));
                    IWebElement option = element.FindElement(By.XPath(xPath));
                    option.Click();

                    String xPath2 = "//input[@value='View Result']";
                    var element2 = driver.FindElement(By.XPath(xPath2));
                    //Click the button
                    element2.Submit();



                    try
                    {
                        var ele = driver.FindElement(By.XPath("/html/body/div/div[2]/p"));
                        DataRow dr = dt.NewRow();
                        dr["Name"] = ele.Text;
                        dt.Rows.Add(dr);
                    }
                    catch (OpenQA.Selenium.NoSuchElementException)
                    {
                        DataRow dr = dt.NewRow();
                        dr["Roll No"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/h5/u")).Text;
                        dr["Name"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td[1]/table/tbody/tr[1]/td[2]/u")).Text;
                        dr["Urdu-9th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[4]/td[5]")).Text;
                        dr["Urdu-10th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[4]/td[6]")).Text;
                        dr["Eng-9th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[5]/td[5]")).Text;
                        dr["Eng-10th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[5]/td[6]")).Text;
                        dr["Isl-9th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[6]/td[5]")).Text;
                        dr["Isl-10th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[6]/td[6]")).Text;
                        dr["PStudy-9th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[7]/td[5]")).Text;
                        dr["PStudy-10th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[7]/td[6]")).Text;
                        dr["Math-9th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[8]/td[5]")).Text;
                        dr["Math-10th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[8]/td[6]")).Text;
                        dr["Phy-9th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[9]/td[5]")).Text;
                        dr["Phy-10th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[9]/td[6]")).Text;
                        dr["Phy-Prac"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[9]/td[7]")).Text;
                        dr["Chem-9th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[10]/td[5]")).Text;
                        dr["Chem-10th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[10]/td[6]")).Text;
                        dr["Chem-Prac"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[10]/td[7]")).Text;
                        dr["Bio-9th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[11]/td[5]")).Text;
                        dr["Bio-10th"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[11]/td[6]")).Text;
                        dr["Bio-Prac"] = driver.FindElement(By.XPath("/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[5]/td/table/tbody/tr[11]/td[7]")).Text;
                        dt.Rows.Add(dr);
                    
                    }


                    //extracting data

                    

                }
                
                
                //Type text in that box
                


                //Selector to access Search button
                
            }


            

            return dt;
        }
    }
}
