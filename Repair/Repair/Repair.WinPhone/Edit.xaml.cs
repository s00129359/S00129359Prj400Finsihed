using Microsoft.WindowsAzure.MobileServices;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.Storage;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkID=390556

namespace Repair.WinPhone
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class Edit : Page
    {
        //id of user logged in
        public int custId;
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

        private IMobileServiceTable<User> userTbl = App.MobileService.GetTable<User>();

        public Edit()
        {
            this.InitializeComponent();
        }

        /// <summary>
        /// Invoked when this page is about to be displayed in a Frame.
        /// </summary>
        /// <param name="e">Event data that describes how this page was reached.
        /// This parameter is typically used to configure the page.</param>
        protected override void OnNavigatedTo(NavigationEventArgs e)
        {
            GetStoredId();
        }

        private async void GetStoredId()
        {
            StorageFolder storeFolder =
                Windows.Storage.ApplicationData.Current.LocalFolder;
            StorageFile readFile =
                await storeFolder.GetFileAsync("CustomerData.txt");
            string custIdStr = await Windows.Storage.FileIO.ReadTextAsync(readFile);
            custId = Convert.ToInt32(custIdStr);
            if (custId > 0)
            {
                GetDetails();
            }
        }

        private async void GetDetails()
        {
            IMobileServiceTableQuery<User> q = userTbl
                .Where(c => c.Customer_id == custId);

            List<User> users = await q.ToListAsync();

            foreach (var user in users)
            {
                tbFirstName.Text = user.FirstName;
                tbSecondName.Text = user.SecondName;
                tbAddress.Text += user.Address;
                tbCounty.Text = user.County;
                tbEmail.Text = user.Email;
                tbMobile.Text = user.Mobile;
            }
        }

        private void HyperlinkButton_Click(object sender, RoutedEventArgs e)
        {
            Frame.Navigate(typeof(MainPage));
        }

        private async void HyperlinkButton_Click_1(object sender, RoutedEventArgs e)
        {
            //edit data
            var user = await userTbl
                .Where(c => c.Customer_id == custId)
                .ToCollectionAsync();
            var use = user.FirstOrDefault();
            if (use != null)
            {
                use.FirstName = tbFirstName.Text;
                use.SecondName = tbSecondName.Text;
                use.Address = tbAddress.Text;
                use.County = tbCounty.Text;
                use.Mobile = tbMobile.Text;
                use.Email = tbEmail.Text;

                await userTbl.UpdateAsync(use);
            }

            Frame.Navigate(typeof(MainPage));
        }
    }
}
