using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;

using System.Net.Http;
using Microsoft.WindowsAzure.MobileServices;
using System.Threading.Tasks;

using Repair.WinPhone;
using Windows.Storage;
using Windows.Graphics.Display;

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=391641

namespace Repair.WinPhone
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>


    public sealed partial class MainPage : Page
    {

        //private MobileServiceCollection<User, User> userItems;
        private IMobileServiceTable<User> userTbl = App.MobileService.GetTable<User>();

        private IMobileServiceTable<Report> reportTbl = App.MobileService.GetTable<Report>();

        //id of user logged in
        public int custId;
        public int count = 0;
        //declare vars for user detials
        public string FirstName;
        public string SecondName;
        public string Address;
        public string County;
        public string Email;
        public string Mobile;
        public string Landline;

        Windows.Storage.StorageFolder localFolder =
                Windows.Storage.ApplicationData.Current.LocalFolder;

        public MainPage()
        {

            this.InitializeComponent();

            this.NavigationCacheMode = NavigationCacheMode.Required;

            DisplayInformation.AutoRotationPreferences = DisplayOrientations.Portrait;

            //authentication to check if user loggged in other return to login

        }

        protected override void OnNavigatedTo(NavigationEventArgs e)
        {
            GetStoredId();

        }

        private async void GetStoredId()
        {
            // get id of customer stored in iso storage
            StorageFolder storeFolder =
                Windows.Storage.ApplicationData.Current.LocalFolder;
            //file to read
            StorageFile readFile =
                await storeFolder.GetFileAsync("CustomerData.txt");
                string custIdStr = await Windows.Storage.FileIO.ReadTextAsync(readFile);
                custId = Convert.ToInt32(custIdStr);

                if (custId > 0)
                {
                    GetDetails();
                if (count == 0)
                {
                    GetReports();
                    count++;
                }
                }
            else
            {
                //pretend user with ID of 2 just logged on
                int cID = 2;
                //When authentication implemented it will get the ID of logged in customer
                //it will save the customers ID to isolated storage this will
                //prevent the user having to log in the whole time when 
                //the open the application
                //Will Be saved to IsoStore when log in
                StorageFolder folder =
                    Windows.Storage.ApplicationData.Current.LocalFolder;

                StorageFile dataFile =
                    await folder.CreateFileAsync("CustomerData.txt", CreationCollisionOption.ReplaceExisting);
                await Windows.Storage.FileIO.WriteTextAsync(dataFile, cID.ToString());
            }
        }
        private async void GetDetails()
        {

            IMobileServiceTableQuery<User> q = userTbl
                .Where(c => c.Customer_id == custId);

            List<User> users = await q.ToListAsync();

            EachDetail(users);
        }

        private void EachDetail(List<User> users)
        {
            foreach (var user in users)
            {
                tbFirstName.Text = user.FirstName;
                tbSecondName.Text = " " + user.SecondName;
                tbAddress.Text = user.Address;
                tbCounty.Text = user.County;
                tbEmail.Text = user.Email;
                tbMobile.Text = user.Mobile;
                tbLandLine.Text =  user.Landline;
            }
        }

        private async void GetReports()
        {
            //add Reports
            //To Seed a report
            //Report ds = new Report { Report_Id = 1, User_Id = 1, Customer_Id = 2, Equipment = "Laptop", Brand = "Lenovo", Accessories = "None", Description = "Malwayre", Finished = true, CompletedDate = "25/04/2016", Conclusion = "Cleaned Up", Cost = 20, Paid = true };

            //await reportTbl.InsertAsync(ds);

            IMobileServiceTableQuery<Report> query = reportTbl
                .Where(cid => cid.Customer_Id == custId);

            List<Report> reports = await query.ToListAsync();
                
            foreach(var report in reports)
            {
                string rprt;
                string status = "";
                if (report.Finished == true)
                    status = "Complete";
                else status = "Un-Complete";

                rprt = report.Report_Id + ". | " + report.Equipment + " | " + report.Brand + " | " + status;
                lsbReports.Items.Add(rprt);
            }
          //  lsbReports.ItemsSource = users;
        }

        private void HyperlinkButton_Click(object sender, RoutedEventArgs e)
        {
          //  Frame.Navigate(typeof(Repair.WinPhone.Report));
        }

        private void HyperlinkButton_Click_1(object sender, RoutedEventArgs e)
        {
            Frame.Navigate(typeof(Repair.WinPhone.Edit));
        }

        private void HyperlinkButton_Click_2(object sender, RoutedEventArgs e)
        {
            //tbAddress.Text = lsbReports.SelectedValue.ToString();
            string reportSelcted = lsbReports.SelectedItem.ToString();
            int indx = reportSelcted.LastIndexOf(".");
            string ReportId = reportSelcted.Substring(0, indx);

            Frame.Navigate(typeof(ReportTicket), ReportId);
        }

        private void lsbReports_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //item must be selected before you can continute u ticket page
            btnGo.IsEnabled = true;
            btnGo.Content = "Go To Report";
        }


    }
}
