   M S B A M L   `   `   `  ����U  QBusi.Alessandro.4H.Rubrica, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Busi.Alessandro._4H.RubricaBusi.Alessandro._4H.Rubrica  5   	   ,    &Busi.Alessandro._4H.Rubrica.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:Busi.Alessandro._4H.Rubrica     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $��1* �6   6*   �� 5      $��5* �6   6*   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��Center=�6   $��	29,0,40,0q�63   $��18(�6F   $��	ExtraBold"�6T   
CONTATTI6u   �� 5      -   5        $��Aggiungi Contatto��5      $	��148��61   $��60��6=   $��	50,5,60,5q�6I   
���   �$��5q�6p   6�   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dgDati��5   4   $��1��6   $��5q�6       AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 1.5* 6%      FontSize$ 15Q�6K   	   Header$
	 Nome��6Y   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 62   �� *Nome+6i     5      $
 1.5* 6%   $ 15Q�6N   $	 Cognome��6\   
 62   �� *	Cognome+6o     5      $ 2* 6%   $ 15Q�6N   $	 Numero di Telefono��6\   
 60   �� *	NTelefono+6z      RowDetailsTemplate 5      �� 5      .R�5      ]� 
�������.+�5      � $
��0,10q�6    � ColumnDefinitions 5      �� 5    "   $
��Auto �63   �� 5!   "   $��* �63    5#      �� 5$   "   $
��Auto �60   �� 5%   "   $
��Auto �60   �� 5&   "   $
��Auto �60   .+�5)      �� $��Citta: ��6(   $
��Bold"�67   �� 5*      $��1��6?   ��6(   �� *Citta+6?   �� 5+      $��Cap: ��6(   $
��Bold"�65   $��1��6G   �� 5,      $��1��6=   $��1��6M   ��6(   �� *Cap+6M   �� 5-      $��Età: ��6(   $
��Bold"�65   $��2��6G   �� 5.      $��1��6=   $��2��6M   ��6(   �� *Eta+6M   5/      50      51      53      54      55      