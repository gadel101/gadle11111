   M S B A M L   `   `   `  ����F  Bgadelshin_a, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:gadelshin_agadelshin_a  5   	   ;"clr-namespace:gadelshin_a.Commandsgadelshin_a.Commands  5          gadelshin_a.PageEmployee   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:gadelshin_a     5   	   6command"clr-namespace:gadelshin_a.Commands     5        N� Title$  PageEmployee��5
      .��5      �� $��3,3,0,0q�6      BackgroundWindowResourse#��[  6"   .+�5   
   o� .@�5      m� $��Действие��6   .@�5      m� $��Отменить��6    m� Command$
 Undo��6-   6>   �� 5      6   m� 5      $��Создать��6   $	 New��6,   6<   m� 5      $ ��Редактировать��6   $ command:DataCommands.Edit��62   6X   m� 5      $��Сохранить��6   $
 Save��6.   6?   m� 5      $��
Найти��6   $
 Find��6*   �� 5      6   m� 5      $��Удалить��6   $! command:DataCommands.Delete��6,   6T   5      m� 5      $��
Отчёт��6   6(   5      c� 5   
   -   5        $��ToolBar1��5      $��3q�6"   .@�5      �� -   5        $
��undo��5       � ToolTip$D >Отменить редактирование/создание��6!   $��5,2,5,2q�6L   .��5      �� $��images/undo_16x.png��6   $��22��65   $��38��6A   5      �� 5      -   5        $	��add��5      $8 2Добавить нового сотрудника��6    $��5,2,5,2q�6E   .��5      �� $��images/AddMark_10580.png��6   $��22��6:   $��38��6F   5       �� 5!      -   5        $
��edit��5!      $��command:DataCommands.Edit��6!   $  Редактировать��6E   $��5,2,5,2q�6]   .��5"      �� $��images/PencilTool_206.ico��6   $��22��6;   $��38��6G   5#      �� 5$      -   5        $
��find��5$      $ 
Поиск��6!   $��5,2,5,2q�61   .��5%      �� $��images/Find_5650.ico��6   $��22��66   $��38��6B   5&      �� 5'      -   5        $
��save��5'      $ Сохранение��6!   $��5,2,5,2q�66   .��5(      �� $��Images/save_6530.ico��6   $��22��66   $��38��6B   5)      �� 5*      -   5        $��edit_remove��5*      $!��command:DataCommands.Delete��6(   $ Закрыть��6N   $��5,2,5,2q�6`   .��5+      �� $&�� Images/clearallrequests_8816.ico��6   $��22��6B   $��38��6N   5,      5-      �� 5.   
   $��5q�6   %#Список сотрудников65   &   System.Windows.Controls.DataGrid  5/   
   -   5        $��DataGridEmployee��5/         AutoGenerateColumns .  $
��1000��52      $	��295��6#      RowBackground �	#FFE6D3EF   AlternatingRowBackground �	#FC96CFD4���	#FF1F33EB$��3q�56         	RowHeight$ 25Q�57       � Cursor$
 Hand��58         CanUserAddRows .  	   CanUserDeleteRows	 .  $��53��5:   -   ��50      �� 
   Columns
 5;      0  *System.Windows.Controls.DataGridTextColumn  5<      ,  &System.Windows.Controls.DataGridColumn   Header$ Фамилия��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *	Surname+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�  5=      $ Имя��6%    62   �� *Name+$ TwoWay=�$ PropertyChanged=�  5>      $ Отчество��6%    67   �� *
Patronymic+$ TwoWay=�$ PropertyChanged=�  5?      $ Телефон��6%     5@      $' !Электронная почта��6%   4  .System.Windows.Controls.DataGridComboBoxColumn  5A      $ Должность��6)      ItemsSource 6<   ��  �� Path$ TitleID�$ TwoWay=�$ PropertyChanged=�4  .System.Windows.Controls.DataGridTemplateColumn  5B      $ Дата рождения��6)   5D      5E       J� CommandBindings 5F      )  #System.Windows.Input.CommandBinding  5G   
   -	   5        '  !gadelshin_a.Commands.DataCommands   Delete   Command# Z 5G      6s     5H   
   -
   5        $
 Undo��5H      6O     5I   
   -   5        $	 New��5I      6M     5J   
   -   5        $
 Save��5J      6O     5K   
   -   5        $
 Find��5K      6O     5L   
   -   5           Edit# Z 5L      6o    � 	Resources 5N        DateTemplate �� StringFormat  EditingDateTemplate(	  "System.Windows.Controls.DatePicker 	  SelectedDate��%
  &	       &	 �     �� 5O   
   .R�5P      �� $��Center=�5Q      $��Center=�6/   ��5P      �� *	BirstDate+$ {0:MM.}{0:yyyy}��5Q   /   5R      �� 5S   
   .R�5T      	   6   �� *	BirstDate+$ TwoWay=�$ PropertyChanged=�5U      5V      5X      