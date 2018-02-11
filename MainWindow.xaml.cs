using System;
using System.Windows;
using System.Windows.Media.Imaging;

namespace Shutdown
{
    public partial class MainWindow : Window
    {
        int time;
        int seconds;
        int minutes;
        int hours;
        System.Windows.Threading.DispatcherTimer dispatcherTimer;
        public MainWindow()
        {
            dispatcherTimer  = new System.Windows.Threading.DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(Timer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 1);
            InitializeComponent();
        }
        private void Timer_Tick(object sender, EventArgs e)
        {
            if (minutes == 0 && hours > 0) { minutes = 60; hours -= 1; }
            if (seconds == 0) { seconds = 60; minutes -= 1; }
            seconds--;
            textBlockTime.Text = string.Format("Left: {0:d2}:{1:d2}:{2:d2}",
                hours,
                (minutes == 0) ? 0 : minutes -1,
                minutes == 0 && seconds == 59  ? 0 : seconds);
        }
        private void btnAccept_Click(object sender, RoutedEventArgs e)
        {
            if (!(int.Parse(textBox.Text) > 1440 || int.Parse(textBox.Text) < 1))
            {
                time = int.Parse(textBox.Text) * 60;
                hours = time / 3600;
                minutes = (time - 3600 * hours) / 60;
                seconds = 60;
                System.Diagnostics.Process.Start("shutdown", "/s /t " + time);
                dispatcherTimer.Start();
                textBox.IsEnabled = false;
            }
            else { textBox.Text = string.Empty; }
        }
        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            System.Diagnostics.Process.Start("shutdown", "/a");
            dispatcherTimer.Stop();
            textBlockTime.Text = "Left: 00:00:00";
            textBox.IsEnabled = true;
            seconds = 60;
        }
    }
}
