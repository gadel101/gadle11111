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
using System.Collections.ObjectModel;

namespace gadelshin_a
{
    /// <summary>
    /// Interaction logic for PageEmployee.xaml
    /// </summary>
    public partial class PageEmployee : Page
    {
        ObservableCollection<Employee> ListEmployee;
        public static TitleEmployeeEntities1 DataEntitiesEmployee { get; set; }
              
        public PageEmployee()
            
        {
            DataEntitiesEmployee = new TitleEmployeeEntities1();
            InitializeComponent();
            ListEmployee = new ObservableCollection<Employee>();
        }
        private bool isDirty = true;
        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            var employees = DataEntitiesEmployee.Employee;
            var queryEmployee = from employee in employees
                                orderby employee.Surname
                                select employee;
            foreach (Employee emp in queryEmployee)
            {
                ListEmployee.Add(emp);
            }
            DataGridEmployee.ItemsSource = ListEmployee;
        }
        private void UndoCommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            MessageBox.Show("Отмена");
            isDirty = true;
        }
        private void NewCommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            MessageBox.Show("Создать");
            isDirty = true;
        }
        private void SaveCommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            MessageBox.Show("Сохранить");
            isDirty = true;
        }
        private void FindCommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            MessageBox.Show("Найти");
            isDirty = true;
        }
        private void EditCommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            MessageBox.Show("Редактировать");
            isDirty = true;
        }
        private void DeleteCommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            MessageBox.Show("Удалить");
            isDirty = true;
        }
        private void UndoCommandBinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = !isDirty;
        }
        private void EditCommandBinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = isDirty;
        }
        private void SaveCommandBinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = !isDirty;
        }
        private void NewCommandBinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = isDirty;
        }
        private void FindCommandBinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = isDirty;
        }
        private void DeleteCommandBinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = isDirty;
        }
    }
}

