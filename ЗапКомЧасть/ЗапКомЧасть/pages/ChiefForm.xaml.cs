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
using System.Xml.Linq;

namespace ЗапКомЧасть.pages
{
    /// <summary>
    /// Логика взаимодействия для ChiefForm.xaml
    /// </summary>
    public partial class ChiefForm : Window
    {
        bd.ChiefDepartmant chiefDepartmant;
        bd.ChiefWorkshop chiefWorkshop;
        public ChiefForm(bd.ChiefDepartmant chiefDepartmant, bd.ChiefWorkshop chiefWorkshop)
        {
            InitializeComponent();
            this.chiefDepartmant = chiefDepartmant;
            this.chiefWorkshop = chiefWorkshop;
            if(chiefDepartmant != null & chiefWorkshop == null)
            {
                UserName.Text = "Hi there, mr. " + chiefDepartmant.Name;
                identity = chiefDepartmant.idChiefDepartmant;
                BaseEmplOffice.Visibility = Visibility.Visible;
                BaseEmplProduction.Visibility = Visibility.Hidden;
                BaseEmplOffice.ItemsSource = App.production.OfficeSecondments.ToList();
                BaseCountry.ItemsSource = App.production.Countries.Where(x=>x.id_ChiefDepartmant == identity).ToList();
            }
            else
            {
                if(chiefDepartmant == null & chiefWorkshop != null)
                {
                    UserName.Text = "Hi there, mr. " + chiefWorkshop.Name;
                    identity = chiefWorkshop.idChiefWorkshop;
                    BaseEmplOffice.Visibility = Visibility.Hidden;
                    BaseEmplProduction.Visibility = Visibility.Visible;
                    BaseEmplProduction.ItemsSource = App.production.ProductionSecondments.ToList();
                    BaseCountry.ItemsSource = App.production.Countries.Where(x => x.id_ChiefDepartmant == identity).ToList();
                }
            }
        }
        int identity;
        private void ShowDepartmantClick(object sender, RoutedEventArgs e)
        {
            ListShopDepartment.Visibility = Visibility.Visible;
            ListNewEmpl.Visibility = Visibility.Hidden;
            ListCooperations.Visibility = Visibility.Hidden;
        }

        private void NewEmployeeClick(object sender, RoutedEventArgs e)
        {
            ListShopDepartment.Visibility = Visibility.Hidden;
            ListNewEmpl.Visibility = Visibility.Visible;
            ListCooperations.Visibility = Visibility.Hidden;
        }

        private void CooperaionClick(object sender, RoutedEventArgs e)
        {
            ListShopDepartment.Visibility = Visibility.Hidden;
            ListNewEmpl.Visibility = Visibility.Hidden;
            ListCooperations.Visibility = Visibility.Visible;
        }

        private void OutClick(object sender, RoutedEventArgs e)
        {
            MainWindow firstWindow = new MainWindow();
            firstWindow.Show();
            this.Close();
        }

        private void BtAddEmpClick(object sender, RoutedEventArgs e)//Добавление
        {
            try
            {
                string fullName = tbFirstName.Text + " " + tbName.Text + " " + tbSecondName.Text;
                int forIdDepartmant = App.production.Departmants.Where(x => x.Name == tbDepartmant.Text).Select(x => x.idDepartmant).FirstOrDefault();
                if (chiefDepartmant != null & chiefWorkshop == null)
                {
                    if (tbFirstName.Text == "" | tbName.Text == "" | tbSecondName.Text == "" | tbDepartmant.Text == "")
                    {
                        MessageBox.Show("Заполните пустые поля!");
                    }
                    else
                    {
                        identity = chiefDepartmant.idChiefDepartmant;
                        bd.ProductionEntities db = new bd.ProductionEntities();
                        bd.OfficeEmployee officeEmployee = new bd.OfficeEmployee()
                        {
                            Name = fullName,
                            id_Chief = identity,
                            id_Departmant = forIdDepartmant
                        };
                        db.OfficeEmployees.Add(officeEmployee);
                        db.SaveChanges();
                        MessageBox.Show("Данные успешно добавлены!");
                    }
                }
                else
                {
                    if (chiefDepartmant == null & chiefWorkshop != null)
                    {
                        MessageBox.Show("Добавление нового сотрудника невозможно!");
                    }
                }
            }
            catch
            {
                MessageBox.Show("Данного отдела не существует!");
            }
        }

        private void BtCancelClick(object sender, RoutedEventArgs e)
        {
            ListShopDepartment.Visibility = Visibility.Hidden;
            ListNewEmpl.Visibility = Visibility.Hidden;
            tbFirstName.Clear();
            tbName.Clear();
            tbSecondName.Clear();
            tbDepartmant.Clear();
            ListCooperations.Visibility = Visibility.Hidden;
        }
    }
}
