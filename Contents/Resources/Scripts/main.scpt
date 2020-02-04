FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007-2020 Tetsuro KURITA

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	   C o p y r i g h t   ( C )   2 0 0 7 - 2 0 2 0   T e t s u r o   K U R I T A  
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 F o o b a r   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   F o o b a r .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / >     
  
 x     �� ���� 0 pathinfo PathInfo  4    �� 
�� 
scpt  m       �    P a t h I n f o��        x    �� ����    2   ��
�� 
osax��        x    +�� ����    4     $�� 
�� 
frmk  m   " #   �    A p p K i t��        x   + 8�� ����    4   - 1�� 
�� 
frmk  m   / 0   �    F o u n d a t i o n��         j   8 >�� !�� 0 nsworkspace NSWorkspace ! 4   8 =�� "
�� 
pcls " m   : ; # # � $ $  N S W o r k s p a c e    % & % j   ? E�� '�� 0 nsfilemanager NSFileManager ' 4   ? D�� (
�� 
pcls ( m   A B ) ) � * *  N S F i l e M a n a g e r &  + , + l     ��������  ��  ��   ,  - . - j   F H�� /
�� 
pnam / m   F G 0 0 � 1 1 
 X F i l e .  2 3 2 l     ��������  ��  ��   3  4 5 4 l      �� 6 7��   6	'	!!@referencesPathInfo || help:openbook='net.script-factory.PathInfo.help'
Home page || http://www.script-factory.net/XModules/XFile/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XFile/changelog.html
Repository || https://github.com/tkurita/XFile.scptd

@title XFile Reference* Version : 1.7.2* Author : Kurita Tetsuro ((<scriptfactory@mac.com>))* Requirements : OS X 10.9 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

XFile provides unified object oriented interface to file operation (moving, removing, geting attributes and so on).Functions of file operations of AppleScript world is given by Scrpting Additions, Finder, System Events and shell commnads. 
It is cumbersome to find a proper way, because implemeted locations of functions are distributed.
XFile wraps these components and introduces a file object for unified object oriented interface.

== Example
@example
use XFile : script "XFile"use scripting additions(* Make a New Instance *)set a_xfile to XFile's make_with("/Users")set home_folder to XFile's make_with(path to home folder)(* Obtain File Infomation *)log a_xfile's type_identifier() -- "public.folder"log a_xfile's is_folder() -- truelog a_xfile's is_package() -- falselog a_xfile's item_name() -- "Users"(* Obtain Parent and Child *)log home_folder's parent_folder()'s posix_path()-- "/Users"log home_folder's child("Documents")'s posix_path()-- "/Users/yourhome/Documents"log home_folder's child("Library/Scripts")'s posix_path()-- "/Users/yourhome/Library/Scripts"log home_folder's unique_child("Documents")'s posix_path()--"/Users/yourhome/Documents 2"(* Read and Write *)set test_file to home_folder's child("testfile")test_file's write_as_utf8("new data")log test_file's read_as_utf8() -- "new data"(* File Manipulations *)log test_file's item_exists() --trueset test_file2 to test_file's copy_to(home_folder's child("testfile2"))log test_file2's posix_path() -- "/Users/yourhome/testfile2"test_file2's move_to(home_folder's child("Documents"))log test_file2's posix_path() -- "/Users/yourhome/Documents/testfile2"test_file2's into_trash()log test_file2's posix_path() -- "/Users/yourhome/.Trash/testfile2"test_file's into_trash()(* Working with Shell Commands *)log test_file's perform_shell("cat %s") -- "new data"    7 � 8 8B ! @ r e f e r e n c e s  P a t h I n f o   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . P a t h I n f o . h e l p ' 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X F i l e / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X F i l e / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X F i l e . s c p t d 
 
 @ t i t l e   X F i l e   R e f e r e n c e  *   V e r s i o n   :   1 . 7 . 2  *   A u t h o r   :   K u r i t a   T e t s u r o   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) )  *   R e q u i r e m e n t s   :   O S   X   1 0 . 9   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
 
  X F i l e   p r o v i d e s   u n i f i e d   o b j e c t   o r i e n t e d   i n t e r f a c e   t o   f i l e   o p e r a t i o n   ( m o v i n g ,   r e m o v i n g ,   g e t i n g   a t t r i b u t e s   a n d   s o   o n ) .  F u n c t i o n s   o f   f i l e   o p e r a t i o n s   o f   A p p l e S c r i p t   w o r l d   i s   g i v e n   b y   S c r p t i n g   A d d i t i o n s ,   F i n d e r ,   S y s t e m   E v e n t s   a n d   s h e l l   c o m m n a d s .   
 I t   i s   c u m b e r s o m e   t o   f i n d   a   p r o p e r   w a y ,   b e c a u s e   i m p l e m e t e d   l o c a t i o n s   o f   f u n c t i o n s   a r e   d i s t r i b u t e d . 
 X F i l e   w r a p s   t h e s e   c o m p o n e n t s   a n d   i n t r o d u c e s   a   f i l e   o b j e c t   f o r   u n i f i e d   o b j e c t   o r i e n t e d   i n t e r f a c e . 
 
 = =   E x a m p l e 
 @ e x a m p l e 
 u s e   X F i l e   :   s c r i p t   " X F i l e "  u s e   s c r i p t i n g   a d d i t i o n s   ( *   M a k e   a   N e w   I n s t a n c e   * )  s e t   a _ x f i l e   t o   X F i l e ' s   m a k e _ w i t h ( " / U s e r s " )  s e t   h o m e _ f o l d e r   t o   X F i l e ' s   m a k e _ w i t h ( p a t h   t o   h o m e   f o l d e r )   ( *   O b t a i n   F i l e   I n f o m a t i o n   * )  l o g   a _ x f i l e ' s   t y p e _ i d e n t i f i e r ( )   - -   " p u b l i c . f o l d e r "  l o g   a _ x f i l e ' s   i s _ f o l d e r ( )   - -   t r u e  l o g   a _ x f i l e ' s   i s _ p a c k a g e ( )   - -   f a l s e  l o g   a _ x f i l e ' s   i t e m _ n a m e ( )   - -   " U s e r s "   ( *   O b t a i n   P a r e n t   a n d   C h i l d   * )  l o g   h o m e _ f o l d e r ' s   p a r e n t _ f o l d e r ( ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / D o c u m e n t s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " L i b r a r y / S c r i p t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / L i b r a r y / S c r i p t s "  l o g   h o m e _ f o l d e r ' s   u n i q u e _ c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - - " / U s e r s / y o u r h o m e / D o c u m e n t s   2 "   ( *   R e a d   a n d   W r i t e   * )  s e t   t e s t _ f i l e   t o   h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e " )  t e s t _ f i l e ' s   w r i t e _ a s _ u t f 8 ( " n e w   d a t a " )  l o g   t e s t _ f i l e ' s   r e a d _ a s _ u t f 8 ( )   - -   " n e w   d a t a "   ( *   F i l e   M a n i p u l a t i o n s   * )  l o g   t e s t _ f i l e ' s   i t e m _ e x i s t s ( )   - - t r u e   s e t   t e s t _ f i l e 2   t o   t e s t _ f i l e ' s   c o p y _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e 2 " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   m o v e _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / D o c u m e n t s / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   i n t o _ t r a s h ( )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / . T r a s h / t e s t f i l e 2 "  t e s t _ f i l e ' s   i n t o _ t r a s h ( )   ( *   W o r k i n g   w i t h   S h e l l   C o m m a n d s   * )  l o g   t e s t _ f i l e ' s   p e r f o r m _ s h e l l ( " c a t   % s " )   - -   " n e w   d a t a "   5  9 : 9 l     ��������  ��  ��   :  ; < ; j   I K�� =�� 0 _prefer_posix   = m   I J��
�� boovtrue <  > ? > l     ��������  ��  ��   ?  @ A @ i   L O B C B I      �� D���� 0 prefer_posix   D  E�� E o      ���� 0 bool  ��  ��   C r      F G F o     ���� 0 bool   G n      H I H o    ���� 0 _prefer_posix   I  f     A  J K J l     ��������  ��  ��   K  L M L l      �� N O��   N c ]!@group ConstractorsMaking a new instance with a reference to a file from the class object.    O � P P � ! @ g r o u p   C o n s t r a c t o r s  M a k i n g   a   n e w   i n s t a n c e   w i t h   a   r e f e r e n c e   t o   a   f i l e   f r o m   t h e   c l a s s   o b j e c t .  M  Q R Q l     ��������  ��  ��   R  S T S l      �� U V��   U!@abstruct Make a XFile instance with a file reference@descriptionHFS/POSIX path, alias and file URL can be accepted as file specification.@param file_ref (alias or Unicode text) : a HFS/POSIX path, alias or File URL@result script object : a new instance of XFile    V � W W ! @ a b s t r u c t    M a k e   a   X F i l e   i n s t a n c e   w i t h   a   f i l e   r e f e r e n c e  @ d e s c r i p t i o n  H F S / P O S I X   p a t h ,   a l i a s   a n d   f i l e   U R L   c a n   b e   a c c e p t e d   a s   f i l e   s p e c i f i c a t i o n .  @ p a r a m   f i l e _ r e f   ( a l i a s   o r   U n i c o d e   t e x t )   :   a   H F S / P O S I X   p a t h ,   a l i a s   o r   F i l e   U R L  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  T  X Y X i   P S Z [ Z I      �� \���� 0 	make_with   \  ]�� ] o      ���� 0 file_ref  ��  ��   [ k     X ^ ^  _ ` _ r      a b a m     ��
�� boovfals b o      ���� 
0 is_hfs   `  c d c Z     e f���� e E    g h g J    	 i i  j k j m    ��
�� 
ctxt k  l m l m    ��
�� 
utxt m  n�� n m    ��
�� 
TEXT��   h n   	  o p o m   
 ��
�� 
pcls p o   	 
���� 0 file_ref   f r     q r q l    s���� s H     t t C     u v u o    ���� 0 file_ref   v m     w w � x x  /��  ��   r o      ���� 
0 is_hfs  ��  ��   d  y z y Z    P { | } ~ { o    ���� 
0 is_hfs   | r    +  �  n   ) � � � I   $ )�� ����� 0 make_with_hfs   �  ��� � o   $ %���� 0 file_ref  ��  ��   � o    $���� 0 pathinfo PathInfo � o      ���� 0 	path_info   }  � � � n  . 2 � � � o   / 1���� 0 _prefer_posix   �  f   . / �  ��� � r   5 A � � � n  5 ? � � � I   : ?�� ����� 0 make_with_posix   �  ��� � o   : ;���� 0 file_ref  ��  ��   � o   5 :���� 0 pathinfo PathInfo � o      ���� 0 	path_info  ��   ~ r   D P � � � n  D N � � � I   I N�� ����� 0 make_with_hfs   �  ��� � o   I J���� 0 file_ref  ��  ��   � o   D I���� 0 pathinfo PathInfo � o      ���� 0 	path_info   z  � � � l  Q Q��������  ��  ��   �  ��� � L   Q X � � I   Q W�� ����� 0 make_with_pathinfo   �  ��� � o   R S���� 0 	path_info  ��  ��  ��   Y  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstructMake a new instance with a ((<PathInfo>)) instance.@param path_info (script) : a ((<PathInfo>)) instance.@result script object : a new instance of XFile     � � � �N ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   a   ( ( < P a t h I n f o > ) )   i n s t a n c e .  @ p a r a m   p a t h _ i n f o   ( s c r i p t )   :   a   ( ( < P a t h I n f o > ) )   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e    �  � � � i   T W � � � I      �� ����� 0 make_with_pathinfo   �  ��� � o      ���� 0 	path_info  ��  ��   � k      � �  � � � r      � � �  f      � o      ���� 0 a_parent   �  � � � h    �� ��� 0 xfile XFile � k       � �  � � � j     �� �
�� 
pare � o     ���� 0 a_parent   �  � � � j   	 �� ��� 0 	_pathinfo 	_pathInfo � o   	 ���� 0 	path_info   �  � � � j    �� ��� 0 _inforecord _infoRecord � m    ��
�� 
msng �  ��� � j    �� ��� 0 _prefer_posix   � n    � � � I    �������� 0 is_posix  ��  ��   � o    ���� 0 	path_info  ��   �  ��� � L     � � o    ���� 0 xfile XFile��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@group Make a New Instance with Changing Contents of an Instance

