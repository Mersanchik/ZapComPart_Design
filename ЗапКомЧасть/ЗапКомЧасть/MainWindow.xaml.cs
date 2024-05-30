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
using System.Windows.Navigation;
using System.Windows.Shapes;
using ЗапКомЧасть.pages;

namespace ЗапКомЧасть
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void BtAuthorizationClick(object sender, RoutedEventArgs e)//Авторизация
        {
            var IDOfficeEmployee = App.production.OfficeEmployees.Where(x=>x.Login == LoginUser.Text & x.Password == PasswordUser.Text).FirstOrDefault();
            var IDChiefDepartmant = App.production.ChiefDepartmants.Where(x=>x.Login == LoginUser.Text & x.Password == PasswordUser.Text).FirstOrDefault();
            var IDChiefWorkshop = App.production.ChiefWorkshops.Where(x => x.Login == LoginUser.Text & x.Password == PasswordUser.Text).FirstOrDefault();
            if (LoginUser.Text == "" & PasswordUser.Text == "")
            {
                MessageBox.Show("Заполните данные!");
            }
            else
            {
                if (IDOfficeEmployee != null)
                {
                    EmployeeDepartment employeeDepartment = new EmployeeDepartment(IDOfficeEmployee);
                    employeeDepartment.Show();
                    this.Close();
                }
                else
                {
                    if (IDChiefDepartmant != null)
                    {
                        ChiefForm chiefForm = new ChiefForm(IDChiefDepartmant, null);
                        chiefForm.Show();
                        this.Close();
                    }
                    else
                    {
                        if(IDChiefWorkshop != null)
                        {
                            ChiefForm chiefForm = new ChiefForm(null, IDChiefWorkshop);
                            chiefForm.Show();
                            this.Close();
                        }
                        else
                        {
                            MessageBox.Show("Данного пользователя не существует!");
                        }
                    }
                }
            }
        }

        private void BtRegistartionClick(object sender, RoutedEventArgs e)//Регистрация
        {

        }
    }
}
