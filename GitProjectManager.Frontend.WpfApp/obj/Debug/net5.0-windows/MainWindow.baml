   M S B A M L   `   `   `  ����\  XGitProjectManager.Frontend.WpfApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:GitProjectManager.Frontend.WpfApp!GitProjectManager.Frontend.WpfApp  5   	   i9clr-namespace:GitProjectManager.Frontend.WpfApp.ViewModel+GitProjectManager.Frontend.WpfApp.ViewModel  5   	   2    ,GitProjectManager.Frontend.WpfApp.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Alocal/clr-namespace:GitProjectManager.Frontend.WpfApp     5   	   O	viewModel9clr-namespace:GitProjectManager.Frontend.WpfApp.ViewModel     5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)    � WindowStyle$ SingleBorderWindow=�5
   	    � 
ResizeMode$ 	CanResize=�5   	   
������  � AllowsTransparency$ False��5   	    � DataContext 5      ?  9GitProjectManager.Frontend.WpfApp.ViewModel.MainViewModel  5      .��5      �� ���#272637 �� CornerRadius$ 5��5      ._�5      �  � ColumnDefinitions 5      �� 5   
   $	��200 �6   �� 5   
    � RowDefinitions 5      �� 5   
   $��75 �6   �� 5   
   .+�5      �� $��
Code Witch��6   $��Center=�5      $
��Left=�5       
�������$��22(�5"      $��20,0,0,0q�5#      �� 5%      $��2��6   .+�5'   
   	� $��
Repository��6   $��50��5(      
�������$��20(�5*         MenuButtonTheme#��[  5+       d� 	IsChecked$
 TrueY�5,      ��5-      �� *DiscoveryViewCommand+	� 5/   
   $��Board��6   $��50��50      
�������$��20(�52      #��[  53      ��54      �� *BoardViewCommand+	� 56   
   $��Projects��6   $��50��57      
�������$��20(�59      #��[  5:      5<   	   �� 5>      $	��250��5?   	   $��40��5@   	   $��Center=�5A   	   $
��Left=�5B   	   $��1��5C   	   $��0��5D   	   $��5q�5E   	     ModernTextBox#��[ 5F   	   �� 5H      $��1��6   $��1��5I      $��10q�5J      ��5K      �� *CurrentView+5M   	   5N      5Q      5R      