Making a new XFile instance with changing a part of the exisiting instance.    � � � �  ! @ g r o u p   M a k e   a   N e w   I n s t a n c e   w i t h   C h a n g i n g   C o n t e n t s   o f   a n   I n s t a n c e  
 
 M a k i n g   a   n e w   X F i l e   i n s t a n c e   w i t h   c h a n g i n g   a   p a r t   o f   t h e   e x i s i t i n g   i n s t a n c e .  �  � � � l     �������  ��  �   �  � � � l      �~ � ��~   � � �!@abstructMake a new instance with changing file name of the instance@param a_name (Unicode text or string) : a file name@result script object : a new instance of XFile    � � � �X ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f i l e   n a m e   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :   a   f i l e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   X [ � � � I      �} ��|�} 0 change_name   �  ��{ � o      �z�z 
0 a_name  �{  �|   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �y ��x�y 0 change_name   �  ��w � o    �v�v 
0 a_name  �w  �x   � o    �u�u 0 	_pathinfo 	_pathInfo �  f      � o      �t�t 0 	path_info   �  ��s � L     � � I    �r ��q�r 0 make_with_pathinfo   �  ��p � o    �o�o 0 	path_info  �p  �q  �s   �  � � � l     �n�m�l�n  �m  �l   �  � � � l      �k � ��k   � � �!@abstructMake a new instance with changing folder of the instance@param a_name (alias, Unicode text, file URL, file specification) : a reference to folder@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f o l d e r   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( a l i a s ,   U n i c o d e   t e x t ,   f i l e   U R L ,   f i l e   s p e c i f i c a t i o n )   :   a   r e f e r e n c e   t o   f o l d e r  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   \ _ � � � I      �j ��i�j 0 change_folder   �  ��h � o      �g�g 0 
folder_ref  �h  �i   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �f ��e�f 0 change_folder   �  ��d � o    �c�c 0 
folder_ref  �d  �e   � o    �b�b 0 	_pathinfo 	_pathInfo �  f      � o      �a�a 0 	path_info   �  ��` � L     � � I    �_ �^�_ 0 make_with_pathinfo    �] o    �\�\ 0 	path_info  �]  �^  �`   �  l     �[�Z�Y�[  �Z  �Y    l      �X�X   � �!@abstructMake a new instance with changing path extension of the instance@param a_name (Unicode text or string) :a path extension, should not start with a dot ".".<!-- end locale -->@result script object : a new instance of XFile    �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   p a t h   e x t e n s i o n   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   : a   p a t h   e x t e n s i o n ,   s h o u l d   n o t   s t a r t   w i t h   a   d o t   " . " .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  	
	 i   ` c I      �W�V�W 0 change_path_extension   �U o      �T�T 0 a_suffix  �U  �V   L      I     �S�R�S 0 make_with_pathinfo   �Q n   	 n   	 I    	�P�O�P 0 change_path_extension   �N o    �M�M 0 a_suffix  �N  �O   o    �L�L 0 	_pathinfo 	_pathInfo  f    �Q  �R  
  l     �K�J�I�K  �J  �I    l      �H�H   q k!@group Getting a File Reference form an Instance

Obtain a reference to a file which XFile reference to.    � � ! @ g r o u p   G e t t i n g   a   F i l e   R e f e r e n c e   f o r m   a n   I n s t a n c e  
 
 O b t a i n   a   r e f e r e n c e   t o   a   f i l e   w h i c h   X F i l e   r e f e r e n c e   t o .    l     �G�F�E�G  �F  �E    !"! l      �D#$�D  # � �!@abstructObtain a reference to a file as alias class@descriptionAn error raise, If a file or a folder does not exists.@result alias   $ �%% ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   a l i a s   c l a s s  @ d e s c r i p t i o n  A n   e r r o r   r a i s e ,   I f   a   f i l e   o r   a   f o l d e r   d o e s   n o t   e x i s t s .  @ r e s u l t   a l i a s " &'& i   d g()( I      �C�B�A�C 0 as_alias  �B  �A  ) k     ** +,+ I     �@�?�>�@ !0 check_existance_raising_error  �?  �>  , -�=- L    .. n   /0/ n   121 I   	 �<�;�:�< 0 as_alias  �;  �:  2 o    	�9�9 0 	_pathinfo 	_pathInfo0  f    �=  ' 343 l     �8�7�6�8  �7  �6  4 565 l      �578�5  7 Q K!@abstructObtain a reference to a file as File URL class@result File URL   8 �99 � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   F i l e   U R L   c l a s s  @ r e s u l t   F i l e   U R L 6 :;: i   h k<=< I      �4�3�2�4 0 as_furl  �3  �2  = L     >> n    ?@? n   ABA I    �1�0�/�1 0 as_furl  �0  �/  B o    �.�. 0 	_pathinfo 	_pathInfo@  f     ; CDC l     �-�,�+�-  �,  �+  D EFE l      �*GH�*  G / )!@abstruct Obtain HFS path@result text   H �II R ! @ a b s t r u c t    O b t a i n   H F S   p a t h  @ r e s u l t   t e x t F JKJ i   l oLML I      �)�(�'�) 0 hfs_path  �(  �'  M L     NN n    OPO n   QRQ I    �&�%�$�& 0 hfs_path  �%  �$  R o    �#�# 0 	_pathinfo 	_pathInfoP  f     K STS l     �"�!� �"  �!  �   T UVU l      �WX�  W 1 +!@abstruct Obtain POSIX path@result text   X �YY V ! @ a b s t r u c t    O b t a i n   P O S I X   p a t h  @ r e s u l t   t e x t V Z[Z i   p s\]\ I      ���� 0 
posix_path  �  �  ] L     ^^ n    _`_ n   aba I    ���� 0 
posix_path  �  �  b o    �� 0 	_pathinfo 	_pathInfo`  f     [ cdc l     ����  �  �  d efe l      �gh�  g M G!@abstruct
Obtain POSIX path which does not end with "/".
@result text   h �ii � ! @ a b s t r u c t 
 O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 @ r e s u l t   t e x t f jkj i   t wlml I      ���� 0 normalized_posix_path  �  �  m L     nn n    opo n   qrq I    ���� 0 normalized_posix_path  �  �  r o    �� 0 	_pathinfo 	_pathInfop  f     k sts l     ���
�  �  �
  t uvu i   x {wxw I      �	���	 0 quoted_path  �  �  x L     yy n    
z{z n   	|}| 1    	�
� 
strq} n   ~~ I    ���� 0 
posix_path  �  �   o    �� 0 	_pathinfo 	_pathInfo{  f     v ��� l     �� ���  �   ��  � ��� l      ������  � &  !@group Working with Attributes    � ��� @ ! @ g r o u p   W o r k i n g   w i t h   A t t r i b u t e s  � ��� l     ��������  ��  ��  � ��� l      ������  � P J!@abstruct
Obtain uniform type identifier (UTI) of the item 
@result text
   � ��� � ! @ a b s t r u c t 
 O b t a i n   u n i f o r m   t y p e   i d e n t i f i e r   ( U T I )   o f   t h e   i t e m   
 @ r e s u l t   t e x t 
� ��� i   | ��� I      �������� 0 type_identifier  ��  ��  � O     ��� L    �� c    ��� l   ������ n   ��� I    ������� &0 typeoffile_error_ typeOfFile_error_� ��� l   ������ n   ��� I    �������� 0 
posix_path  ��  ��  �  f    ��  ��  � ���� l   ������ m    ��
�� 
msng��  ��  ��  ��  �  g    ��  ��  � m    ��
�� 
ctxt� n    	��� I    	�������� "0 sharedworkspace sharedWorkspace��  ��  � o     ���� 0 nsworkspace NSWorkspace� ��� l     ��������  ��  ��  � ��� l      ������  � n h!@abstruct
Check whether the item is a folder or not.
@result boolean : true if the the item is folder.
   � ��� � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   a   f o l d e r   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   t h e   i t e m   i s   f o l d e r . 
� ��� i   � ���� I      �������� 0 	is_folder  ��  ��  � k     /�� ��� r     ��� I     �������� 0 type_identifier  ��  ��  � o      ���� 
0 my_uti  � ��� O    *��� Z    )������ =   ��� o    ���� 
0 my_uti  � m    �� ���  p u b l i c . f o l d e r� r    ��� m    ��
�� boovtrue� o      ���� 0 a_result  ��  � r     )��� n    '��� I   ! '������� ,0 type_conformstotype_ type_conformsToType_� ��� o   ! "���� 
0 my_uti  � ���� m   " #�� ���   c o m . a p p l e . b u n d l e��  ��  �  g     !� o      ���� 0 a_result  � n   ��� I    �������� "0 sharedworkspace sharedWorkspace��  ��  � o    ���� 0 nsworkspace NSWorkspace� ��� L   + -�� o   + ,���� 0 a_result  � ���� l   . .������  � { u
	-- �Ȃ��� info for �R�}���h�ŃG���[ -1700 ���N����B2020-02-03
	set info_rec to info()
	return folder of info_rec
	   � ��� � 
 	 - -  0j0\0K   i n f o   f o r  0�0�0�0�0g0�0�0�   - 1 7 0 0  0L�w0M0�0 2 0 2 0 - 0 2 - 0 3 
 	 s e t   i n f o _ r e c   t o   i n f o ( ) 
 	 r e t u r n   f o l d e r   o f   i n f o _ r e c 
 	��  � ��� l     ��������  ��  ��  � ��� l      ������  � n h!@abstructCheck whether the item is a package or not.@result boolean : true if the item is a package.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   p a c k a g e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   p a c k a g e . � ��� i   � ���� I      �������� 0 
is_package  ��  ��  � O     ��� k    �� ��� L    �� n   ��� I    ������� ,0 isfilepackageatpath_ isFilePackageAtPath_� ���� l   ������ n   ��� I    �������� 0 
posix_path  ��  ��  �  f    ��  ��  ��  ��  �  g    � ���� l   ������  � P J return its type:(my type_identifier()) conformsToType:"com.apple.package"   � ��� �   r e t u r n   i t s   t y p e : ( m y   t y p e _ i d e n t i f i e r ( ) )   c o n f o r m s T o T y p e : " c o m . a p p l e . p a c k a g e "��  � n    	��� I    	�������� "0 sharedworkspace sharedWorkspace��  ��  � o     ���� 0 nsworkspace NSWorkspace� ��� l     ��������  ��  ��  � ��� l      ������  � v p!@abstructCheck whether the item is an alias file or not.@result boolean : true if the item is an alias file.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . � ��� i   � ���� I      �������� 0 is_alias  ��  ��  � L     �� l    ������ =    � � m      � ( c o m . a p p l e . a l i a s - f i l e  I    �������� 0 type_identifier  ��  ��  ��  ��  �  l     ��������  ��  ��    l      ����   z t!@abstructCheck whether the item is a symbolic link or not.@result boolean : true if the item is a symbolic link.    �		 � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k .  

 i   � � I      �������� 0 
is_symlink  ��  ��   L      l    ���� =     m      �  p u b l i c . s y m l i n k I    �������� 0 type_identifier  ��  ��  ��  ��    l     ��������  ��  ��    l      ����   j d!@abstructCheck whether the item is visible or not.@result boolean : true if the item is visible.    � � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e .   i   � � I      �������� 0 
is_visible  ��  ��   k       !  r     "#" I     �������� 0 info  ��  ��  # o      ���� 0 info_rec  ! $��$ L    %% n    &'& 1   	 ��
�� 
pvis' o    	���� 0 info_rec  ��   ()( l     ��������  ��  ��  ) *+* l      ��,-��  , � �!@abstructSet creator code and type code to the item.@param creator_code (text) : creator code which consists of 4 characters@param type_code (text) : type code which consists of 4 characters   - �..� ! @ a b s t r u c t  S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m .  @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s + /0/ i   � �121 I      ��3���� 0 	set_types  3 454 o      ���� 0 creator_code  5 6��6 o      ���� 0 	type_code  ��  ��  2 k     +77 898 l     ��:;��  : V P difficult to implemented with NSFileManager's setAttributes:ofItemAtPath:error:   ; �<< �   d i f f i c u l t   t o   i m p l e m e n t e d   w i t h   N S F i l e M a n a g e r ' s   s e t A t t r i b u t e s : o f I t e m A t P a t h : e r r o r :9 =��= Z     +>?����> H     @@ I     ������� 0 	is_folder  ��  �  ? k   	 'AA BCB r   	 DED I   	 �~�}�|�~ 0 as_alias  �}  �|  E o      �{�{ 
0 a_file  C FGF O    !HIH k     JJ KLK r    MNM o    �z�z 0 creator_code  N n      OPO 1    �y
�y 
fcrtP o    �x�x 
0 a_file  L Q�wQ r     RSR o    �v�v 0 	type_code  S n      TUT 1    �u
�u 
astyU o    �t�t 
0 a_file  �w  I m    VV�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  G W�sW r   " 'XYX m   " #�r
�r 
msngY n     Z[Z o   $ &�q�q 0 _inforecord _infoRecord[  f   # $�s  ��  ��  ��  0 \]\ l     �p�o�n�p  �o  �n  ] ^_^ l      �m`a�m  `!@abstructObtain file information.@descriptionDo &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().The size of the target will not be included.@result file infomation(record) : a result of info for command.   a �bb( ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) .  T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . _ cdc i   � �efe I      �l�k�j�l 0 info  �k  �j  f k     'gg hih Z     !jk�i�hj =    lml n    non o    �g�g 0 _inforecord _infoRecordo  f     m m    �f
�f 
msngk k    pp qrq I    �e�d�c�e !0 check_existance_raising_error  �d  �c  r s�bs r    tut I   �avw
�a .sysonfo4asfe        filev I    �`�_�^�` 0 as_furl  �_  �^  w �]x�\
�] 
ptszx m    �[
�[ boovfals�\  u n     yzy o    �Z�Z 0 _inforecord _infoRecordz  f    �b  �i  �h  i {�Y{ L   " '|| n  " &}~} o   # %�X�X 0 _inforecord _infoRecord~  f   " #�Y  d � l     �W�V�U�W  �V  �U  � ��� l      �T���T  �82!@abstructObtain file information including its size.@descriptionDo &quot;info for&quot; command for the item with &quot;size&quot; option. The result is cached and same value is returned at next calling info_with_size() or ((<info>))().@result file infomation(record) : a result of info for command.   � ���d ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   i n c l u d i n g   i t s   s i z e .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m   w i t h   & q u o t ; s i z e & q u o t ;   o p t i o n .    T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o _ w i t h _ s i z e ( )   o r   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   � ���� I      �S�R�Q�S 0 info_with_size  �R  �Q  � k     C�� ��� Z     =����P� =    ��� n    ��� o    �O�O 0 _inforecord _infoRecord�  f     � m    �N
�N 
msng� k    �� ��� I    �M�L�K�M !0 check_existance_raising_error  �L  �K  � ��J� r    ��� I   �I��
�I .sysonfo4asfe        file� I    �H�G�F�H 0 as_furl  �G  �F  � �E��D
�E 
ptsz� m    �C
�C boovtrue�D  � n     ��� o    �B�B 0 _inforecord _infoRecord�  f    �J  � ��� =    '��� n     %��� 1   # %�A
�A 
ptsz� n    #��� o   ! #�@�@ 0 _inforecord _infoRecord�  f     !� m   % &�?
�? 
msng� ��>� r   * 9��� I  * 5�=��
�= .sysonfo4asfe        file� I   * /�<�;�:�< 0 as_furl  �;  �:  � �9��8
�9 
ptsz� m   0 1�7
�7 boovtrue�8  � n     ��� o   6 8�6�6 0 _inforecord _infoRecord�  f   5 6�>  �P  � ��5� L   > C�� n  > B��� o   ? A�4�4 0 _inforecord _infoRecord�  f   > ?�5  � ��� l     �3�2�1�3  �2  �1  � ��� l      �0���0  � � �!@abstructObtain file information again.@descriptionDo "info for" command for the item and reset the cache of ((<info>))().@result file infomation(record) : a result of info for command.   � ���~ ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   a g a i n .  @ d e s c r i p t i o n  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   � ���� I      �/�.�-�/ 0 re_info  �.  �-  � k     ;�� ��� Z     5���,�� F     ��� l    ��+�*� >    ��� n    ��� o    �)�) 0 _inforecord _infoRecord�  f     � m    �(
�( 
msng�+  �*  � l 	  ��'�&� l   ��%�$� >   ��� n    ��� 1    �#
�# 
ptsz� n   ��� o   	 �"�" 0 _inforecord _infoRecord�  f    	� m    �!
�! 
msng�%  �$  �'  �&  � r    #��� I   � ��
�  .sysonfo4asfe        file� I    ���� 0 as_furl  �  �  � ���
� 
ptsz� m    �
� boovtrue�  � n     ��� o     "�� 0 _inforecord _infoRecord�  f     �,  � r   & 5��� I  & 1���
� .sysonfo4asfe        file� I   & +���� 0 as_furl  �  �  � ���
� 
ptsz� m   , -�
� boovfals�  � n     ��� o   2 4�� 0 _inforecord _infoRecord�  f   1 2� ��� L   6 ;�� n  6 :��� o   7 9�� 0 _inforecord _infoRecord�  f   6 7�  � ��� l     ����  �  �  � ��� l      ����  � % !@group Obtain Path Infomation    � ��� > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  � ��� l     �
�	��
  �	  �  � ��� l      ����  � W Q!@abstruct Obtain the name of the item referenced by the instance @result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e    @ r e s u l t   t e x t � ��� i   � ���� I      ���� 0 	item_name  �  �  � L     �� n    ��� n   ��� I    ���� 0 	item_name  �  �  � o    � �  0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      �� ��    � �!@abstruct Obtain the base name (a name which does not include path extension) of the item referenced by the instance.@result text    �
 ! @ a b s t r u c t    O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t �  i   � � I      �������� 0 basename  ��  ��   L      n    	 n   

 I    �������� 0 basename  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo	  f       l     ��������  ��  ��    l      ����   � �!@abstruct Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.@result text    �� ! @ a b s t r u c t    O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t   i   � � I      �������� 0 path_extension  ��  ��   L      n     n    I    �������� 0 path_extension  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f       l     ��������  ��  ��    l      �� !��    ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text   ! �"" � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t  #$# i   � �%&% I      �������� 0 volume_name  ��  ��  & L     '' n    ()( n   *+* I    �������� 0 volume_name  ��  ��  + o    ���� 0 	_pathinfo 	_pathInfo)  f     $ ,-, l     ��������  ��  ��  - ./. l      ��01��  0 $ !@group Working with a Bundle    1 �22 < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e  / 343 l     ��������  ��  ��  4 565 l      ��78��  7 � �!@abstructObtain an item which is in the bundle resource folder.@descriptionThis method can be call to a bundle.@param resource_name (text) : a resource name@result script object : a XFile instance   8 �99� ! @ a b s t r u c t  O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r .  @ d e s c r i p t i o n  T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e .  @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 6 :;: i   � �<=< I      ��>���� 0 bundle_resource  > ?��? o      ���� 0 resource_name  ��  ��  = L     @@ I     ��A���� 0 	make_with  A B��B I   ��CD
�� .sysorpthalis        TEXTC o    ���� 0 resource_name  D ��E��
�� 
in BE l   F����F I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��  ; GHG l     ��������  ��  ��  H IJI l      ��KL��  K j d!@abstructObtain a reference to Info.plist of the bundle.@result script object : a XFile instance   L �MM � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e J NON i   � �PQP I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  Q L     RR I     ��S���� 0 child_posix  S T��T m    UU �VV & C o n t e n t s / I n f o . p l i s t��  ��  O WXW l     ��������  ��  ��  X YZY i   � �[\[ I      �������� 0 bundle_resources_folder  ��  ��  \ L     ]] I     ��^���� 0 child_posix  ^ _��_ m    `` �aa & C o n t e n t s / R e s o u r c e s /��  ��  Z bcb l     ��������  ��  ��  c ded l      ��fg��  f ! !@group File Manipulations    g �hh 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  e iji l     ��������  ��  ��  j klk l      ��mn��  m/)!@abstructCheck whether the item referenced by the instance exists or not.@descriptionA file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.@result boolean : true if the item exists.   n �ooR ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . l pqp i   � �rsr I      �������� 0 item_exists  ��  ��  s L     tt n    uvu n   wxw I    �������� 0 item_exists  ��  ��  x o    ���� 0 	_pathinfo 	_pathInfov  f     q yzy l     ��������  ��  ��  z {|{ l      ��}~��  } � �!@abstructCheck whether the item referenced by the instance exists or not.@descriptionThe internal file reference will not be changed unlike ((<item_exists>)).@result boolean : true if the item exists.   ~ �� ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . | ��� i   � ���� I      �������� 0 item_exists_without_update  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstructSynonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.@result boolean : true if the item exists.   � ���* ! @ a b s t r u c t  S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . � ��� i   � ���� I     ������
�� .coredoexbool       obj ��  ��  � L     �� I     �������� 0 item_exists  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � l f!@abstructRename an item which referenced by the XFile instance.@result boolean : true if succeded.   � ��� � ! @ a b s t r u c t  R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e d e d . � ��� i   � ���� I      ������� 0 	rename_to  � ���� o      ���� 0 new_name  ��  ��  � k     C�� ��� r     
��� n    ��� n   ��� I    ������� 0 change_name  � ���� o    ���� 0 new_name  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � o      ���� 0 dest  � ��� O    ,��� r    +��� n   )��� I    )������� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_� ��� l   ���~� n   ��� n   ��� I    �}�|�{�} 0 
posix_path  �|  �{  � o    �z�z 0 	_pathinfo 	_pathInfo�  f    �  �~  � ��� l   $��y�x� n   $��� I     $�w�v�u�w 0 
posix_path  �v  �u  � o     �t�t 0 dest  �y  �x  � ��s� l  $ %��r�q� m   $ %�p
�p 
msng�r  �q  �s  ��  �  g    � o      �o�o 0 a_result  � n   ��� I    �n�m�l�n  0 defaultmanager defaultManager�m  �l  � o    �k�k 0 nsfilemanager NSFileManager� ��� l  - -�j�i�h�j  �i  �h  � ��� Z   - @���g�f� o   - .�e�e 0 a_result  � k   1 <�� ��� r   1 6��� m   1 2�d
�d 
msng� n     ��� o   3 5�c�c 0 _inforecord _infoRecord�  f   2 3� ��b� r   7 <��� o   7 8�a�a 0 dest  � n     ��� o   9 ;�`�` 0 	_pathinfo 	_pathInfo�  f   8 9�b  �g  �f  � ��_� L   A C�� o   A B�^�^ 0 a_result  �_  � ��� l     �]�\�[�]  �\  �[  � ��� l      �Z���Z  �*$!@abstruct Copy the item to specified location@descriptionSame name item in the destination is replaced.@param a_destination (script object or text) : a XFile instance referencing the copy destination or a relative path.@result script object : a XFile instance referencing copied item.   � ���H ! @ a b s t r u c t    C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n  @ d e s c r i p t i o n  S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :    a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �Y��X�Y 0 copy_to  � ��W� o      �V�V 0 a_destination  �W  �X  � L     �� I     �U��T�U 0 copy_with_opts  � ��� o    �S�S 0 a_destination  � ��R� m    �Q
�Q 
msng�R  �T  � ��� l     �P�O�N�P  �O  �N  � ��� l      �M���M  �71!
@abstruct Copy the item to specified location with options.@descriptionBy passing options (a value of a record) as a second parameter, you can change the behavior of copying.
The format of the option record is {with_replaceing : boolean, with_admin:boolean, with_replacing: boolean}. 
You can ommit labels you don't required.
* with_replacing : Copying with replacing the destination. The default is true.
* with_admin : Copying with administrator privileges. The default is false.
* with_removing : Copying after removing the destination. The default is false.@param a_destination (script object) : a XFile instance referencing the copy destination or a relative path.
@param opts ( record): a XFile instance referencing the copy destination.@result script object : a XFile instance referencing copied item.   � ���b ! 
 @ a b s t r u c t    C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n   w i t h   o p t i o n s .  @ d e s c r i p t i o n  B y   p a s s i n g   o p t i o n s   ( a   v a l u e   o f   a   r e c o r d )   a s   a   s e c o n d   p a r a m e t e r ,   y o u   c a n   c h a n g e   t h e   b e h a v i o r   o f   c o p y i n g . 
 T h e   f o r m a t   o f   t h e   o p t i o n   r e c o r d   i s   { w i t h _ r e p l a c e i n g   :   b o o l e a n ,   w i t h _ a d m i n : b o o l e a n ,   w i t h _ r e p l a c i n g :   b o o l e a n } .   
 Y o u   c a n   o m m i t   l a b e l s   y o u   d o n ' t   r e q u i r e d . 
 *   w i t h _ r e p l a c i n g   :   C o p y i n g   w i t h   r e p l a c i n g   t h e   d e s t i n a t i o n .   T h e   d e f a u l t   i s   t r u e . 
 *   w i t h _ a d m i n   :   C o p y i n g   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s .   T h e   d e f a u l t   i s   f a l s e . 
 *   w i t h _ r e m o v i n g   :   C o p y i n g   a f t e r   r e m o v i n g   t h e   d e s t i n a t i o n .   T h e   d e f a u l t   i s   f a l s e .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  
 @ p a r a m   o p t s   (   r e c o r d ) :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �L��K�L 0 copy_with_opts  � ��� o      �J�J 0 a_destination  � ��I� o      �H�H 0 opts  �I  �K  � k    8�� ��� l     �G���G  � \ V cp : if source and destination are folders and the path of the source ends with "/",    � �   �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  �  l     �F�F   ^ X         cp command contents of the source copy under the destination folder like ditto.    � �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .  l     �E	�E   U O        The endding "/" of the source path should be removed for stable result.   	 �

 �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .  l     �D�D   5 /        Is the support  of ditto not required ?    � ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?  r      m     �C
�C boovtrue o      �B�B 0 w_replacing    r     m    �A
�A boovfals o      �@�@ 0 w_admin    r     m    	�?
�? boovfals o      �>�> 0 
w_removing    l     r    !"! m    ## �$$  c p" o      �=�= 0 command     or "ditto"     �%%    o r   " d i t t o " &'& l   �<�;�:�<  �;  �:  ' ()( Z    l*+�9�8* =   ,-, n    ./. m    �7
�7 
pcls/ o    �6�6 0 opts  - m    �5
�5 
reco+ k    h00 121 Q    )34�43 r     565 n    787 o    �3�3 0 with_replacing  8 o    �2�2 0 opts  6 o      �1�1 0 w_replacing  4 R      �0�/�.
�0 .ascrerr ****      � ****�/  �.  �4  2 9:9 Q   * ;;<�-; r   - 2=>= n   - 0?@? o   . 0�,�, 0 
with_admin  @ o   - .�+�+ 0 opts  > o      �*�* 0 w_admin  < R      �)�(�'
�) .ascrerr ****      � ****�(  �'  �-  : ABA Q   < MCD�&C r   ? DEFE n   ? BGHG o   @ B�%�% 0 with_removing  H o   ? @�$�$ 0 opts  F o      �#�# 0 
w_removing  D R      �"�!� 
�" .ascrerr ****      � ****�!  �   �&  B I�I Q   N hJK�J Z   Q _LM��L n   Q UNON o   R T�� 	0 ditto  O o   Q R�� 0 opts  M r   X [PQP m   X YRR �SS 
 d i t t oQ o      �� 0 command  �  �  K R      ���
� .ascrerr ****      � ****�  �  �  �  �9  �8  ) TUT l  m m����  �  �  U VWV Z   m �XY��X E  m vZ[Z J   m r\\ ]^] m   m n�
� 
ctxt^ _`_ m   n o�
� 
utxt` a�a m   o p�
� 
TEXT�  [ n   r ubcb m   s u�
� 
pclsc o   r s�� 0 a_destination  Y r   y �ded n  y �fgf I   ~ ��
h�	�
 	0 child  h i�i o   ~ �� 0 a_destination  �  �	  g I   y ~���� 0 parent_folder  �  �  e o      �� 0 a_destination  �  �  W jkj l  � ���� �  �  �   k lml Z   � �nop��n =  � �qrq o   � ����� 0 command  r m   � �ss �tt  c po k   � �uu vwv r   � �xyx m   � �zz �{{  - R py o      ���� 0 com_opts  w |��| Z   � �}~����} o   � ����� 0 w_replacing  ~ r   � �� b   � ���� o   � ����� 0 com_opts  � m   � ��� ���  f� o      ���� 0 com_opts  ��  ��  ��  p ��� =  � ���� o   � ����� 0 command  � m   � ��� ��� 
 d i t t o� ���� r   � ���� m   � ��� ���  - - r s r c� o      ���� 0 com_opts  ��  ��  m ��� r   � ���� m   � ���
�� boovfals� o      ���� 0 is_folder_to  � ��� Z   � �������� n  � ���� I   � ��������� 0 item_exists  ��  ��  � o   � ����� 0 a_destination  � Z   � ������� l  � ������� o   � ����� 0 
w_removing  ��  ��  � n  � ���� I   � ��������� 
0 remove  ��  ��  � o   � ����� 0 a_destination  ��  � Z   � �������� =  � ���� o   � ����� 0 command  � m   � ��� ���  c p� r   � ���� n  � ���� I   � ��������� 0 	is_folder  ��  ��  � o   � ����� 0 a_destination  � o      ���� 0 is_folder_to  ��  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� r   � ���� n   � ���� 1   � ���
�� 
strq� n  � ���� I   � ��������� 0 normalized_posix_path  ��  ��  � o   � ����� 0 a_destination  � o      ���� 0 destination_path  � ��� r   ���� n   � ���� 1   � ���
�� 
strq� I   � ��������� 0 normalized_posix_path  ��  ��  � o      ���� 0 source_path  � ��� r  ��� b  ��� b  ��� b  ��� b  ��� b  	��� b  ��� o  ���� 0 command  � 1  ��
�� 
spac� o  ���� 0 com_opts  � 1  	��
�� 
spac� o  ���� 0 source_path  � 1  ��
�� 
spac� o  ���� 0 destination_path  � o      ���� 0 	a_command  � ��� I !����
�� .sysoexecTEXT���     TEXT� o  ���� 0 	a_command  � �����
�� 
badm� o  ���� 0 w_admin  ��  � ��� Z  "5������� o  "#���� 0 is_folder_to  � L  &1�� n &0��� I  '0������� 	0 child  � ���� I  ',�������� 0 	item_name  ��  ��  ��  ��  � o  &'���� 0 a_destination  ��  ��  � ���� L  68�� o  67���� 0 a_destination  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 finder_copy_to  � ��� o      ���� 0 a_destination  � ���� o      ���� 0 with_replacing  ��  ��  � k     *�� ��� r     ��� n    ��� I    �������� 0 as_alias  ��  ��  � o     ���� 0 a_destination  � o      ���� 0 destination  � ��� r    ��� I    �������� 0 as_alias  ��  ��  � o      ���� 0 source_alias  � ��� O    "��� r    !��� c    ��� l   ������ I   ����
�� .coreclon****      � ****� o    ���� 0 source_alias  � ����
�� 
insh� o    ���� 0 destination  � �����
�� 
alrp� o    ���� 0 with_replacing  ��  ��  ��  � m    ��
�� 
alis� o      ���� 0 new_item  � m    ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� L   # *�� I   # )�� ���� 0 	make_with    �� o   $ %���� 0 new_item  ��  ��  ��  �  l     ��������  ��  ��    i   � � I      ������ 
0 my_log   	��	 o      ���� 
0 a_text  ��  ��   l    


 O    
 I   	����
�� .ascrcmnt****      � **** o    ���� 
0 a_text  ��   1     ��
�� 
ascr E ? use this for debuggingm, because the log command is overrided.    � ~   u s e   t h i s   f o r   d e b u g g i n g m ,   b e c a u s e   t h e   l o g   c o m m a n d   i s   o v e r r i d e d .  l     ��������  ��  ��    l      ����  ("!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, moving an item will fail.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.    �D ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   m o v i n g   a n   i t e m   w i l l   f a i l .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s .   i   � � I      ������ 0 move_to   �� o      ���� 0 a_destination  ��  ��   k     c   l    !"#! I     ����~�� 0 item_exists  �  �~  " G A even if the item exists, broken symbolic file will return false.   # �$$ �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .  %&% l   �}�|�{�}  �|  �{  & '(' Z    +)*�z�y) n   +,+ I    �x�w�v�x 0 item_exists  �w  �v  , o    �u�u 0 a_destination  * Z    '-.�t/- n   010 I    �s�r�q�s 0 	is_folder  �r  �q  1 o    �p�p 0 a_destination  . r    "232 n    454 I     �o6�n�o 	0 child  6 7�m7 I    �l�k�j�l 0 	item_name  �k  �j  �m  �n  5 o    �i�i 0 a_destination  3 o      �h�h 0 a_destination  �t  / L   % '88 m   % &�g
�g boovfals�z  �y  ( 9:9 l  , ,�f�e�d�f  �e  �d  : ;<; O   , M=>= r   8 L?@? n  8 JABA I   9 J�cC�b�c <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_C DED l  9 @F�a�`F n  9 @GHG n  : @IJI I   < @�_�^�]�_ 0 
posix_path  �^  �]  J o   : <�\�\ 0 	_pathinfo 	_pathInfoH  f   9 :�a  �`  E KLK l  @ EM�[�ZM n  @ ENON I   A E�Y�X�W�Y 0 
posix_path  �X  �W  O o   @ A�V�V 0 a_destination  �[  �Z  L P�UP l  E FQ�T�SQ m   E F�R
�R 
msng�T  �S  �U  �b  B  g   8 9@ o      �Q�Q 0 a_result  > n  , 5RSR I   1 5�P�O�N�P  0 defaultmanager defaultManager�O  �N  S o   , 1�M�M 0 nsfilemanager NSFileManager< TUT Z   N `VW�L�KV o   N O�J�J 0 a_result  W I   R \�IX�H�I 0 
change_ref  X Y�GY n  S XZ[Z I   T X�F�E�D�F 0 item_ref  �E  �D  [ o   S T�C�C 0 a_destination  �G  �H  �L  �K  U \�B\ L   a c]] o   a b�A�A 0 a_result  �B   ^_^ l     �@�?�>�@  �?  �>  _ `a` l      �=bc�=  b>8!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, the item will be replaced with the target item.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.   c �ddp ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . a efe i   � �ghg I      �<i�;�< 0 move_with_replacing  i j�:j o      �9�9 0 a_destination  �:  �;  h k     <kk lml l    nopn I     �8�7�6�8 0 item_exists  �7  �6  o G A even if the item exists, broken symbolic file will return false.   p �qq �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .m rsr r    tut n   vwv I    �5�4�3�5 0 quoted_path  �4  �3  w o    �2�2 0 a_destination  u o      �1�1 0 destination_path  s xyx r    z{z I    �0�/�.�0 0 quoted_path  �/  �.  { o      �-�- 0 source_path  y |}| Q    9~�~ I   $�,��+
�, .sysoexecTEXT���     TEXT� b     ��� b    ��� b    ��� m    �� ���  m v   - f  � o    �*�* 0 source_path  � 1    �)
�) 
spac� o    �(�( 0 destination_path  �+   R      �'��&
�' .ascrerr ****      � ****� o      �%�% 0 msg  �&  � k   , 9�� ��� O  , 6��� I  0 5�$��#
�$ .ascrcmnt****      � ****� o   0 1�"�" 0 msg  �#  � 1   , -�!
�! 
ascr� �� � L   7 9�� m   7 8�
� boovfals�   } ��� L   : <�� m   : ;�
� boovtrue�  f ��� l     ����  �  �  � ��� l      ����  �!@abstructResolving original item of a alias file.@descriptionIf the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.@result script object or missing value   � ���
 ! @ a b s t r u c t  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  @ d e s c r i p t i o n  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e � ��� i   � ���� I      ���� 0 resolve_alias  �  �  � k     ^�� ��� Z     #����� I     ���� 0 
is_symlink  �  �  � k    �� ��� r    ��� I    ���� 0 	deep_copy  �  �  � o      �� 0 
x_original  � ��� Z    ����� n   ��� I    �
�	��
 0 item_exists  �	  �  � o    �� 0 
x_original  � L    �� o    �� 0 
x_original  �  � L    �� m    �
� 
msng�  �  �  � ��� l  $ $����  �  �  � ��� r   $ +��� I   $ )�� ��� 0 info  �   ��  � o      ���� 0 info_rec  � ���� Z   , ^������ n   , 0��� m   - /��
�� 
alis� o   , -���� 0 info_rec  � k   3 X�� ��� Q   3 P���� O   6 F��� r   : E��� c   : C��� l  : A������ n   : A��� 1   ? A��
�� 
orig� l  : ?������ n  : ?��� I   ; ?�������� 0 as_alias  ��  ��  �  f   : ;��  ��  ��  ��  � m   A B��
�� 
alis� o      ���� 0 original_item  � m   6 7���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 
0 errmsg  ��  � L   N P�� m   N O��
�� 
msng� ���� L   Q X�� I   Q W������� 0 	make_with  � ���� o   R S���� 0 original_item  ��  ��  ��  ��  � L   [ ^�� N   [ ]��  f   [ \��  � ��� l     ��������  ��  ��  � ��� l      ������  � ! !@abstructPut into trash.   � ��� 6 ! @ a b s t r u c t  P u t   i n t o   t r a s h . � ��� i   � ���� I      �������� 0 
into_trash  ��  ��  � k     ,�� ��� O     ��� n   ��� I    ������� @0 recycleurls_completionhandler_ recycleURLs_completionHandler_� ��� l   ������ n   ��� n   ��� I    �������� 0 as_nsurl as_NSURL��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  � ���� l   ������ m    ��
�� 
msng��  ��  ��  ��  �  g    � n    	��� I    	�������� "0 sharedworkspace sharedWorkspace��  ��  � o     ���� 0 nsworkspace NSWorkspace� ���� I    ,������� 0 change_pathinfo  � ���� n   (��� n   (��� I    (������� 0 change_folder  � ���� I   $�� ��
�� .earsffdralis        afdr  m     ��
�� afdmtrsh��  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  ��  �  l     ��������  ��  ��    l      ����   X R!@abstructRemove the item referd from the target XFile instance.@result boolean    � � ! @ a b s t r u c t  R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e .  @ r e s u l t   b o o l e a n  	 i   � �

 I      �������� 
0 remove  ��  ��   k     =  r     	 n     n    I    �������� 0 as_text  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f      o      ���� 
0 a_path    O   
 $ r    # n   ! I    !������ 20 removeitematpath_error_ removeItemAtPath_error_  n    !  I    �������� 0 
posix_path  ��  ��  !  f     "��" l   #����# m    ��
�� 
msng��  ��  ��  ��    g     o      ���� 0 a_result   n  
 $%$ I    ��������  0 defaultmanager defaultManager��  ��  % o   
 ���� 0 nsfilemanager NSFileManager &'& Z   % :()����( o   % &���� 0 a_result  ) k   ) 6** +,+ r   ) 0-.- o   ) *���� 
0 a_path  . n     /0/ n  + /121 o   - /���� 0 	_item_ref  2 o   + -���� 0 	_pathinfo 	_pathInfo0  f   * +, 3��3 r   1 6454 m   1 2��
�� 
msng5 n     676 o   3 5���� 0 _inforecord _infoRecord7  f   2 3��  ��  ��  ' 8��8 L   ; =99 o   ; <���� 0 a_result  ��  	 :;: l     ��������  ��  ��  ; <=< l      ��>?��  >   !@group Making subfolders    ? �@@ 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  = ABA l     ��������  ��  ��  B CDC l      ��EF��  E � �!@abstructMake a sub folder.@descriptionmissing value will be returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.@result script object or missing value : a XFile instance of newly created folder.   F �GG� ! @ a b s t r u c t  M a k e   a   s u b   f o l d e r .  @ d e s c r i p t i o n  m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . D HIH i   � �JKJ I      ��L���� 0 make_folder  L M��M o      ���� 0 folder_name  ��  ��  K k     !NN OPO Z     QR����Q H     SS l    T����T I     �������� 0 item_exists  ��  ��  ��  ��  R L   	 UU m   	 
��
�� 
msng��  ��  P VWV l   ��������  ��  ��  W XYX r    Z[Z I    ��\���� 	0 child  \ ]��] o    ���� 0 folder_name  ��  ��  [ o      ���� 0 
new_folder  Y ^��^ L    !__ n    `a` I     ��b���� 0 	make_path  b c��c J    ��  ��  ��  a o    �~�~ 0 
new_folder  ��  I ded l     �}�|�{�}  �|  �{  e fgf l      �zhi�z  h��!@abstructMake folders which indicating the path of the XFile instance.@descriptionUsing a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.@result script object or missing value : a XFile instance of newly created folder.   i �jj ! @ a b s t r u c t  M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e .  @ d e s c r i p t i o n  U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . g klk i   � �mnm I      �yo�x�y 0 	make_path  o p�wp o      �v�v 0 opts  �w  �x  n k     Rqq rsr r     tut m     �u
�u boovfalsu o      �t�t 0 w_admin  s vwv Z    xy�s�rx =   	z{z n    |}| m    �q
�q 
pcls} o    �p�p 0 opts  { m    �o
�o 
recoy r    ~~ n    ��� o    �n�n 0 
with_admin  � o    �m�m 0 opts   o      �l�l 0 w_admin  �s  �r  w ��� Z    0���k�j� I    �i�h�g�i 0 item_exists  �h  �g  � Z    ,���f�� I    #�e�d�c�e 0 	is_folder  �d  �c  � L   & (��  f   & '�f  � m   + ,�b
�b 
msng�k  �j  � ��� I  1 @�a��
�a .sysoexecTEXT���     TEXT� b   1 :��� m   1 2�� ���  m k d i r   - p  � l  2 9��`�_� n   2 9��� 1   7 9�^
�^ 
strq� I   2 7�]�\�[�] 0 
posix_path  �\  �[  �`  �_  � �Z��Y
�Z 
badm� o   ; <�X�X 0 w_admin  �Y  � ��� Z  A O���W�V� I   A F�U�T�S�U 0 item_exists  �T  �S  � L   I K��  f   I J�W  �V  � ��R� L   P R�� m   P Q�Q
�Q 
msng�R  l ��� l     �P�O�N�P  �O  �N  � ��� l     �M�L�K�M  �L  �K  � ��� l      �J���J  � 0 *!@group Reading and Writing File Contents    � ��� T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  � ��� l     �I�H�G�I  �H  �G  � ��� l      �F���F  � X R!@abstructRead file contents as UTF-8 encoded text.@result Unicode text (UTF-8)   � ��� � ! @ a b s t r u c t  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) � ��� i   � ���� I      �E�D�C�E 0 read_as_utf8  �D  �C  � k     �� ��� I     �B�A�@�B !0 check_existance_raising_error  �A  �@  � ��?� L    �� I   �>��
�> .rdwrread****        ****� l   ��=�<� I    �;�:�9�; 0 as_alias  �:  �9  �=  �<  � �8��7
�8 
as  � m    �6
�6 
utf8�7  �?  � ��� l     �5�4�3�5  �4  �3  � ��� l      �2���2  � u o!@abstructWrite data into the file as UTF-8 encoded text.@param a_data (text) : data to write into the file.   � ��� � ! @ a b s t r u c t  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . � ��� i   ��� I      �1��0�1 0 write_as_utf8  � ��/� o      �.�. 
0 a_data  �/  �0  � k     %�� ��� r     ��� I    �-��
�- .rdwropenshor       file� I     �,�+�*�, 0 as_furl  �+  �*  � �)��(
�) 
perm� m    �'
�' boovtrue�(  � o      �&�& 
0 output  � ��� I   �%��
�% .rdwrseofnull���     ****� o    �$�$ 
0 output  � �#��"
�# 
set2� m    �!�!  �"  � ��� I   � ��
�  .rdwrwritnull���     ****� o    �� 
0 a_data  � ���
� 
refn� o    �� 
0 output  � ���
� 
as  � m    �
� 
utf8�  � ��� I    %���
� .rdwrclosnull���     ****� o     !�� 
0 output  �  �  � ��� l     ����  �  �  � ��� l      ����  � " !@group Parent and Children    � ��� 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  � ��� l     ����  �  �  � ��� l      ����  � � �!@abstructObtain a folder containing the item referenced by the XFile instance.@result script object : a XFile instance of the parent folder.   � ���  ! @ a b s t r u c t  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . � ��� i  ��� I      ���� 0 parent_folder  �  �  � L     �� I     �
��	�
 0 make_with_pathinfo  � ��� n   ��� n   ��� I    ���� 0 parent_folder  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f    �  �	  � ��� l     ����  �  �  � ��� l      � ���   �!@abstructObtain an item in the folder with specifying a sub path from the target.@descriptionIf this methods is sent to non exsisting folder, missing value is returend.@param suppath(text) :a sub path to obtain.@result script object or missing value : a XFile instance   � ���& ! @ a b s t r u c t  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  @ d e s c r i p t i o n  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e � ��� i  � � I      ������ 	0 child   �� o      ���� 0 subpath  ��  ��    Z     �� I     �������� 0 item_exists_without_update  ��  ��   L     I    ������ 0 make_with_pathinfo   �� n  	 	
	 n  
  I    ������ 	0 child   �� o    ���� 0 subpath  ��  ��   o   
 ���� 0 	_pathinfo 	_pathInfo
  f   	 
��  ��  ��   L     m    ��
�� 
msng�  l     ��������  ��  ��    i   I      ������ 0 child_posix   �� o      ���� 0 subpath  ��  ��   Z     "�� I     �������� 0 item_exists  ��  ��   k      r     I    �������� 0 
posix_path  ��  ��   o      ���� 
0 a_path    !  r    "#" b    $%$ o    ���� 
0 a_path  % o    ���� 0 subpath  # o      ���� 
0 a_path  ! &��& L    '' I    ��(���� 0 	make_with  ( )��) o    ���� 
0 a_path  ��  ��  ��  ��   L     "** m     !��
�� 
msng +,+ l     ��������  ��  ��  , -.- l     ��������  ��  ��  . /0/ l      ��12��  1��!@abstructObtain a XFile instance reference unique name item in the folder.@descriptionIf the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.@param a_candidate(text or list) :A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.@result script object : a XFile instance   2 �33T ! @ a b s t r u c t  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  @ d e s c r i p t i o n  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   :  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 0 454 i  676 I      ��8���� 0 unique_child  8 9��9 o      ���� 0 a_candidate  ��  ��  7 k     w:: ;<; Z     =>����= H     ?? I     �������� 0 	is_folder  ��  ��  > L   	 @@ m   	 
��
�� 
msng��  ��  < ABA r    )CDC n   EFE I    ��G���� 0 
split_name  G H��H o    ���� 0 a_candidate  ��  ��  F o    ���� 0 pathinfo PathInfoD J      II JKJ o      ���� 0 
a_basename  K L��L o      ���� 0 a_suffix  ��  B MNM Z   * ;OP��QO =  * -RSR o   * +���� 0 a_suffix  S m   + ,��
�� 
msngP r   0 3TUT m   0 1VV �WW  U o      ���� 0 a_suffix  ��  Q r   6 ;XYX b   6 9Z[Z m   6 7\\ �]]  .[ o   7 8���� 0 a_suffix  Y o      ���� 0 a_suffix  N ^_^ r   < ?`a` m   < =���� a o      ���� 0 i  _ bcb r   @ Cded m   @ Aff �gg  e o      ���� 0 escape_suffix  c hih T   D tjj k   I okk lml r   I Unon I   I S��p���� 	0 child  p q��q b   J Orsr b   J Mtut o   J K���� 0 
a_basename  u o   K L���� 0 escape_suffix  s o   M N���� 0 a_suffix  ��  ��  o o      ���� 0 a_child  m v��v Z   V owx��yw n  V [z{z I   W [�������� 0 item_exists  ��  ��  { o   V W���� 0 a_child  x k   ^ k|| }~} r   ^ e� b   ^ c��� 1   ^ _��
�� 
spac� l  _ b������ c   _ b��� o   _ `���� 0 i  � m   ` a��
�� 
utxt��  ��  � o      ���� 0 escape_suffix  ~ ���� r   f k��� [   f i��� o   f g���� 0 i  � m   g h���� � o      ���� 0 i  ��  ��  y  S   n o��  i ���� L   u w�� o   u v���� 0 a_child  ��  5 ��� l     ��������  ��  ��  � ��� i  ��� I      �������� 0 list_children  ��  ��  � L     
�� I    	�����
�� .earslfdrutxt  @    file� I     �������� 0 as_furl  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �<6!@abstruct
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. Each XFile instance in the target folder is passed to the &quot;do&quot; handler.The do handler must return true or false. When the do handler return false, the process is stoped immediately.@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
   � ���l ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .    E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r .  T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y .  @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
� ��� i  ��� I      ������� 0 each  � ���� o      ���� 0 a_script  ��  ��  � k     @�� ��� r     ��� I     �������� 0 list_children  ��  ��  � o      ���� 
0 a_list  � ��� h    ����� 0 listwrapper ListWrapper� j     ���
�� 
pcnt� o     ���� 
0 a_list  � ��� l   �������  ��  �  � ��~� Y    @��}���|� k    ;�� ��� r    +��� I    )�{��z�{ 	0 child  � ��y� n    %��� 4   " %�x�
�x 
cobj� o   # $�w�w 0 n  � n    "��� 1     "�v
�v 
pcnt� o     �u�u 0 listwrapper ListWrapper�y  �z  � o      �t�t 
0 x_item  � ��s� Z   , ;���r�q� H   , 3�� n  , 2��� I   - 2�p��o�p 0 do  � ��n� o   - .�m�m 
0 x_item  �n  �o  � o   , -�l�l 0 a_script  �  S   6 7�r  �q  �s  �} 0 n  � m    �k�k � I   �j��i
�j .corecnte****       ****� o    �h�h 
0 a_list  �i  �|  �~  � ��� l     �g�f�e�g  �f  �e  � ��� l      �d���d  � * $!@group Working with Shell Commands    � ��� H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  � ��� l     �c�b�a�c  �b  �a  � ��� l      �`���`  �	!@abstruct
Run passed shell command taking the target as an argument.
@description
&quot;%s&quot; in the command will be replaced with the target's path.
@param a_command(text) : shell command including %s.
@result text : standard output of the shell command
   � ��� ! @ a b s t r u c t 
 R u n   p a s s e d   s h e l l   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n 
 & q u o t ; % s & q u o t ;   i n   t h e   c o m m a n d   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t ' s   p a t h . 
 @ p a r a m   a _ c o m m a n d ( t e x t )   :   s h e l l   c o m m a n d   i n c l u d i n g   % s . 
 @ r e s u l t   t e x t   :   s t a n d a r d   o u t p u t   o f   t h e   s h e l l   c o m m a n d 
� ��� i  ��� I      �_��^�_ 0 perform_shell  � ��]� o      �\�\ 0 	a_command  �]  �^  � k     �� ��� r     ��� n    	��� 1    	�[
�[ 
strq� n    ��� 1    �Z
�Z 
strq� I     �Y�X�W�Y 0 normalized_posix_path  �X  �W  � o      �V�V 
0 a_path  � ��U� L    �� I   �T��S
�T .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� b    ��� m    �� ���  e v a l   $ ( p r i n t f  � n   ��� 1    �R
�R 
strq� o    �Q�Q 0 	a_command  � 1    �P
�P 
spac� o    �O�O 
0 a_path  � m    �� ���  )�S  �U  � ��� l     �N�M�L�N  �M  �L  � ��� l      �K���K  � � �!@abstruct
Run test command taking the target as an argument.
@param option(text) : 
An option to passed to the test command. See the man page of the test command.
@result boolean : true if test command successfully exits.
   � ���� ! @ a b s t r u c t 
 R u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ p a r a m   o p t i o n ( t e x t )   :   
 A n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . 
� ��� i   #��� I      �J��I�J 0 
shell_test  �  �H  o      �G�G 
0 option  �H  �I  � k       Q      I   �F�E
�F .sysoexecTEXT���     TEXT b    	 b    

 b     m     � 
 t e s t   o    �D�D 
0 option   1    �C
�C 
spac	 I    �B�A�@�B 0 quoted_path  �A  �@  �E   R      �?�>�=
�? .ascrerr ****      � ****�>  �=   L     m    �<
�< boovfals �; L     m    �:
�: boovtrue�;  �  l     �9�8�7�9  �8  �7    l      �6�6    == private *    �  = =   p r i v a t e   *  l     �5�4�3�5  �4  �3    i  $' I      �2�1�0�2 0 	deep_copy  �1  �0   L        I     �/!�.�/ 0 make_with_pathinfo  ! "�-" n   #$# n   %&% I    �,�+�*�, 	0 clone  �+  �*  & o    �)�) 0 	_pathinfo 	_pathInfo$  f    �-  �.   '(' l     �(�'�&�(  �'  �&  ( )*) i  (++,+ I      �%�$�#�% 0 item_ref  �$  �#  , L     -- n    ./. n   010 I    �"�!� �" 0 item_ref  �!  �   1 o    �� 0 	_pathinfo 	_pathInfo/  f     * 232 l     ����  �  �  3 454 i  ,/676 I      ���� !0 check_existance_raising_error  �  �  7 k     !88 9:9 l     �;<�  ; 4 . my_log("start check_existance_raising_error")   < �== \   m y _ l o g ( " s t a r t   c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r " ): >�> Z     !?@��? H     AA l    B��B n    CDC n   EFE I    ���� 0 item_exists_without_update  �  �  F o    �� 0 	_pathinfo 	_pathInfoD  f     �  �  @ R    �GH
� .ascrerr ****      � ****G b    IJI b    KLK m    MM �NN 
 i t e m  L n    OPO 1    �
� 
strqP l   Q��Q n   RSR n   TUT I    �
�	��
 0 as_text  �	  �  U o    �� 0 	_pathinfo 	_pathInfoS  f    �  �  J m    VV �WW     d o e s   n o t   e x i s t .H �X�
� 
errnX m    ��F�  �  �  �  5 YZY l     ����  �  �  Z [\[ i  03]^] I      � �����  0 update_pathinfo  ��  ��  ^ k     $__ `a` r     bcb n    ded I    ��f���� 0 make_with_opts  f ghg n   iji n   klk I    �������� 0 item_ref  ��  ��  l o    ���� 0 	_pathinfo 	_pathInfoj  f    h m��m K    nn ��o���� 0 prefering_posix  o n   pqp n   rsr I    �������� 0 is_posix  ��  ��  s o    ���� 0 	_pathinfo 	_pathInfoq  f    ��  ��  ��  e o     ���� 0 pathinfo PathInfoc n     tut o    ���� 0 	_pathinfo 	_pathInfou  f    a v��v L    $ww n   #xyx o     "���� 0 	_pathinfo 	_pathInfoy  f     ��  \ z{z l     ��������  ��  ��  { |}| i  47~~ I      ������� 0 change_pathinfo  � ���� o      ���� 0 
a_pathinfo  ��  ��   k     �� ��� r     ��� o     ���� 0 
a_pathinfo  � n     ��� o    ���� 0 	_pathinfo 	_pathInfo�  f    � ��� r    ��� m    ��
�� 
msng� n     ��� o    
���� 0 _inforecord _infoRecord�  f    � ��� r    ��� n   ��� n   ��� I    �������� 0 is_posix  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    � n     ��� o    ���� 0 _prefer_posix  �  f    � ���� L    ��  f    ��  } ��� l     ��������  ��  ��  � ��� i  8;��� I      ������� 0 
change_ref  � ���� o      ���� 0 file_ref  ��  ��  � L     �� I     ������� 0 change_pathinfo  � ���� n   ��� I    ������� 0 	make_with  � ���� o    ���� 0 file_ref  ��  ��  � o    ���� 0 pathinfo PathInfo��  ��  � ��� l     ��������  ��  ��  � ��� i  <?��� I      �������� 0 dump  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 as_text  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ������  � C = -- too much side effecton log	continue log dump()end log   � ��� z   - -   t o o   m u c h   s i d e   e f f e c t  o n   l o g  	 c o n t i n u e   l o g   d u m p ( )  e n d   l o g � ��� l     ��������  ��  ��  � ��� i  @C��� I      �������� 	0 debug  ��  ��  � k     /�� ��� n    	��� I    	������� 	0 setup  � ����  f    ��  ��  � 4     ���
�� 
scpt� m    �� ���  M o d u l e L o a d e r� ��� r   
 ��� c   
 ��� m   
 �� ��� F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d f� m    ��
�� 
psxf� o      ���� 
0 a_path  � ��� r    ��� I    ������� 0 	make_with  � ���� o    ���� 
0 a_path  ��  ��  � o      ���� 0 a_xfile  � ��� l   ������  � K Ereturn a_result's change_path_extension(missing value)'s posix_path()   � ��� � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )� ��� r    %��� n   #��� I    #������� 0 unique_child  � ���� m    �� ��� : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f��  ��  � n   ��� I    �������� 0 parent_folder  ��  ��  � o    ���� 0 a_xfile  � o      ���� 0 new_named_file  � ���� I  & /�����
�� .ascrcmnt****      � ****� n  & +��� I   ' +�������� 0 	item_name  ��  ��  � o   & '���� 0 new_named_file  ��  ��  � ��� l     ��������  ��  ��  � ��� i  DG��� I      �������� 0 open_helpbook  ��  ��  � Q     ,���� O   ��� I   
 ������� 0 do  � ���� I   �����
�� .earsffdralis        afdr�  f    ��  ��  ��  � 4    ���
�� 
scpt� m    �� ���  O p e n H e l p B o o k� R      ��	 	
�� .ascrerr ****      � ****	  o      ���� 0 msg  	 ��	��
�� 
errn	 o      ���� 	0 errno  ��  � k    ,		 			 I   "������
�� .miscactvnull��� ��� null��  ��  	 	��	 I  # ,��	��
�� .sysodisAaleR        TEXT	 l  # (	����	 b   # (			
		 b   # &			 o   # $���� 0 msg  	 o   $ %��
�� 
ret 	
 o   & '���� 	0 errno  ��  ��  ��  ��  � 			 l     �������  ��  �  	 			 i  HK			 I     �~�}�|
�~ .aevtoappnull  �   � ****�}  �|  	 k     		 			 l     �{		�{  	  return debug()   	 �		  r e t u r n   d e b u g ( )	 	�z	 I     �y�x�w�y 0 open_helpbook  �x  �w  �z  	 	�v	 l     �u�t�s�u  �t  �s  �v       H�r					 0�q	 	!	"	#	$	%	&	'	(	)	*	+	,	-	.	/	0	1	2	3	4	5	6	7	8	9	:	;	<	=	>	?	@	A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z	[	\	]	^	_�r  	 F�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+
�p 
pimr�o 0 pathinfo PathInfo�n 0 nsworkspace NSWorkspace�m 0 nsfilemanager NSFileManager
�l 
pnam�k 0 _prefer_posix  �j 0 prefer_posix  �i 0 	make_with  �h 0 make_with_pathinfo  �g 0 change_name  �f 0 change_folder  �e 0 change_path_extension  �d 0 as_alias  �c 0 as_furl  �b 0 hfs_path  �a 0 
posix_path  �` 0 normalized_posix_path  �_ 0 quoted_path  �^ 0 type_identifier  �] 0 	is_folder  �\ 0 
is_package  �[ 0 is_alias  �Z 0 
is_symlink  �Y 0 
is_visible  �X 0 	set_types  �W 0 info  �V 0 info_with_size  �U 0 re_info  �T 0 	item_name  �S 0 basename  �R 0 path_extension  �Q 0 volume_name  �P 0 bundle_resource  �O $0 bundle_infoplist bundle_InfoPlist�N 0 bundle_resources_folder  �M 0 item_exists  �L 0 item_exists_without_update  
�K .coredoexbool       obj �J 0 	rename_to  �I 0 copy_to  �H 0 copy_with_opts  �G 0 finder_copy_to  �F 
0 my_log  �E 0 move_to  �D 0 move_with_replacing  �C 0 resolve_alias  �B 0 
into_trash  �A 
0 remove  �@ 0 make_folder  �? 0 	make_path  �> 0 read_as_utf8  �= 0 write_as_utf8  �< 0 parent_folder  �; 	0 child  �: 0 child_posix  �9 0 unique_child  �8 0 list_children  �7 0 each  �6 0 perform_shell  �5 0 
shell_test  �4 0 	deep_copy  �3 0 item_ref  �2 !0 check_existance_raising_error  �1 0 update_pathinfo  �0 0 change_pathinfo  �/ 0 
change_ref  �. 0 dump  �- 	0 debug  �, 0 open_helpbook  
�+ .aevtoappnull  �   � ****	 �*	`�* 	`  	a	b	c	d	a �)	e�(
�) 
cobj	e 	f	f   �' 
�' 
scpt�(  	b �&	g�%
�& 
cobj	g 	h	h   �$
�$ 
osax�%  	c �#	i�"
�# 
cobj	i 	j	j   �! 
�! 
frmk�"  	d � 	k�
�  
cobj	k 	l	l   � 
� 
frmk�  	 	m	m   � 
� 
scpt	 	n	n ��	o
� misccura
� 
pcls	o �	p	p  N S W o r k s p a c e	 	q	q ��	r
� misccura
� 
pcls	r �	s	s  N S F i l e M a n a g e r
�q boovtrue	  � C��	t	u�� 0 prefer_posix  � �	v� 	v  �� 0 bool  �  	t �� 0 bool  	u �� 0 _prefer_posix  � �)�,F	! � [��	w	x�� 0 	make_with  � �	y� 	y  �� 0 file_ref  �  	w �
�	��
 0 file_ref  �	 
0 is_hfs  � 0 	path_info  	x 	���� w���� 
� 
ctxt
� 
utxt
� 
TEXT
� 
pcls� 0 make_with_hfs  � 0 _prefer_posix  � 0 make_with_posix  �  0 make_with_pathinfo  � YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ 	" �� �����	z	{���� 0 make_with_pathinfo  �� ��	|�� 	|  ���� 0 	path_info  ��  	z �������� 0 	path_info  �� 0 a_parent  �� 0 xfile XFile	{ �� �	}�� 0 xfile XFile	} ��	~����		���
�� .ascrinit****      � ****	~ k     	�	�  �	�	�  �	�	�  �	�	�  �����  ��  ��  	 ��������
�� 
pare�� 0 	_pathinfo 	_pathInfo�� 0 _inforecord _infoRecord�� 0 _prefer_posix  	� ������������
�� 
pare�� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� b  N  Ob   �O�Ob   j+ ��� )E�O��K S�O�	# �� �����	�	����� 0 change_name  �� ��	��� 	�  ���� 
0 a_name  ��  	� ������ 
0 a_name  �� 0 	path_info  	� �������� 0 	_pathinfo 	_pathInfo�� 0 change_name  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ 	$ �� �����	�	����� 0 change_folder  �� ��	��� 	�  ���� 0 
folder_ref  ��  	� ������ 0 
folder_ref  �� 0 	path_info  	� �������� 0 	_pathinfo 	_pathInfo�� 0 change_folder  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ 	% ������	�	����� 0 change_path_extension  �� ��	��� 	�  ���� 0 a_suffix  ��  	� ���� 0 a_suffix  	� �������� 0 	_pathinfo 	_pathInfo�� 0 change_path_extension  �� 0 make_with_pathinfo  �� *)�,�k+ k+ 	& ��)����	�	����� 0 as_alias  ��  ��  	�  	� �������� !0 check_existance_raising_error  �� 0 	_pathinfo 	_pathInfo�� 0 as_alias  �� *j+  O)�,j+ 	' ��=����	�	����� 0 as_furl  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 as_furl  �� 	)�,j+ 	( ��M����	�	����� 0 hfs_path  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 hfs_path  �� 	)�,j+ 	) ��]����	�	����� 0 
posix_path  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 
posix_path  �� 	)�,j+ 	* ��m����	�	����� 0 normalized_posix_path  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 normalized_posix_path  �� 	)�,j+ 	+ ��x����	�	����� 0 quoted_path  ��  ��  	�  	� �������� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
strq�� )�,j+ �,E	, �������	�	����� 0 type_identifier  ��  ��  	�  	� ������������ "0 sharedworkspace sharedWorkspace�� 0 
posix_path  
�� 
msng�� &0 typeoffile_error_ typeOfFile_error_
�� 
ctxt�� b  j+   *)j+ �l+ �&U	- �������	�	����� 0 	is_folder  ��  ��  	� ������ 
0 my_uti  �� 0 a_result  	� ���������� 0 type_identifier  �� "0 sharedworkspace sharedWorkspace�� ,0 type_conformstotype_ type_conformsToType_�� 0*j+  E�Ob  j+  ��  eE�Y *��l+ E�UO�OP	. �������	�	����� 0 
is_package  ��  ��  	�  	� �������� "0 sharedworkspace sharedWorkspace�� 0 
posix_path  �� ,0 isfilepackageatpath_ isFilePackageAtPath_�� b  j+   *)j+ k+ OPU	/ �������	�	����� 0 is_alias  ��  ��  	�  	� ���� 0 type_identifier  �� 	�*j+  	0 ������	�	���� 0 
is_symlink  ��  ��  	�  	� �~�~ 0 type_identifier  � 	�*j+  	1 �}�|�{	�	��z�} 0 
is_visible  �|  �{  	� �y�y 0 info_rec  	� �x�w�x 0 info  
�w 
pvis�z *j+  E�O��,E	2 �v2�u�t	�	��s�v 0 	set_types  �u �r	��r 	�  �q�p�q 0 creator_code  �p 0 	type_code  �t  	� �o�n�m�o 0 creator_code  �n 0 	type_code  �m 
0 a_file  	� �l�kV�j�i�h�g�l 0 	is_folder  �k 0 as_alias  
�j 
fcrt
�i 
asty
�h 
msng�g 0 _inforecord _infoRecord�s ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h	3 �ff�e�d	�	��c�f 0 info  �e  �d  	�  	� �b�a�`�_�^�]�b 0 _inforecord _infoRecord
�a 
msng�` !0 check_existance_raising_error  �_ 0 as_furl  
�^ 
ptsz
�] .sysonfo4asfe        file�c ()�,�  *j+ O*j+ �fl )�,FY hO)�,E	4 �\��[�Z	�	��Y�\ 0 info_with_size  �[  �Z  	�  	� �X�W�V�U�T�S�X 0 _inforecord _infoRecord
�W 
msng�V !0 check_existance_raising_error  �U 0 as_furl  
�T 
ptsz
�S .sysonfo4asfe        file�Y D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,E	5 �R��Q�P	�	��O�R 0 re_info  �Q  �P  	�  	� �N�M�L�K�J�I�N 0 _inforecord _infoRecord
�M 
msng
�L 
ptsz
�K 
bool�J 0 as_furl  
�I .sysonfo4asfe        file�O <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,E	6 �H��G�F	�	��E�H 0 	item_name  �G  �F  	�  	� �D�C�D 0 	_pathinfo 	_pathInfo�C 0 	item_name  �E 	)�,j+ 	7 �B�A�@	�	��?�B 0 basename  �A  �@  	�  	� �>�=�> 0 	_pathinfo 	_pathInfo�= 0 basename  �? 	)�,j+ 	8 �<�;�:	�	��9�< 0 path_extension  �;  �:  	�  	� �8�7�8 0 	_pathinfo 	_pathInfo�7 0 path_extension  �9 	)�,j+ 	9 �6&�5�4	�	��3�6 0 volume_name  �5  �4  	�  	� �2�1�2 0 	_pathinfo 	_pathInfo�1 0 volume_name  �3 	)�,j+ 	: �0=�/�.	�	��-�0 0 bundle_resource  �/ �,	��, 	�  �+�+ 0 resource_name  �.  	� �*�* 0 resource_name  	� �)�(�'�&
�) 
in B�( 0 as_alias  
�' .sysorpthalis        TEXT�& 0 	make_with  �- *��*j+ l k+ 	; �%Q�$�#	�	��"�% $0 bundle_infoplist bundle_InfoPlist�$  �#  	�  	� U�!�! 0 child_posix  �" *�k+ 	< � \��	�	���  0 bundle_resources_folder  �  �  	�  	� `�� 0 child_posix  � *�k+ 	= �s��	�	��� 0 item_exists  �  �  	�  	� ��� 0 	_pathinfo 	_pathInfo� 0 item_exists  � 	)�,j+ 	> ����	�	��� 0 item_exists_without_update  �  �  	�  	� ��� 0 	_pathinfo 	_pathInfo� 0 item_exists_without_update  � 	)�,j+ 	? ����	�	��
� .coredoexbool       obj �  �  	�  	� �� 0 item_exists  � *j+  	@ �
��	�	�	���
 0 	rename_to  �	 �	�� 	�  �� 0 new_name  �  	� ���� 0 new_name  � 0 dest  � 0 a_result  	� �� ����������� 0 	_pathinfo 	_pathInfo�  0 change_name  ��  0 defaultmanager defaultManager�� 0 
posix_path  
�� 
msng�� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_�� 0 _inforecord _infoRecord� D)�,�k+ E�Ob  j+  *)�,j+ �j+ �m+ E�UO� �)�,FO�)�,FY hO�	A �������	�	����� 0 copy_to  �� ��	��� 	�  ���� 0 a_destination  ��  	� ���� 0 a_destination  	� ����
�� 
msng�� 0 copy_with_opts  �� 	*��l+ 	B �������	�	����� 0 copy_with_opts  �� ��	��� 	�  ������ 0 a_destination  �� 0 opts  ��  	� ������������������������ 0 a_destination  �� 0 opts  �� 0 w_replacing  �� 0 w_admin  �� 0 
w_removing  �� 0 command  �� 0 com_opts  �� 0 is_folder_to  �� 0 destination_path  �� 0 source_path  �� 0 	a_command  	� #����������������R����������sz����������������������
�� 
pcls
�� 
reco�� 0 with_replacing  ��  ��  �� 0 
with_admin  �� 0 with_removing  �� 	0 ditto  
�� 
ctxt
�� 
utxt
�� 
TEXT�� 0 parent_folder  �� 	0 child  �� 0 item_exists  �� 
0 remove  �� 0 	is_folder  �� 0 normalized_posix_path  
�� 
strq
�� 
spac
�� 
badm
�� .sysoexecTEXT���     TEXT�� 0 	item_name  ��9eE�OfE�OfE�O�E�O��,�  U 
��,E�W X  hO 
��,E�W X  hO 
��,E�W X  hO ��,E �E�Y hW X  hY hO���mv��, *j+ �k+ E�Y hO��  a E�O� �a %E�Y hY �a   
a E�Y hOfE�O�j+  $� 
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�	C �������	�	����� 0 finder_copy_to  �� ��	��� 	�  ������ 0 a_destination  �� 0 with_replacing  ��  	� ������������ 0 a_destination  �� 0 with_replacing  �� 0 destination  �� 0 source_alias  �� 0 new_item  	� ����������������� 0 as_alias  
�� 
insh
�� 
alrp�� 
�� .coreclon****      � ****
�� 
alis�� 0 	make_with  �� +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ 	D ������	�	����� 
0 my_log  �� ��	��� 	�  ���� 
0 a_text  ��  	� ���� 
0 a_text  	� ����
�� 
ascr
�� .ascrcmnt****      � ****�� � �j U	E ������	�	����� 0 move_to  �� ��	��� 	�  ���� 0 a_destination  ��  	� ������ 0 a_destination  �� 0 a_result  	� ������������������������ 0 item_exists  �� 0 	is_folder  �� 0 	item_name  �� 	0 child  ��  0 defaultmanager defaultManager�� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
msng�� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_�� 0 item_ref  �� 0 
change_ref  �� d*j+  O�j+   �j+  �*j+ k+ E�Y fY hOb  j+  *)�,j+ �j+ �m+ E�UO� *�j+ 	k+ 
Y hO�	F ��h����	�	����� 0 move_with_replacing  �� ��	��� 	�  ���� 0 a_destination  ��  	� ���������� 0 a_destination  �� 0 destination_path  �� 0 source_path  �� 0 msg  	� 	������������������� 0 item_exists  �� 0 quoted_path  
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 msg  ��  
�� 
ascr
�� .ascrcmnt****      � ****�� =*j+  O�j+ E�O*j+ E�O �%�%�%j W X  � �j UOfOe	G �������	�	����� 0 resolve_alias  ��  ��  	� ���������� 0 
x_original  �� 0 info_rec  �� 0 original_item  �� 
0 errmsg  	� ����~�}�|�{��z�y�x�w�v�� 0 
is_symlink  � 0 	deep_copy  �~ 0 item_exists  
�} 
msng�| 0 info  
�{ 
alis�z 0 as_alias  
�y 
orig�x 
0 errmsg  �w  �v 0 	make_with  �� _*j+   *j+ E�O�j+  �Y �Y hO*j+ E�O��,E * � )j+ �,�&E�UW 	X 	 
�O*�k+ Y )	H �u��t�s	�	��r�u 0 
into_trash  �t  �s  	�  	� 	�q�p�o�n�m�l�k�j�i�q "0 sharedworkspace sharedWorkspace�p 0 	_pathinfo 	_pathInfo�o 0 as_nsurl as_NSURL
�n 
msng�m @0 recycleurls_completionhandler_ recycleURLs_completionHandler_
�l afdmtrsh
�k .earsffdralis        afdr�j 0 change_folder  �i 0 change_pathinfo  �r -b  j+   *)�,j+ �l+ UO*)�,�j k+ k+ 	I �h�g�f	�	��e�h 
0 remove  �g  �f  	� �d�c�d 
0 a_path  �c 0 a_result  	� �b�a�`�_�^�]�\�[�b 0 	_pathinfo 	_pathInfo�a 0 as_text  �`  0 defaultmanager defaultManager�_ 0 
posix_path  
�^ 
msng�] 20 removeitematpath_error_ removeItemAtPath_error_�\ 0 	_item_ref  �[ 0 _inforecord _infoRecord�e >)�,j+ E�Ob  j+  *)j+ �l+ E�UO� �)�,�,FO�)�,FY hO�	J �ZK�Y�X	�	��W�Z 0 make_folder  �Y �V	��V 	�  �U�U 0 folder_name  �X  	� �T�S�T 0 folder_name  �S 0 
new_folder  	� �R�Q�P�O�R 0 item_exists  
�Q 
msng�P 	0 child  �O 0 	make_path  �W "*j+   �Y hO*�k+ E�O�jvk+ 	K �Nn�M�L	�	��K�N 0 	make_path  �M �J	��J 	�  �I�I 0 opts  �L  	� �H�G�H 0 opts  �G 0 w_admin  	� �F�E�D�C�B�A��@�?�>�=
�F 
pcls
�E 
reco�D 0 
with_admin  �C 0 item_exists  �B 0 	is_folder  
�A 
msng�@ 0 
posix_path  
�? 
strq
�> 
badm
�= .sysoexecTEXT���     TEXT�K SfE�O��,�  
��,E�Y hO*j+  *j+  )Y �Y hO�*j+ �,%�l 
O*j+  )Y hO�	L �<��;�:	�	��9�< 0 read_as_utf8  �;  �:  	�  	� �8�7�6�5�4�8 !0 check_existance_raising_error  �7 0 as_alias  
�6 
as  
�5 
utf8
�4 .rdwrread****        ****�9 *j+  O*j+ ��l 	M �3��2�1	�	��0�3 0 write_as_utf8  �2 �/	��/ 	�  �.�. 
0 a_data  �1  	� �-�,�- 
0 a_data  �, 
0 output  	� �+�*�)�(�'�&�%�$�#�"�!�+ 0 as_furl  
�* 
perm
�) .rdwropenshor       file
�( 
set2
�' .rdwrseofnull���     ****
�& 
refn
�% 
as  
�$ 
utf8�# 
�" .rdwrwritnull���     ****
�! .rdwrclosnull���     ****�0 &*j+  �el E�O��jl O����� 	O�j 
	N � ���	�	���  0 parent_folder  �  �  	�  	� ���� 0 	_pathinfo 	_pathInfo� 0 parent_folder  � 0 make_with_pathinfo  � *)�,j+ k+ 	O � ��	�	��� 	0 child  � �	�� 	�  �� 0 subpath  �  	� �� 0 subpath  	� ������ 0 item_exists_without_update  � 0 	_pathinfo 	_pathInfo� 	0 child  � 0 make_with_pathinfo  
