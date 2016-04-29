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

using Microsoft.WindowsAzure.MobileServices;

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkID=390556

namespace Repair.WinPhone
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class ReportTicket : Page
    {
        //string ReportTicketId = "4A0CCAE5-60AC-4DC1-BDF2-43CA83FFD4DA";
        public int ReportTicketId;
        private IMobileServiceTable<Report> reportTbl = App.MobileService.GetTable<Report>();

        public ReportTicket()
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
            string sReportTicketId = e.Parameter as string;
            ReportTicketId = Convert.ToInt32(sReportTicketId);
            GetReportDetails();
        }

        private async void GetReportDetails()
        {
            IMobileServiceTableQuery<Report> query = reportTbl
                .Where(cid => cid.Report_Id == ReportTicketId);

            List<Report> reports = await query.ToListAsync();

            foreach (var report in reports)
            {
                tbConclusion.Text =  report.Conclusion;
                tbBrand.Text = report.Brand;
                tbCompletedOn.Text = report.CompletedDate;
                tbCost.Text = report.Cost.ToString();
                tbEquipment.Text = report.Equipment;
     
                tbReportId.Text = report.Report_Id.ToString();

                string finished = "";
                string paid = "";

                if (report.Finished == true)
                {
                    finished = "Complete";
                    if (report.Paid == true)
                        paid = "Paid";
                    else
                        paid = "Un-Paid";
                }
                else
                    finished = "Repairing";

                tbStatus.Text = finished;
                tbPaidStatus.Text = paid;

            }
        }

        private void HyperlinkButton_Click(object sender, RoutedEventArgs e)
        {
            Frame.Navigate(typeof(Repair.WinPhone.MainPage));
        }
    }
}
