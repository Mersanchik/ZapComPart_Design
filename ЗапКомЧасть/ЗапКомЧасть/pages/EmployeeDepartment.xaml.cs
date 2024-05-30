using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace ЗапКомЧасть.pages
{
    /// <summary>
    /// Логика взаимодействия для EmployeeDepartment.xaml
    /// </summary>
    public partial class EmployeeDepartment : Window
    {
        bd.OfficeEmployee officeEmployee;

        public EmployeeDepartment(bd.OfficeEmployee officeEmployee)
        {
            InitializeComponent();
            this.officeEmployee = officeEmployee;
            identity = officeEmployee.idOfficeEmployee;
            UserName.Text = "Hi there, mr. " + officeEmployee.Name;
            int IDDepartment = App.production.OfficeEmployees.Where(x=>x.idOfficeEmployee == identity).Select(x=>x.id_Departmant).FirstOrDefault();
            BaseDepartment.ItemsSource = App.production.Departmants.Where(x => x.idDepartmant == IDDepartment).ToList();
            BaseInfo.ItemsSource = App.production.OfficeEmployees.Where(x=>x.idOfficeEmployee == identity).ToList();
            BaseBussiness.ItemsSource = App.production.OfficeSecondments.Where(x=>x.id_Employee == identity).ToList();
        }
        int identity;

        private void ShowDepartmantInfoClick(object sender, RoutedEventArgs e)
        {
            ListDepInformation.Visibility = Visibility.Visible;
            ListInfoAboutMe.Visibility = Visibility.Hidden;
            ListBussinessTrip.Visibility = Visibility.Hidden;
        }

        private void InfoMeClick(object sender, RoutedEventArgs e)
        {
            ListDepInformation.Visibility = Visibility.Hidden;
            ListInfoAboutMe.Visibility = Visibility.Visible;
            ListBussinessTrip.Visibility = Visibility.Hidden;
        }

        private void BussinessTripClick(object sender, RoutedEventArgs e)
        {
            ListDepInformation.Visibility = Visibility.Hidden;
            ListInfoAboutMe.Visibility = Visibility.Hidden;
            ListBussinessTrip.Visibility = Visibility.Visible;
        }

        private void OutClick(object sender, RoutedEventArgs e)
        {
            MainWindow firstWindow = new MainWindow();
            firstWindow.Show();
            this.Close();
        }
    }
}