� 
msng� *j+   *)�,�k+ k+ Y �	P ���	�	��
� 0 child_posix  � �		��	 	�  �� 0 subpath  �  	� ��� 0 subpath  � 
0 a_path  	� ����� 0 item_exists  � 0 
posix_path  � 0 	make_with  
� 
msng�
 #*j+   *j+ E�O��%E�O*�k+ Y �	Q �7� ��	�	���� 0 unique_child  �  ��	��� 	�  ���� 0 a_candidate  ��  	� �������������� 0 a_candidate  �� 0 
a_basename  �� 0 a_suffix  �� 0 i  �� 0 escape_suffix  �� 0 a_child  	� ��������V\f���������� 0 	is_folder  
�� 
msng�� 0 
split_name  
�� 
cobj�� 	0 child  �� 0 item_exists  
�� 
spac
�� 
utxt�� x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�	R �������	�	����� 0 list_children  ��  ��  	�  	� ������ 0 as_furl  
�� .earslfdrutxt  @    file�� *j+  j 	S �������	�	����� 0 each  �� ��	��� 	�  ���� 0 a_script  ��  	� ������������ 0 a_script  �� 
0 a_list  �� 0 listwrapper ListWrapper�� 0 n  �� 
0 x_item  	� 	�����	������������� 0 list_children  �� 0 listwrapper ListWrapper	� ��	�����	�	���
�� .ascrinit****      � ****	� k     	�	� �����  ��  ��  	� ��
�� 
pcnt	� ��
�� 
pcnt�� b  �
�� .corecnte****       ****
�� 
pcnt
�� 
cobj�� 	0 child  �� 0 do  �� A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��	T �������	�
 ���� 0 perform_shell  �� ��
