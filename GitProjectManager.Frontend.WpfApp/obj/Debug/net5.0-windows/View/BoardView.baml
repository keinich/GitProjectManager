   M S B A M L   `   `   `  ����\  XGitProjectManager.Frontend.WpfApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null_4clr-namespace:GitProjectManager.Frontend.WpfApp.View&GitProjectManager.Frontend.WpfApp.View  5      i9clr-namespace:GitProjectManager.Frontend.WpfApp.ViewModel+GitProjectManager.Frontend.WpfApp.ViewModel  5      6    0GitProjectManager.Frontend.WpfApp.View.BoardView   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Flocal4clr-namespace:GitProjectManager.Frontend.WpfApp.View     5      O	viewModel9clr-namespace:GitProjectManager.Frontend.WpfApp.ViewModel     5      -   5          >�Name$  userControl��5       � DataContext 5      @  :GitProjectManager.Frontend.WpfApp.ViewModel.BoardViewModel  5      .��5      �  � RowDefinitions 5      �� 5      $��50 �6   �� 5      .+�5      �� 
�������$��28(�5      $
��Left=�5      $��0,0,0,20q�5      $��0��5      ��5      �� *ProjectName+5      � 5      $��1��6    � ColumnDefinitions 5      �� 5   
   $
��Auto �6   .+�5       ��  �� Orientation$ 
Horizontal=�5!      .+�5"   
   �� -   5         ��Name$ border��5"      $	��200��6!   $��10q�5#       �� CornerRadius$ 10��5$      ��5&      �� 5'       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,2&�63   .��5(      � 	 � Color$	 #5bc3dd��6   
 � Offset$
 0Q�6-   � 5)      $	 #3aa0ff��6   $
 1Q�6-   5*      ._�5-      � .+�5.      �� .+�5/      �� $	��New��6   
�������$��28(�51      $��
20,10,10,0q�52      �� 53      ���#306D7F.��54      �� $��+��6   
������ 55      56      58      5:      5<      �� 5=   
   -   5        $ borderInProgress��5=      $	��200��6+   $��10q�5>      $ 10��5?      $��1��5@      ��5B      �� 5C      $	 0,0&�6"   $	 1,2&�63   .��5D      � $	 #D4CB20��6   $
 0Q�6-   � 5E      $	 #3aa0ff��6   $
 1Q�6-   5F      ._�5I      � .+�5J      �� .+�5K      �� $��In Progress��6   
�������$��28(�5M      $��
20,10,10,0q�5N      5O      5Q      5S      �� 5U   
   -   5        $ 
borderDone��5U      $	��200��6%   $��10q�5V      $ 10��5W      $��2��5X      ��5Z      �� 5[      $	 0,0&�6"   $	 1,2&�63   .��5\      � $	 #7ED420��6   $
 0Q�6-   � 5]      $	 #3aa0ff��6   $
 1Q�6-   5^      ._�5a      � .+�5b      �� .+�5c      �� $
��Done��6   
�������$��28(�5e      $��
20,10,10,0q�5f      5g      5i      5k      5m   	   5p      5r      5t      