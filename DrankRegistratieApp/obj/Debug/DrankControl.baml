   M S B A M L   `   `   `  ����N  JDrankRegistratieApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:DrankRegistratieAppDrankRegistratieApp  5      &     DrankRegistratieApp.DrankControl   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:DrankRegistratieApp     5      $	��792��5   7   $	��367��6C   .��5	      � -   5          �Name$  	DrankGrid��5	      $	��792��6   $	��367��6*   .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	DrankenDG��5
      $
��Left=�6&   $	��312��6A   $��	10,45,0,0q�6N   $	��Top=�6a   $	��300��6y      AutoGenerateColumns .     CanUserAddRows .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6_   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ID+   ClipboardContentBinding 6<   Z� 6_     5      $
 Naam��6a    6%   �� *Naam+ 6>   Z� 6a     5      $ Soort��6b    6%   �� *Soort+ 6?   Z� 6b     5      $ Prijs��6b    6%   �� *Prijs+ 6?   Z� 6b   4  .System.Windows.Controls.DataGridTemplateColumn  5      	   CellTemplate	 5      �� 5      .R�5      �� 
 ��Name$
 	BtnDelete��6%   -   5        $��	Verwijder��5   8   6L   5      5      5      �� 5   
   -   5        $
 BackBtn��5      $��Terug��6"   $
��Left=�62   $��	10,10,0,0q�6M   $	��Top=�6`   $��68��6x   $��30��6�   $
��Bold"�6�   $��16(�6�   ���	#7F002FD1
�������6�   �� 5   
   -   5         ��Name$ 	SearchBox��5      $
��Left=�6%   $��30��6@   $��	83,10,0,0q�6L    �� TextWrapping$
 Wrap=�6_   $	��Top=�6s   $	��169��6�   $��20(�6�   6�   �� 5   
   -   5        $
 ZoekBtn��5      $
��Zoek��6"   $
��Left=�61   $��
252,10,0,0q�6L   $	��Top=�6`   $��58��6x   $��30��6�   $
��Bold"�6�   $��16(�6�   ���	#7F002FD1
�������6�   �� 5   
   -   5        $ NaamBox��5      $
��Left=�6#   $��30��6>   $��
644,10,0,0q�6J   $
 Wrap=�6^   $	��Top=�6r   $	��138��6�   $��20(�6�   �� 5   
   -   5        $ SoortBox��5      $
��Left=�6$   $��30��6?   $��
644,45,0,0q�6K   $
 Wrap=�6_   $	��Top=�6s   $	��138��6�   $��20(�6�   �� 5   
   -	   5        $ PrijsBox��5      $
��Left=�6$   $��30��6?   $��
644,80,0,0q�6K   $
 Wrap=�6_   $	��Top=�6s   $	��138��6�   $��20(�6�   �� 5   
   $
��Left=�6   $��
573,10,0,0q�6/   $
��Wrap=�6C   $��Naam:��6W   $	��Top=�6d   $��30��6|   $��66��6�   
�������$��20(�6�   $
��Bold"�6�    �� TextAlignment$ Right=�6�   �� 5    
   $
��Left=�6   $��
573,80,0,0q�6/   $
��Wrap=�6C   $��Prijs:��6W   $	��Top=�6e   $��30��6}   $��66��6�   
�������$��20(�6�   $
��Bold"�6�   $ Right=�6�   �� 5!   
   $
��Left=�6   $��
573,45,0,0q�6/   $
��Wrap=�6C   $��Soort:��6W   $	��Top=�6e   $��30��6}   $��66��6�   
�������$��20(�6�   $
��Bold"�6�   $ Right=�6�   �� 5"   
   -
   5        $
 ToevoegenBtn��5"      $��	Toevoegen��6'   $
��Left=�6;   $��644,115,0,0q�6V   $	��Top=�6k   $	��138��6�   $��30��6�   $
��Bold"�6�   $��16(�6�   ���	#7F002FD1
�������6�   �� 5#   
   -   5        $
 BijwerkenBtn��5#      $��	Bijwerken��6'   $
��Left=�6;   $��644,150,0,0q�6V   $	��Top=�6k   $	��138��6�   $��30��6�   $
��Bold"�6�   $��16(�6�   ���	#7F002FD1
�������6�   5$      5%      