�� 
  ���� 0 	a_command  ��  	� ������ 0 	a_command  �� 
0 a_path  
  ������������ 0 normalized_posix_path  
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� *j+  �,�,E�O��,%�%�%�%j 	U �������

���� 0 
shell_test  �� ��
�� 
  ���� 
0 option  ��  
 ���� 
0 option  
 ����������
�� 
spac�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  ��   �%�%*j+ %j W 	X  fOe	V ������

���� 0 	deep_copy  ��  ��  
  
 �������� 0 	_pathinfo 	_pathInfo�� 	0 clone  �� 0 make_with_pathinfo  �� *)�,j+ k+ 	W ��,����

���� 0 item_ref  ��  ��  
  
 ������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 	)�,j+ 	X ��7����
	

���� !0 check_existance_raising_error  ��  ��  
	  

 ��������M����V�� 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  
�� 
errn��F�� 0 as_text  
�� 
strq�� ")�,j+  )��l�)�,j+ �,%�%Y h	Y ��^����

���� 0 update_pathinfo  ��  ��  
  
 ������������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 prefering_posix  �� 0 is_posix  �� 0 make_with_opts  �� %b  )�,j+ �)�,j+ ll+ )�,FO)�,E	Z ������

���� 0 change_pathinfo  �� ��
�� 
  ���� 0 
