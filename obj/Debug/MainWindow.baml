   M S B A M L   `   `   `  ����F  BShutdownApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:ShutdownShutdown  5   	       Shutdown.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Shutdown     5   	     � Title$  Shutdown��5   	   $	��280��6   $	��268��6'    � WindowStartupLocation$ CenterScreen=�63    � Icon$ Resources\mainIcon.ico��6X   .��5	      � .+�5
   
   �� -   5         ��Name$ 	btnAccept��5
      $��Accept��6$   $��82,99,89.6,0q�65   $	��Top=�6K   $��28��6c   6o   �� 5   
   -   5         ��Name$ textBox��5      $��23��6#    �� TextAlignment$ Center=�6/    �� 	MaxLength$ 4��6F   $��29,63,29.6,0q�6T    �� TextWrapping$
 Wrap=�6j   $�� ��6~   $	��Top=�6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ textBlockInfo��5      $
��Wrap=�6+   $	��Top=�6?   $��29,27,29.6,0q�6W   $��31��6m   $+��%How long (in minutes) before shutdown��6y   �� 5   
   -   5        $ textBlockTime��5      $
��Wrap=�6+   $��Last : 00:00:00��6?   	 �� TextAlignment$	 Center=�6V   $��22,146,29.6,77.4q�6m   �� 5   
   -   5        $ 	btnCancel��5      $��Cancel��6$   $��82,178,89.6,0q�65   $��28��6L   $	��Top=�6p   5      5      