a_pathinfo  ��  
 ���� 0 
a_pathinfo  
 ������������ 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� �)�,FO�)�,FO)�,j+ )�,FO)	[ �������

���� 0 
change_ref  �� ��
�� 
  ���� 0 file_ref  ��  
 ���� 0 file_ref  
 ������ 0 	make_with  �� 0 change_pathinfo  �� *b  �k+  k+ 	\ ������

�~�� 0 dump  ��  �  
  
 �}�|�} 0 	_pathinfo 	_pathInfo�| 0 as_text  �~ 	)�,j+ 	] �{��z�y

�x�{ 	0 debug  �z  �y  
 �w�v�u�w 
0 a_path  �v 0 a_xfile  �u 0 new_named_file  
 �t��s��r�q�p��o�n�m
�t 
scpt�s 	0 setup  
�r 
psxf�q 0 	make_with  �p 0 parent_folder  �o 0 unique_child  �n 0 	item_name  
�m .ascrcmnt****      � ****�x 0)��/)k+ O��&E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
	^ �l��k�j

�i�l 0 open_helpbook  �k  �j  
 �h�g�h 0 msg  �g 	0 errno  
 	�f��e�d�c
�b�a�`
�f 
scpt
�e .earsffdralis        afdr�d 0 do  �c 0 msg  
 �_�^�]
�_ 
errn�^ 	0 errno  �]  
�b .miscactvnull��� ��� null
�a 
ret 
�` .sysodisAaleR        TEXT�i - )��/ *)j k+ UW X  *j O��%�%j 	_ �\	�[�Z

�Y
�\ .aevtoappnull  �   � ****�[  �Z  
  
 �X�X 0 open_helpbook  �Y *j+  ascr  ��ޭ