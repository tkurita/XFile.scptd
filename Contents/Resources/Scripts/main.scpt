FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007-2017 Tetsuro KURITA

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	   C o p y r i g h t   ( C )   2 0 0 7 - 2 0 1 7   T e t s u r o   K U R I T A  
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
osax��        j     �� 
�� 
pnam  m       �   
 X F i l e      l     ��������  ��  ��        l      ��  ��   ��!@referencesPathInfo || help:openbook='net.script-factory.PathInfo.help'
Home page || http://www.script-factory.net/XModules/XFile/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XFile/changelog.html
Repository || https://github.com/tkurita/XFile.scptd

@title XFile Reference* Version : 1.7* Author : Tetsuro KURITA ((<scriptfactory@mac.com>))* Requirements : OS X 10.9 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

XFile provides unified object oriented interface to file operation (moving, removing, geting attributes and so on).Functions of file operations of AppleScript world is given by Scrpting Additions, Finder, System Events and shell commnads. 
It is cumbersome to find a proper way, because implemeted locations of functions are distributed.
XFile wraps these components and introduces a file object for unified object oriented interface.

== Example
@example
use XFile : script "XFile"use scripting additions(* Make a New Instance *)set a_xfile to XFile's make_with("/Users")set home_folder to XFile's make_with(path to home folder)(* Obtain File Infomation *)log a_xfile's is_folder() -- truelog a_xfile's is_package() -- falselog a_xfile's item_name() -- "Users"(* Obtain Parent and Child *)log home_folder's parent_folder()'s posix_path()-- "/Users"log home_folder's child("Documents")'s posix_path()-- "/Users/yourhome/Documents"log home_folder's child("Library/Scripts")'s posix_path()-- "/Users/yourhome/Library/Scripts"log home_folder's unique_child("Documents")'s posix_path()--"/Users/yourhome/Documents 2"(* Read and Write *)set test_file to home_folder's child("testfile")test_file's write_as_utf8("new data")log test_file's read_as_utf8() -- "new data"(* File Manipulations *)log test_file's item_exists() --trueset test_file2 to test_file's copy_to(home_folder's child("testfile2"))log test_file2's posix_path() -- "/Users/yourhome/testfile2"test_file2's move_to(home_folder's child("Documents"))log test_file2's posix_path() -- "/Users/yourhome/Documents/testfile2"test_file2's into_trash()log test_file2's posix_path() -- "/Users/yourhome/.Trash/testfile2"test_file's into_trash()(* Working with Shell Commands *)log test_file's perform_shell("cat %s") -- "new data"     �  � ! @ r e f e r e n c e s  P a t h I n f o   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . P a t h I n f o . h e l p ' 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X F i l e / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X F i l e / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X F i l e . s c p t d 
 
 @ t i t l e   X F i l e   R e f e r e n c e  *   V e r s i o n   :   1 . 7  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) )  *   R e q u i r e m e n t s   :   O S   X   1 0 . 9   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
 
  X F i l e   p r o v i d e s   u n i f i e d   o b j e c t   o r i e n t e d   i n t e r f a c e   t o   f i l e   o p e r a t i o n   ( m o v i n g ,   r e m o v i n g ,   g e t i n g   a t t r i b u t e s   a n d   s o   o n ) .  F u n c t i o n s   o f   f i l e   o p e r a t i o n s   o f   A p p l e S c r i p t   w o r l d   i s   g i v e n   b y   S c r p t i n g   A d d i t i o n s ,   F i n d e r ,   S y s t e m   E v e n t s   a n d   s h e l l   c o m m n a d s .   
 I t   i s   c u m b e r s o m e   t o   f i n d   a   p r o p e r   w a y ,   b e c a u s e   i m p l e m e t e d   l o c a t i o n s   o f   f u n c t i o n s   a r e   d i s t r i b u t e d . 
 X F i l e   w r a p s   t h e s e   c o m p o n e n t s   a n d   i n t r o d u c e s   a   f i l e   o b j e c t   f o r   u n i f i e d   o b j e c t   o r i e n t e d   i n t e r f a c e . 
 
 = =   E x a m p l e 
 @ e x a m p l e 
 u s e   X F i l e   :   s c r i p t   " X F i l e "  u s e   s c r i p t i n g   a d d i t i o n s   ( *   M a k e   a   N e w   I n s t a n c e   * )  s e t   a _ x f i l e   t o   X F i l e ' s   m a k e _ w i t h ( " / U s e r s " )  s e t   h o m e _ f o l d e r   t o   X F i l e ' s   m a k e _ w i t h ( p a t h   t o   h o m e   f o l d e r )   ( *   O b t a i n   F i l e   I n f o m a t i o n   * )  l o g   a _ x f i l e ' s   i s _ f o l d e r ( )   - -   t r u e  l o g   a _ x f i l e ' s   i s _ p a c k a g e ( )   - -   f a l s e  l o g   a _ x f i l e ' s   i t e m _ n a m e ( )   - -   " U s e r s "   ( *   O b t a i n   P a r e n t   a n d   C h i l d   * )  l o g   h o m e _ f o l d e r ' s   p a r e n t _ f o l d e r ( ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / D o c u m e n t s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " L i b r a r y / S c r i p t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / L i b r a r y / S c r i p t s "  l o g   h o m e _ f o l d e r ' s   u n i q u e _ c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - - " / U s e r s / y o u r h o m e / D o c u m e n t s   2 "   ( *   R e a d   a n d   W r i t e   * )  s e t   t e s t _ f i l e   t o   h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e " )  t e s t _ f i l e ' s   w r i t e _ a s _ u t f 8 ( " n e w   d a t a " )  l o g   t e s t _ f i l e ' s   r e a d _ a s _ u t f 8 ( )   - -   " n e w   d a t a "   ( *   F i l e   M a n i p u l a t i o n s   * )  l o g   t e s t _ f i l e ' s   i t e m _ e x i s t s ( )   - - t r u e   s e t   t e s t _ f i l e 2   t o   t e s t _ f i l e ' s   c o p y _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e 2 " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   m o v e _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / D o c u m e n t s / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   i n t o _ t r a s h ( )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / . T r a s h / t e s t f i l e 2 "  t e s t _ f i l e ' s   i n t o _ t r a s h ( )   ( *   W o r k i n g   w i t h   S h e l l   C o m m a n d s   * )  l o g   t e s t _ f i l e ' s   p e r f o r m _ s h e l l ( " c a t   % s " )   - -   " n e w   d a t a "        l     ��������  ��  ��      ! " ! j   ! #�� #�� 0 _prefer_posix   # m   ! "��
�� boovtrue "  $ % $ l     ��������  ��  ��   %  & ' & i   $ ' ( ) ( I      �� *���� 0 prefer_posix   *  +�� + o      ���� 0 bool  ��  ��   ) r      , - , o     ���� 0 bool   - n      . / . o    ���� 0 _prefer_posix   /  f     '  0 1 0 l     ��������  ��  ��   1  2 3 2 l      �� 4 5��   4 c ]!@group ConstractorsMaking a new instance with a reference to a file from the class object.    5 � 6 6 � ! @ g r o u p   C o n s t r a c t o r s  M a k i n g   a   n e w   i n s t a n c e   w i t h   a   r e f e r e n c e   t o   a   f i l e   f r o m   t h e   c l a s s   o b j e c t .  3  7 8 7 l     ��������  ��  ��   8  9 : 9 l      �� ; <��   ;!@abstruct Make a XFile instance with a file reference@descriptionHFS/POSIX path, alias and file URL can be accepted as file specification.@param file_ref (alias or Unicode text) : a HFS/POSIX path, alias or File URL@result script object : a new instance of XFile    < � = = ! @ a b s t r u c t    M a k e   a   X F i l e   i n s t a n c e   w i t h   a   f i l e   r e f e r e n c e  @ d e s c r i p t i o n  H F S / P O S I X   p a t h ,   a l i a s   a n d   f i l e   U R L   c a n   b e   a c c e p t e d   a s   f i l e   s p e c i f i c a t i o n .  @ p a r a m   f i l e _ r e f   ( a l i a s   o r   U n i c o d e   t e x t )   :   a   H F S / P O S I X   p a t h ,   a l i a s   o r   F i l e   U R L  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  :  > ? > i   ( + @ A @ I      �� B���� 0 	make_with   B  C�� C o      ���� 0 file_ref  ��  ��   A k     X D D  E F E r      G H G m     ��
�� boovfals H o      ���� 
0 is_hfs   F  I J I Z     K L���� K E    M N M J    	 O O  P Q P m    ��
�� 
ctxt Q  R S R m    ��
�� 
utxt S  T�� T m    ��
�� 
TEXT��   N n   	  U V U m   
 ��
�� 
pcls V o   	 
���� 0 file_ref   L r     W X W l    Y���� Y H     Z Z C     [ \ [ o    ���� 0 file_ref   \ m     ] ] � ^ ^  /��  ��   X o      ���� 
0 is_hfs  ��  ��   J  _ ` _ Z    P a b c d a o    ���� 
0 is_hfs   b r    + e f e n   ) g h g I   $ )�� i���� 0 make_with_hfs   i  j�� j o   $ %���� 0 file_ref  ��  ��   h o    $���� 0 pathinfo PathInfo f o      ���� 0 	path_info   c  k l k n  . 2 m n m o   / 1���� 0 _prefer_posix   n  f   . / l  o�� o r   5 A p q p n  5 ? r s r I   : ?�� t���� 0 make_with_posix   t  u�� u o   : ;���� 0 file_ref  ��  ��   s o   5 :���� 0 pathinfo PathInfo q o      ���� 0 	path_info  ��   d r   D P v w v n  D N x y x I   I N�� z���� 0 make_with_hfs   z  {�� { o   I J���� 0 file_ref  ��  ��   y o   D I���� 0 pathinfo PathInfo w o      ���� 0 	path_info   `  | } | l  Q Q��������  ��  ��   }  ~�� ~ L   Q X   I   Q W�� ����� 0 make_with_pathinfo   �  ��� � o   R S���� 0 	path_info  ��  ��  ��   ?  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstructMake a new instance with a ((<PathInfo>)) instance.@param path_info (script) : a ((<PathInfo>)) instance.@result script object : a new instance of XFile     � � � �N ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   a   ( ( < P a t h I n f o > ) )   i n s t a n c e .  @ p a r a m   p a t h _ i n f o   ( s c r i p t )   :   a   ( ( < P a t h I n f o > ) )   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e    �  � � � i   , / � � � I      �� ����� 0 make_with_pathinfo   �  ��� � o      ���� 0 	path_info  ��  ��   � k      � �  � � � r      � � �  f      � o      ���� 0 a_parent   �  � � � h    �� ��� 0 xfile XFile � k       � �  � � � j     �� �
�� 
pare � o     ���� 0 a_parent   �  � � � j   	 �� ��� 0 	_pathinfo 	_pathInfo � o   	 ���� 0 	path_info   �  � � � j    �� ��� 0 _inforecord _infoRecord � m    ��
�� 
msng �  � � � j    �� ��� 0 _prefer_posix   � n    � � � I    �������� 0 is_posix  ��  ��   � o    ���� 0 	path_info   �  ��� � j     �� ��� 0 _is_symlink   � m    ��
�� 
msng��   �  ��� � L     � � o    ���� 0 xfile XFile��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@group Make a New Instance with Changing Contents of an Instance

Making a new XFile instance with changing a part of the exisiting instance.    � � � �  ! @ g r o u p   M a k e   a   N e w   I n s t a n c e   w i t h   C h a n g i n g   C o n t e n t s   o f   a n   I n s t a n c e  
 
 M a k i n g   a   n e w   X F i l e   i n s t a n c e   w i t h   c h a n g i n g   a   p a r t   o f   t h e   e x i s i t i n g   i n s t a n c e .  �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstructMake a new instance with changing file name of the instance@param a_name (Unicode text or string) : a file name@result script object : a new instance of XFile    � � � �X ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f i l e   n a m e   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :   a   f i l e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   0 3 � � � I      �� ����� 0 change_name   �  ��� � o      ���� 
0 a_name  ��  ��   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �� ����� 0 change_name   �  ��� � o    ���� 
0 a_name  ��  ��   � o    ���� 0 	_pathinfo 	_pathInfo �  f      � o      �� 0 	path_info   �  ��~ � L     � � I    �} ��|�} 0 make_with_pathinfo   �  ��{ � o    �z�z 0 	path_info  �{  �|  �~   �  � � � l     �y�x�w�y  �x  �w   �  � � � l      �v � ��v   � � �!@abstructMake a new instance with changing folder of the instance@param a_name (alias, Unicode text, file URL, file specification) : a reference to folder@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f o l d e r   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( a l i a s ,   U n i c o d e   t e x t ,   f i l e   U R L ,   f i l e   s p e c i f i c a t i o n )   :   a   r e f e r e n c e   t o   f o l d e r  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   4 7 � � � I      �u ��t�u 0 change_folder   �  ��s � o      �r�r 0 
folder_ref  �s  �t   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �q ��p�q 0 change_folder   �  ��o � o    �n�n 0 
folder_ref  �o  �p   � o    �m�m 0 	_pathinfo 	_pathInfo �  f      � o      �l�l 0 	path_info   �  ��k � L     � � I    �j ��i�j 0 make_with_pathinfo   �  ��h � o    �g�g 0 	path_info  �h  �i  �k   �  � � � l     �f�e�d�f  �e  �d   �  � � � l      �c � ��c   � � �!@abstructMake a new instance with changing path extension of the instance@param a_name (Unicode text or string) :a path extension, should not start with a dot ".".<!-- end locale -->@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   p a t h   e x t e n s i o n   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   : a   p a t h   e x t e n s i o n ,   s h o u l d   n o t   s t a r t   w i t h   a   d o t   " . " .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   8 ; � � � I      �b ��a�b 0 change_path_extension   �  ��` � o      �_�_ 0 a_suffix  �`  �a   � L      � � I     �^ ��]�^ 0 make_with_pathinfo   �  ��\ � n   	 � � � n   	 � � � I    	�[ ��Z�[ 0 change_path_extension   �  �Y  o    �X�X 0 a_suffix  �Y  �Z   � o    �W�W 0 	_pathinfo 	_pathInfo �  f    �\  �]   �  l     �V�U�T�V  �U  �T    l      �S�S   q k!@group Getting a File Reference form an Instance

Obtain a reference to a file which XFile reference to.    � � ! @ g r o u p   G e t t i n g   a   F i l e   R e f e r e n c e   f o r m   a n   I n s t a n c e  
 
 O b t a i n   a   r e f e r e n c e   t o   a   f i l e   w h i c h   X F i l e   r e f e r e n c e   t o .  	 l     �R�Q�P�R  �Q  �P  	 

 l      �O�O   � �!@abstructObtain a reference to a file as alias class@descriptionAn error raise, If a file or a folder does not exists.@result alias    � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   a l i a s   c l a s s  @ d e s c r i p t i o n  A n   e r r o r   r a i s e ,   I f   a   f i l e   o r   a   f o l d e r   d o e s   n o t   e x i s t s .  @ r e s u l t   a l i a s   i   < ? I      �N�M�L�N 0 as_alias  �M  �L   k       I     �K�J�I�K !0 check_existance_raising_error  �J  �I   �H L     n    n    I   	 �G�F�E�G 0 as_alias  �F  �E   o    	�D�D 0 	_pathinfo 	_pathInfo  f    �H    l     �C�B�A�C  �B  �A    l      �@ !�@    Q K!@abstructObtain a reference to a file as File URL class@result File URL   ! �"" � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   F i l e   U R L   c l a s s  @ r e s u l t   F i l e   U R L  #$# i   @ C%&% I      �?�>�=�? 0 as_furl  �>  �=  & L     '' n    ()( n   *+* I    �<�;�:�< 0 as_furl  �;  �:  + o    �9�9 0 	_pathinfo 	_pathInfo)  f     $ ,-, l     �8�7�6�8  �7  �6  - ./. l      �501�5  0 / )!@abstruct Obtain HFS path@result text   1 �22 R ! @ a b s t r u c t    O b t a i n   H F S   p a t h  @ r e s u l t   t e x t / 343 i   D G565 I      �4�3�2�4 0 hfs_path  �3  �2  6 L     77 n    898 n   :;: I    �1�0�/�1 0 hfs_path  �0  �/  ; o    �.�. 0 	_pathinfo 	_pathInfo9  f     4 <=< l     �-�,�+�-  �,  �+  = >?> l      �*@A�*  @ 1 +!@abstruct Obtain POSIX path@result text   A �BB V ! @ a b s t r u c t    O b t a i n   P O S I X   p a t h  @ r e s u l t   t e x t ? CDC i   H KEFE I      �)�(�'�) 0 
posix_path  �(  �'  F L     GG n    HIH n   JKJ I    �&�%�$�& 0 
posix_path  �%  �$  K o    �#�# 0 	_pathinfo 	_pathInfoI  f     D LML l     �"�!� �"  �!  �   M NON l      �PQ�  P M G!@abstruct
Obtain POSIX path which does not end with "/".
@result text   Q �RR � ! @ a b s t r u c t 
 O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 @ r e s u l t   t e x t O STS i   L OUVU I      ���� 0 normalized_posix_path  �  �  V L     WW n    XYX n   Z[Z I    ���� 0 normalized_posix_path  �  �  [ o    �� 0 	_pathinfo 	_pathInfoY  f     T \]\ l     ����  �  �  ] ^_^ i   P S`a` I      ���� 0 quoted_path  �  �  a L     bb n    
cdc n   	efe 1    	�
� 
strqf n   ghg I    ���� 0 
posix_path  �  �  h o    �� 0 	_pathinfo 	_pathInfod  f     _ iji l     ���
�  �  �
  j klk l      �	mn�	  m &  !@group Working with Attributes    n �oo @ ! @ g r o u p   W o r k i n g   w i t h   A t t r i b u t e s  l pqp l     ����  �  �  q rsr l      �tu�  t n h!@abstructCheck whether the item is a folder or not.@result boolean : true if the the item is folder.   u �vv � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   f o l d e r   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   t h e   i t e m   i s   f o l d e r . s wxw i   T Wyzy I      ���� 0 	is_folder  �  �  z k     {{ |}| l      �~�  ~ � �	if item_ref()'s class is not alias then		check_existance_raising_error()		update_pathinfo()	end if	return my _pathInfo's is_folder()
	    ���  	 i f   i t e m _ r e f ( ) ' s   c l a s s   i s   n o t   a l i a s   t h e n  	 	 c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r ( )  	 	 u p d a t e _ p a t h i n f o ( )  	 e n d   i f  	 r e t u r n   m y   _ p a t h I n f o ' s   i s _ f o l d e r ( ) 
 	} ��� r     ��� I     � �����  0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
asdr� o    	���� 0 info_rec  ��  x ��� l     ��������  ��  ��  � ��� l      ������  � n h!@abstructCheck whether the item is a package or not.@result boolean : true if the item is a package.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   p a c k a g e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   p a c k a g e . � ��� i   X [��� I      �������� 0 
is_package  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
ispk� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � v p!@abstructCheck whether the item is an alias file or not.@result boolean : true if the item is an alias file.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . � ��� i   \ _��� I      �������� 0 is_alias  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� m   	 ��
�� 
alis� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � z t!@abstructCheck whether the item is a symbolic link or not.@result boolean : true if the item is a symbolic link.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k . � ��� i   ` c��� I      �������� 0 
is_symlink  ��  ��  � k     3�� ��� Z     -������� =    ��� n    ��� o    ���� 0 _is_symlink  �  f     � m    ��
�� 
msng� Q    )���� k    �� ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  t e s t   - L  � I    �������� 0 quoted_path  ��  ��  ��  � ���� r    ��� m    ��
�� boovtrue� n     ��� o    ���� 0 _is_symlink  �  f    ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r   $ )��� m   $ %��
�� boovfals� n     ��� o   & (���� 0 _is_symlink  �  f   % &��  ��  � ���� L   . 3�� n  . 2��� o   / 1���� 0 _is_symlink  �  f   . /��  � ��� l     ��������  ��  ��  � ��� l      ������  � j d!@abstructCheck whether the item is visible or not.@result boolean : true if the item is visible.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e . � ��� i   d g��� I      �������� 0 
is_visible  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
pvis� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� i   h k��� I      �������� 0 type_identifier  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
utid� o    	���� 0 info_rec  ��  �    l     ��������  ��  ��    l      ����   � �!@abstructSet creator code and type code to the item.@param creator_code (text) : creator code which consists of 4 characters<!-- end locale -->@param type_code (text) : type code which consists of 4 characters    �� ! @ a b s t r u c t  S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m .  @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s   i   l o	
	 I      ������ 0 	set_types    o      ���� 0 creator_code   �� o      ���� 0 	type_code  ��  ��  
 Z     +���� H      I     �������� 0 	is_folder  ��  ��   k   	 '  r   	  I   	 �������� 0 as_alias  ��  ��   o      ���� 
0 a_file    O    ! k       r     o    ���� 0 creator_code   n       !  1    ��
�� 
fcrt! o    ���� 
0 a_file   "��" r     #$# o    ���� 0 	type_code  $ n      %&% 1    ��
�� 
asty& o    ���� 
0 a_file  ��   m    ''�                                                                                  MACS  alis    t  Macintosh HD               ҽS]H+     '
Finder.app                                                      ���qX�        ����  	                CoreServices    Ҽ��      �p�J       '   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   (��( r   " ')*) m   " #��
�� 
msng* n     +,+ o   $ &���� 0 _inforecord _infoRecord,  f   # $��  ��  ��   -.- l     ��������  ��  ��  . /0/ l      ��12��  1!@abstructObtain file information.@descriptionDo &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().The size of the target will not be included.@result file infomation(record) : a result of info for command.   2 �33( ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) .  T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . 0 454 i   p s676 I      �������� 0 info  ��  ��  7 k     '88 9:9 Z     !;<����; =    =>= n    ?@? o    ���� 0 _inforecord _infoRecord@  f     > m    ��
�� 
msng< k    AA BCB I    ������� !0 check_existance_raising_error  ��  �  C D�~D r    EFE I   �}GH
�} .sysonfo4asfe        fileG I    �|�{�z�| 0 as_furl  �{  �z  H �yI�x
�y 
ptszI m    �w
�w boovfals�x  F n     JKJ o    �v�v 0 _inforecord _infoRecordK  f    �~  ��  ��  : L�uL L   " 'MM n  " &NON o   # %�t�t 0 _inforecord _infoRecordO  f   " #�u  5 PQP l     �s�r�q�s  �r  �q  Q RSR l      �pTU�p  T82!@abstructObtain file information including its size.@descriptionDo &quot;info for&quot; command for the item with &quot;size&quot; option. The result is cached and same value is returned at next calling info_with_size() or ((<info>))().@result file infomation(record) : a result of info for command.   U �VVd ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   i n c l u d i n g   i t s   s i z e .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m   w i t h   & q u o t ; s i z e & q u o t ;   o p t i o n .    T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o _ w i t h _ s i z e ( )   o r   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . S WXW i   t wYZY I      �o�n�m�o 0 info_with_size  �n  �m  Z k     C[[ \]\ Z     =^_`�l^ =    aba n    cdc o    �k�k 0 _inforecord _infoRecordd  f     b m    �j
�j 
msng_ k    ee fgf I    �i�h�g�i !0 check_existance_raising_error  �h  �g  g h�fh r    iji I   �ekl
�e .sysonfo4asfe        filek I    �d�c�b�d 0 as_furl  �c  �b  l �am�`
�a 
ptszm m    �_
�_ boovtrue�`  j n     non o    �^�^ 0 _inforecord _infoRecordo  f    �f  ` pqp =    'rsr n     %tut 1   # %�]
�] 
ptszu n    #vwv o   ! #�\�\ 0 _inforecord _infoRecordw  f     !s m   % &�[
�[ 
msngq x�Zx r   * 9yzy I  * 5�Y{|
�Y .sysonfo4asfe        file{ I   * /�X�W�V�X 0 as_furl  �W  �V  | �U}�T
�U 
ptsz} m   0 1�S
�S boovtrue�T  z n     ~~ o   6 8�R�R 0 _inforecord _infoRecord  f   5 6�Z  �l  ] ��Q� L   > C�� n  > B��� o   ? A�P�P 0 _inforecord _infoRecord�  f   > ?�Q  X ��� l     �O�N�M�O  �N  �M  � ��� l      �L���L  � � �!@abstructObtain file information again.@descriptionDo "info for" command for the item and reset the cache of ((<info>))().@result file infomation(record) : a result of info for command.   � ���~ ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   a g a i n .  @ d e s c r i p t i o n  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   x {��� I      �K�J�I�K 0 re_info  �J  �I  � k     ;�� ��� Z     5���H�� F     ��� l    ��G�F� >    ��� n    ��� o    �E�E 0 _inforecord _infoRecord�  f     � m    �D
�D 
msng�G  �F  � l 	  ��C�B� l   ��A�@� >   ��� n    ��� 1    �?
�? 
ptsz� n   ��� o   	 �>�> 0 _inforecord _infoRecord�  f    	� m    �=
�= 
msng�A  �@  �C  �B  � r    #��� I   �<��
�< .sysonfo4asfe        file� I    �;�:�9�; 0 as_furl  �:  �9  � �8��7
�8 
ptsz� m    �6
�6 boovtrue�7  � n     ��� o     "�5�5 0 _inforecord _infoRecord�  f     �H  � r   & 5��� I  & 1�4��
�4 .sysonfo4asfe        file� I   & +�3�2�1�3 0 as_furl  �2  �1  � �0��/
�0 
ptsz� m   , -�.
�. boovfals�/  � n     ��� o   2 4�-�- 0 _inforecord _infoRecord�  f   1 2� ��,� L   6 ;�� n  6 :��� o   7 9�+�+ 0 _inforecord _infoRecord�  f   6 7�,  � ��� l     �*�)�(�*  �)  �(  � ��� l      �'���'  � % !@group Obtain Path Infomation    � ��� > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  � ��� l     �&�%�$�&  �%  �$  � ��� l      �#���#  � W Q!@abstruct Obtain the name of the item referenced by the instance @result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e    @ r e s u l t   t e x t � ��� i   | ��� I      �"�!� �" 0 	item_name  �!  �   � L     �� n    ��� n   ��� I    ���� 0 	item_name  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct Obtain the base name (a name which does not include path extension) of the item referenced by the instance.@result text   � ���
 ! @ a b s t r u c t    O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   � ���� I      ���� 0 basename  �  �  � L     �� n    ��� n   ��� I    ���� 0 basename  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.@result text   � ���� ! @ a b s t r u c t    O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t � ��� i   � ���� I      ���
� 0 path_extension  �  �
  � L     �� n    ��� n   ��� I    �	���	 0 path_extension  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ����  �  �  � ��� l      ����  � ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   � ���� I      �� ��� 0 volume_name  �   ��  � L     �� n    ��� n   ��� I    �������� 0 volume_name  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � � � l      ����   $ !@group Working with a Bundle     � < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e     l     ��������  ��  ��    l      ��	��   � �!@abstructObtain an item which is in the bundle resource folder.@descriptionThis method can be call to a bundle.@param resource_name (text) : a resource name@result script object : a XFile instance   	 �

� ! @ a b s t r u c t  O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r .  @ d e s c r i p t i o n  T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e .  @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   i   � � I      ������ 0 bundle_resource   �� o      ���� 0 resource_name  ��  ��   L      I     ������ 0 	make_with   �� I   ��
�� .sysorpthalis        TEXT o    ���� 0 resource_name   ����
�� 
in B l   ���� I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��    l     ��������  ��  ��    l      ����   j d!@abstructObtain a reference to Info.plist of the bundle.@result script object : a XFile instance    � � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e    i   � �!"! I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  " L     ## I     ��$���� 0 child_posix  $ %��% m    && �'' & C o n t e n t s / I n f o . p l i s t��  ��    ()( l     ��������  ��  ��  ) *+* i   � �,-, I      �������� 0 bundle_resources_folder  ��  ��  - L     .. I     ��/���� 0 child_posix  / 0��0 m    11 �22 & C o n t e n t s / R e s o u r c e s /��  ��  + 343 l     ��������  ��  ��  4 565 l      ��78��  7 ! !@group File Manipulations    8 �99 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  6 :;: l     ��������  ��  ��  ; <=< l      ��>?��  >/)!@abstructCheck whether the item referenced by the instance exists or not.@descriptionA file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.@result boolean : true if the item exists.   ? �@@R ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . = ABA i   � �CDC I      �������� 0 item_exists  ��  ��  D L     EE n    FGF n   HIH I    �������� 0 item_exists  ��  ��  I o    ���� 0 	_pathinfo 	_pathInfoG  f     B JKJ l     ��������  ��  ��  K LML l      ��NO��  N � �!@abstructCheck whether the item referenced by the instance exists or not.@descriptionThe internal file reference will not be changed unlike ((<item_exists>)).@result boolean : true if the item exists.   O �PP� ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . M QRQ i   � �STS I      �������� 0 item_exists_without_update  ��  ��  T L     UU n    VWV n   XYX I    �������� 0 item_exists_without_update  ��  ��  Y o    ���� 0 	_pathinfo 	_pathInfoW  f     R Z[Z l     ��������  ��  ��  [ \]\ l      ��^_��  ^ � �!@abstructSynonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.@result boolean : true if the item exists.   _ �``* ! @ a b s t r u c t  S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . ] aba i   � �cdc I     ������
�� .coredoexbool       obj ��  ��  d L     ee I     �������� 0 item_exists  ��  ��  b fgf l     ��������  ��  ��  g hih l      ��jk��  j l f!@abstructRename an item which referenced by the XFile instance.@result boolean : true if succeded.   k �ll � ! @ a b s t r u c t  R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e d e d . i mnm i   � �opo I      ��q���� 0 	rename_to  q r��r o      ���� 0 new_name  ��  ��  p k     0ss tut Z     vw����v H     xx l    y����y I     �������� 0 item_exists  ��  ��  ��  ��  w L   	 zz m   	 
��
�� boovfals��  ��  u {|{ l   ��������  ��  ��  | }~} O    � r    ��� o    ���� 0 new_name  � n      ��� 1    ��
�� 
pnam� n   ��� I    �������� 0 item_ref  ��  ��  �  f    � m    ���                                                                                  MACS  alis    t  Macintosh HD               ҽS]H+     '
Finder.app                                                      ���qX�        ����  	                CoreServices    Ҽ��      �p�J       '   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ~ ��� l   ��������  ��  ��  � ��� r    $��� m     ��
�� 
msng� n     ��� o   ! #���� 0 _inforecord _infoRecord�  f     !� ��� n  % -��� n  & -��� I   ( -������� 0 set_name  � ���� o   ( )���� 0 new_name  ��  ��  � o   & (���� 0 	_pathinfo 	_pathInfo�  f   % &� ���� L   . 0�� m   . /��
�� boovtrue��  n ��� l     ��������  ��  ��  � ��� l      ������  �*$!@abstruct Copy the item to specified location@descriptionSame name item in the destination is replaced.@param a_destination (script object or text) : a XFile instance referencing the copy destination or a relative path.@result script object : a XFile instance referencing copied item.   � ���H ! @ a b s t r u c t    C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n  @ d e s c r i p t i o n  S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :    a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      ������� 0 copy_to  � ���� o      ���� 0 a_destination  ��  ��  � L     �� I     ���~� 0 copy_with_opts  � ��� o    �}�} 0 a_destination  � ��|� m    �{
�{ 
msng�|  �~  � ��� l     �z�y�x�z  �y  �x  � ��� l      �w���w  �71!
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
 @ p a r a m   o p t s   (   r e c o r d ) :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �v��u�v 0 copy_with_opts  � ��� o      �t�t 0 a_destination  � ��s� o      �r�r 0 opts  �s  �u  � k    8�� ��� l     �q���q  � \ V cp : if source and destination are folders and the path of the source ends with "/",    � ��� �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  � ��� l     �p���p  � ^ X         cp command contents of the source copy under the destination folder like ditto.   � ��� �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .� ��� l     �o���o  � U O        The endding "/" of the source path should be removed for stable result.   � ��� �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .� ��� l     �n���n  � 5 /        Is the support  of ditto not required ?   � ��� ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?� ��� r     ��� m     �m
�m boovtrue� o      �l�l 0 w_replacing  � ��� r    ��� m    �k
�k boovfals� o      �j�j 0 w_admin  � ��� r    ��� m    	�i
�i boovfals� o      �h�h 0 
w_removing  � ��� l   ���� r    ��� m    �� ���  c p� o      �g�g 0 command  �   or "ditto"   � ���    o r   " d i t t o "� ��� l   �f�e�d�f  �e  �d  � ��� Z    l���c�b� =   ��� n    ��� m    �a
�a 
pcls� o    �`�` 0 opts  � m    �_
�_ 
reco� k    h�� ��� Q    )���^� r     ��� n    ��� o    �]�] 0 with_replacing  � o    �\�\ 0 opts  � o      �[�[ 0 w_replacing  � R      �Z�Y�X
�Z .ascrerr ****      � ****�Y  �X  �^  � ��� Q   * ;���W� r   - 2��� n   - 0� � o   . 0�V�V 0 
with_admin    o   - .�U�U 0 opts  � o      �T�T 0 w_admin  � R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  �W  �  Q   < M�P r   ? D n   ? B o   @ B�O�O 0 with_removing   o   ? @�N�N 0 opts   o      �M�M 0 
w_removing   R      �L�K�J
�L .ascrerr ****      � ****�K  �J  �P   	�I	 Q   N h
�H
 Z   Q _�G�F n   Q U o   R T�E�E 	0 ditto   o   Q R�D�D 0 opts   r   X [ m   X Y � 
 d i t t o o      �C�C 0 command  �G  �F   R      �B�A�@
�B .ascrerr ****      � ****�A  �@  �H  �I  �c  �b  �  l  m m�?�>�=�?  �>  �=    Z   m ��<�; E  m v J   m r  m   m n�:
�: 
ctxt   m   n o�9
�9 
utxt  !�8! m   o p�7
�7 
TEXT�8   n   r u"#" m   s u�6
�6 
pcls# o   r s�5�5 0 a_destination   r   y �$%$ n  y �&'& I   ~ ��4(�3�4 	0 child  ( )�2) o   ~ �1�1 0 a_destination  �2  �3  ' I   y ~�0�/�.�0 0 parent_folder  �/  �.  % o      �-�- 0 a_destination  �<  �;   *+* l  � ��,�+�*�,  �+  �*  + ,-, Z   � �./0�). =  � �121 o   � ��(�( 0 command  2 m   � �33 �44  c p/ k   � �55 676 r   � �898 m   � �:: �;;  - R p9 o      �'�' 0 com_opts  7 <�&< Z   � �=>�%�$= o   � ��#�# 0 w_replacing  > r   � �?@? b   � �ABA o   � ��"�" 0 com_opts  B m   � �CC �DD  f@ o      �!�! 0 com_opts  �%  �$  �&  0 EFE =  � �GHG o   � �� �  0 command  H m   � �II �JJ 
 d i t t oF K�K r   � �LML m   � �NN �OO  - - r s r cM o      �� 0 com_opts  �  �)  - PQP r   � �RSR m   � ��
� boovfalsS o      �� 0 is_folder_to  Q TUT Z   � �VW��V n  � �XYX I   � ����� 0 item_exists  �  �  Y o   � ��� 0 a_destination  W Z   � �Z[�\Z l  � �]��] o   � ��� 0 
w_removing  �  �  [ n  � �^_^ I   � ����� 
0 remove  �  �  _ o   � ��� 0 a_destination  �  \ Z   � �`a��` =  � �bcb o   � ��� 0 command  c m   � �dd �ee  c pa r   � �fgf n  � �hih I   � ��
�	��
 0 	is_folder  �	  �  i o   � ��� 0 a_destination  g o      �� 0 is_folder_to  �  �  �  �  U jkj l  � �����  �  �  k lml r   � �non n   � �pqp 1   � ��
� 
strqq n  � �rsr I   � ��� ��� 0 normalized_posix_path  �   ��  s o   � ����� 0 a_destination  o o      ���� 0 destination_path  m tut r   �vwv n   � �xyx 1   � ���
�� 
strqy I   � ��������� 0 normalized_posix_path  ��  ��  w o      ���� 0 source_path  u z{z r  |}| b  ~~ b  ��� b  ��� b  ��� b  	��� b  ��� o  ���� 0 command  � 1  ��
�� 
spac� o  ���� 0 com_opts  � 1  	��
�� 
spac� o  ���� 0 source_path  � 1  ��
�� 
spac o  ���� 0 destination_path  } o      ���� 0 	a_command  { ��� I !����
�� .sysoexecTEXT���     TEXT� o  ���� 0 	a_command  � �����
�� 
badm� o  ���� 0 w_admin  ��  � ��� Z  "5������� o  "#���� 0 is_folder_to  � L  &1�� n &0��� I  '0������� 	0 child  � ���� I  ',�������� 0 	item_name  ��  ��  ��  ��  � o  &'���� 0 a_destination  ��  ��  � ���� L  68�� o  67���� 0 a_destination  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 finder_copy_to  � ��� o      ���� 0 a_destination  � ���� o      ���� 0 with_replacing  ��  ��  � k     *�� ��� r     ��� n    ��� I    �������� 0 as_alias  ��  ��  � o     ���� 0 a_destination  � o      ���� 0 destination  � ��� r    ��� I    �������� 0 as_alias  ��  ��  � o      ���� 0 source_alias  � ��� O    "��� r    !��� c    ��� l   ������ I   ����
�� .coreclon****      � ****� o    ���� 0 source_alias  � ����
�� 
insh� o    ���� 0 destination  � �����
�� 
alrp� o    ���� 0 with_replacing  ��  ��  ��  � m    ��
�� 
alis� o      ���� 0 new_item  � m    ���                                                                                  MACS  alis    t  Macintosh HD               ҽS]H+     '
Finder.app                                                      ���qX�        ����  	                CoreServices    Ҽ��      �p�J       '   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� L   # *�� I   # )������� 0 	make_with  � ���� o   $ %���� 0 new_item  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �("!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, moving an item will fail.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.   � ���D ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   m o v i n g   a n   i t e m   w i l l   f a i l .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . � ��� i   � ���� I      ������� 0 move_to  � ���� o      ���� 0 a_destination  ��  ��  � k     <�� ��� l    ���� I     �������� 0 item_exists  ��  ��  � G A even if the item exists, broken symbolic file will return false.   � ��� �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .� ��� r    ��� n   ��� I    �������� 0 quoted_path  ��  ��  � o    ���� 0 a_destination  � o      ���� 0 destination_path  � ��� r    ��� I    �������� 0 quoted_path  ��  ��  � o      ���� 0 source_path  � ��� Q    9���� I   $�����
�� .sysoexecTEXT���     TEXT� b     ��� b    ��� b    ��� m    �� ���  m v  � o    ���� 0 source_path  � 1    ��
�� 
spac� o    ���� 0 destination_path  ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 msg  ��  � k   , 9�� ��� O  , 6��� I  0 5�����
�� .ascrcmnt****      � ****� o   0 1���� 0 msg  ��  � 1   , -��
�� 
ascr� ���� L   7 9�� m   7 8��
�� boovfals��  � ���� L   : <�� m   : ;��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l      ������  �>8!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, the item will be replaced with the target item.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.   � ���p ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . �    i   � � I      ������ 0 move_with_replacing   �� o      ���� 0 a_destination  ��  ��   k     <  l    	
	 I     �������� 0 item_exists  ��  ��  
 G A even if the item exists, broken symbolic file will return false.    � �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .  r     n    I    �������� 0 quoted_path  ��  ��   o    ���� 0 a_destination   o      ���� 0 destination_path    r     I    �������� 0 quoted_path  ��  ��   o      ���� 0 source_path    Q    9 I   $����
�� .sysoexecTEXT���     TEXT b      b      b    !"! m    ## �$$  m v   - f  " o    ���� 0 source_path    1    ��
�� 
spac o    ���� 0 destination_path  ��   R      ��%�
�� .ascrerr ****      � ****% o      �~�~ 0 msg  �   k   , 9&& '(' O  , 6)*) I  0 5�}+�|
�} .ascrcmnt****      � ****+ o   0 1�{�{ 0 msg  �|  * 1   , -�z
�z 
ascr( ,�y, L   7 9-- m   7 8�x
�x boovfals�y   .�w. L   : <// m   : ;�v
�v boovtrue�w   010 l     �u�t�s�u  �t  �s  1 232 l      �r45�r  4!@abstructResolving original item of a alias file.@descriptionIf the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.@result script object or missing value   5 �66
 ! @ a b s t r u c t  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  @ d e s c r i p t i o n  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e 3 787 i   � �9:9 I      �q�p�o�q 0 resolve_alias  �p  �o  : k     ^;; <=< Z     #>?�n�m> I     �l�k�j�l 0 
is_symlink  �k  �j  ? k    @@ ABA r    CDC I    �i�h�g�i 0 	deep_copy  �h  �g  D o      �f�f 0 
x_original  B E�eE Z    FG�dHF n   IJI I    �c�b�a�c 0 item_exists  �b  �a  J o    �`�` 0 
x_original  G L    KK o    �_�_ 0 
x_original  �d  H L    LL m    �^
�^ 
msng�e  �n  �m  = MNM l  $ $�]�\�[�]  �\  �[  N OPO r   $ +QRQ I   $ )�Z�Y�X�Z 0 info  �Y  �X  R o      �W�W 0 info_rec  P S�VS Z   , ^TU�UVT n   , 0WXW m   - /�T
�T 
alisX o   , -�S�S 0 info_rec  U k   3 XYY Z[Z Q   3 P\]^\ O   6 F_`_ r   : Eaba c   : Ccdc l  : Ae�R�Qe n   : Afgf 1   ? A�P
�P 
origg l  : ?h�O�Nh n  : ?iji I   ; ?�M�L�K�M 0 as_alias  �L  �K  j  f   : ;�O  �N  �R  �Q  d m   A B�J
�J 
alisb o      �I�I 0 original_item  ` m   6 7kk�                                                                                  MACS  alis    t  Macintosh HD               ҽS]H+     '
Finder.app                                                      ���qX�        ����  	                CoreServices    Ҽ��      �p�J       '   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ] R      �Hl�G
�H .ascrerr ****      � ****l o      �F�F 
0 errmsg  �G  ^ L   N Pmm m   N O�E
�E 
msng[ n�Dn L   Q Xoo I   Q W�Cp�B�C 0 	make_with  p q�Aq o   R S�@�@ 0 original_item  �A  �B  �D  �U  V L   [ ^rr N   [ ]ss  f   [ \�V  8 tut l     �?�>�=�?  �>  �=  u vwv l      �<xy�<  x ! !@abstructPut into trash.   y �zz 6 ! @ a b s t r u c t  P u t   i n t o   t r a s h . w {|{ i   � �}~} I      �;�:�9�; 0 
into_trash  �:  �9  ~ k      ��� r     ��� I     �8�7�6�8 0 as_alias  �7  �6  � o      �5�5 
0 a_file  � ��� O    ��� I   �4��3
�4 .coredeloobj        obj � o    �2�2 
0 a_file  �3  � m    	���                                                                                  MACS  alis    t  Macintosh HD               ҽS]H+     '
Finder.app                                                      ���qX�        ����  	                CoreServices    Ҽ��      �p�J       '   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��1� I    �0�/�.�0 0 update_pathinfo  �/  �.  �1  | ��� l     �-�,�+�-  �,  �+  � ��� l      �*���*  � c ]!@abstructRemove the item referd from the target XFile instance.@result script object : me   � ��� � ! @ a b s t r u c t  R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   m e � ��� i   � ���� I      �)�(�'�) 
0 remove  �(  �'  � k     *�� ��� r     ��� I     �&�%�$�& 0 quoted_path  �%  �$  � o      �#�# 
0 a_file  � ��� r    ��� n   ��� n  	 ��� I    �"�!� �" 0 as_text  �!  �   � o   	 �� 0 	_pathinfo 	_pathInfo�  f    	� o      �� 
0 a_path  � ��� I   ���
� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  r m   - r  � o    �� 
0 a_file  �  � ��� r    !��� o    �� 
0 a_path  � n     ��� n    ��� o     �� 0 	_item_ref  � o    �� 0 	_pathinfo 	_pathInfo�  f    � ��� r   " '��� m   " #�
� 
msng� n     ��� o   $ &�� 0 _inforecord _infoRecord�  f   # $� ��� L   ( *��  f   ( )�  � ��� l     ����  �  �  � ��� l      ����  �   !@group Making subfolders    � ��� 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  � ��� l     ����  �  �  � ��� l      ����  � � �!@abstructMake a sub folder.@descriptionmissing value will be returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.@result script object or missing value : a XFile instance of newly created folder.   � ���� ! @ a b s t r u c t  M a k e   a   s u b   f o l d e r .  @ d e s c r i p t i o n  m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . � ��� i   � ���� I      ���� 0 make_folder  � ��
� o      �	�	 0 folder_name  �
  �  � k     !�� ��� Z     ����� H     �� l    ���� I     ���� 0 item_exists  �  �  �  �  � L   	 �� m   	 
�
� 
msng�  �  � ��� l   � �����   ��  ��  � ��� r    ��� I    ������� 	0 child  � ���� o    ���� 0 folder_name  ��  ��  � o      ���� 0 
new_folder  � ���� L    !�� n    ��� I     ������� 0 	make_path  � ���� J    ����  ��  ��  � o    ���� 0 
new_folder  ��  � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstructMake folders which indicating the path of the XFile instance.@descriptionUsing a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.@result script object or missing value : a XFile instance of newly created folder.   � ��� ! @ a b s t r u c t  M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e .  @ d e s c r i p t i o n  U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . � ��� i   � ���� I      ������� 0 	make_path  � ���� o      ���� 0 opts  ��  ��  � k     R�� ��� r     ��� m     ��
�� boovfals� o      ���� 0 w_admin  � ��� Z    ������� =   	��� n    ��� m    ��
�� 
pcls� o    ���� 0 opts  � m    ��
�� 
reco� r    ��� n       o    ���� 0 
with_admin   o    ���� 0 opts  � o      ���� 0 w_admin  ��  ��  �  Z    0���� I    �������� 0 item_exists  ��  ��   Z    ,�� I    #�������� 0 	is_folder  ��  ��   L   & (		  f   & '��   m   + ,��
�� 
msng��  ��   

 I  1 @��
�� .sysoexecTEXT���     TEXT b   1 : m   1 2 �  m k d i r   - p   l  2 9���� n   2 9 1   7 9��
�� 
strq I   2 7�������� 0 
posix_path  ��  ��  ��  ��   ����
�� 
badm o   ; <���� 0 w_admin  ��    Z  A O���� I   A F�������� 0 item_exists  ��  ��   L   I K  f   I J��  ��   �� L   P R m   P Q��
�� 
msng��  �  l     ��������  ��  ��     l     ��������  ��  ��    !"! l      ��#$��  # 0 *!@group Reading and Writing File Contents    $ �%% T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  " &'& l     ��������  ��  ��  ' ()( l      ��*+��  * X R!@abstructRead file contents as UTF-8 encoded text.@result Unicode text (UTF-8)   + �,, � ! @ a b s t r u c t  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) ) -.- i   � �/0/ I      �������� 0 read_as_utf8  ��  ��  0 k     11 232 I     �������� !0 check_existance_raising_error  ��  ��  3 4��4 L    55 I   ��67
�� .rdwrread****        ****6 l   8����8 I    �������� 0 as_alias  ��  ��  ��  ��  7 ��9��
�� 
as  9 m    ��
�� 
utf8��  ��  . :;: l     ��������  ��  ��  ; <=< l      ��>?��  > u o!@abstructWrite data into the file as UTF-8 encoded text.@param a_data (text) : data to write into the file.   ? �@@ � ! @ a b s t r u c t  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . = ABA i   � �CDC I      ��E���� 0 write_as_utf8  E F��F o      ���� 
0 a_data  ��  ��  D k     %GG HIH r     JKJ I    ��LM
�� .rdwropenshor       fileL I     �������� 0 as_furl  ��  ��  M ��N��
�� 
permN m    ��
�� boovtrue��  K o      ���� 
0 output  I OPO I   ��QR
�� .rdwrseofnull���     ****Q o    ���� 
0 output  R ��S��
�� 
set2S m    ����  ��  P TUT I   ��VW
�� .rdwrwritnull���     ****V o    ���� 
0 a_data  W ��XY
�� 
refnX o    ���� 
0 output  Y ��Z��
�� 
as  Z m    ��
�� 
utf8��  U [��[ I    %��\��
�� .rdwrclosnull���     ****\ o     !���� 
0 output  ��  ��  B ]^] l     ��������  ��  ��  ^ _`_ l      ��ab��  a " !@group Parent and Children    b �cc 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  ` ded l     ��������  ��  ��  e fgf l      ��hi��  h � �!@abstructObtain a folder containing the item referenced by the XFile instance.@result script object : a XFile instance of the parent folder.   i �jj  ! @ a b s t r u c t  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . g klk i   � �mnm I      �������� 0 parent_folder  ��  ��  n L     oo I     �p�~� 0 make_with_pathinfo  p q�}q n   rsr n   tut I    �|�{�z�| 0 parent_folder  �{  �z  u o    �y�y 0 	_pathinfo 	_pathInfos  f    �}  �~  l vwv l     �x�w�v�x  �w  �v  w xyx l      �uz{�u  z!@abstructObtain an item in the folder with specifying a sub path from the target.@descriptionIf this methods is sent to non exsisting folder, missing value is returend.@param suppath(text) :a sub path to obtain.@result script object or missing value : a XFile instance   { �||& ! @ a b s t r u c t  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  @ d e s c r i p t i o n  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e y }~} i   � �� I      �t��s�t 	0 child  � ��r� o      �q�q 0 subpath  �r  �s  � Z     ���p�� I     �o�n�m�o 0 item_exists_without_update  �n  �m  � L    �� I    �l��k�l 0 make_with_pathinfo  � ��j� n  	 ��� n  
 ��� I    �i��h�i 	0 child  � ��g� o    �f�f 0 subpath  �g  �h  � o   
 �e�e 0 	_pathinfo 	_pathInfo�  f   	 
�j  �k  �p  � L    �� m    �d
�d 
msng~ ��� l     �c�b�a�c  �b  �a  � ��� i   � ���� I      �`��_�` 0 child_posix  � ��^� o      �]�] 0 subpath  �^  �_  � Z     "���\�� I     �[�Z�Y�[ 0 item_exists  �Z  �Y  � k    �� ��� r    ��� I    �X�W�V�X 0 
posix_path  �W  �V  � o      �U�U 
0 a_path  � ��� r    ��� b    ��� o    �T�T 
0 a_path  � o    �S�S 0 subpath  � o      �R�R 
0 a_path  � ��Q� L    �� I    �P��O�P 0 	make_with  � ��N� o    �M�M 
0 a_path  �N  �O  �Q  �\  � L     "�� m     !�L
�L 
msng� ��� l     �K�J�I�K  �J  �I  � ��� l     �H�G�F�H  �G  �F  � ��� l      �E���E  ���!@abstructObtain a XFile instance reference unique name item in the folder.@descriptionIf the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.@param a_candidate(text or list) :A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.@result script object : a XFile instance   � ���T ! @ a b s t r u c t  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  @ d e s c r i p t i o n  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   :  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e � ��� i   � ���� I      �D��C�D 0 unique_child  � ��B� o      �A�A 0 a_candidate  �B  �C  � k     w�� ��� Z     ���@�?� H     �� I     �>�=�<�> 0 	is_folder  �=  �<  � L   	 �� m   	 
�;
�; 
msng�@  �?  � ��� r    )��� n   ��� I    �:��9�: 0 
split_name  � ��8� o    �7�7 0 a_candidate  �8  �9  � o    �6�6 0 pathinfo PathInfo� J      �� ��� o      �5�5 0 
a_basename  � ��4� o      �3�3 0 a_suffix  �4  � ��� Z   * ;���2�� =  * -��� o   * +�1�1 0 a_suffix  � m   + ,�0
�0 
msng� r   0 3��� m   0 1�� ���  � o      �/�/ 0 a_suffix  �2  � r   6 ;��� b   6 9��� m   6 7�� ���  .� o   7 8�.�. 0 a_suffix  � o      �-�- 0 a_suffix  � ��� r   < ?��� m   < =�,�, � o      �+�+ 0 i  � ��� r   @ C��� m   @ A�� ���  � o      �*�* 0 escape_suffix  � ��� T   D t�� k   I o�� ��� r   I U��� I   I S�)��(�) 	0 child  � ��'� b   J O��� b   J M��� o   J K�&�& 0 
a_basename  � o   K L�%�% 0 escape_suffix  � o   M N�$�$ 0 a_suffix  �'  �(  � o      �#�# 0 a_child  � ��"� Z   V o���!�� n  V [��� I   W [� ���  0 item_exists  �  �  � o   V W�� 0 a_child  � k   ^ k�� ��� r   ^ e� � b   ^ c 1   ^ _�
� 
spac l  _ b�� c   _ b o   _ `�� 0 i   m   ` a�
� 
utxt�  �    o      �� 0 escape_suffix  � � r   f k [   f i	
	 o   f g�� 0 i  
 m   g h��  o      �� 0 i  �  �!  �  S   n o�"  � � L   u w o   u v�� 0 a_child  �  �  l     ����  �  �    i   � � I      ���� 0 list_children  �  �   L     
 I    	�
�	
�
 .earslfdrutxt  @    file I     ���� 0 as_furl  �  �  �	    l     ����  �  �    l      ��  <6!@abstruct
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. Each XFile instance in the target folder is passed to the &quot;do&quot; handler.The do handler must return true or false. When the do handler return false, the process is stoped immediately.@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
    �l ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .    E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r .  T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y .  @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
  i   � � I      � � � 0 each    !��! o      ���� 0 a_script  ��  �    k     @"" #$# r     %&% I     �������� 0 list_children  ��  ��  & o      ���� 
0 a_list  $ '(' h    ��)�� 0 listwrapper ListWrapper) j     ��*
�� 
pcnt* o     ���� 
0 a_list  ( +,+ l   ��������  ��  ��  , -��- Y    @.��/0��. k    ;11 232 r    +454 I    )��6���� 	0 child  6 7��7 n    %898 4   " %��:
�� 
cobj: o   # $���� 0 n  9 n    ";<; 1     "��
�� 
pcnt< o     ���� 0 listwrapper ListWrapper��  ��  5 o      ���� 
0 x_item  3 =��= Z   , ;>?����> H   , 3@@ n  , 2ABA I   - 2��C���� 0 do  C D��D o   - .���� 
0 x_item  ��  ��  B o   , -���� 0 a_script  ?  S   6 7��  ��  ��  �� 0 n  / m    ���� 0 I   ��E��
�� .corecnte****       ****E o    ���� 
0 a_list  ��  ��  ��   FGF l     ��������  ��  ��  G HIH l      ��JK��  J * $!@group Working with Shell Commands    K �LL H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  I MNM l     ��������  ��  ��  N OPO l      ��QR��  Q	!@abstruct
Run passed shell command taking the target as an argument.
@description
&quot;%s&quot; in the command will be replaced with the target's path.
@param a_command(text) : shell command including %s.
@result text : standard output of the shell command
   R �SS ! @ a b s t r u c t 
 R u n   p a s s e d   s h e l l   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n 
 & q u o t ; % s & q u o t ;   i n   t h e   c o m m a n d   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t ' s   p a t h . 
 @ p a r a m   a _ c o m m a n d ( t e x t )   :   s h e l l   c o m m a n d   i n c l u d i n g   % s . 
 @ r e s u l t   t e x t   :   s t a n d a r d   o u t p u t   o f   t h e   s h e l l   c o m m a n d 
P TUT i   � �VWV I      ��X���� 0 perform_shell  X Y��Y o      ���� 0 	a_command  ��  ��  W k     ZZ [\[ r     ]^] n    	_`_ 1    	��
�� 
strq` n    aba 1    ��
�� 
strqb I     �������� 0 normalized_posix_path  ��  ��  ^ o      ���� 
0 a_path  \ c��c L    dd I   ��e��
�� .sysoexecTEXT���     TEXTe b    fgf b    hih b    jkj b    lml m    nn �oo  e v a l   $ ( p r i n t f  m n   pqp 1    ��
�� 
strqq o    ���� 0 	a_command  k 1    ��
�� 
spaci o    ���� 
0 a_path  g m    rr �ss  )��  ��  U tut l     ��������  ��  ��  u vwv l      ��xy��  x � �!@abstruct
Run test command taking the target as an argument.
@param option(text) : 
An option to passed to the test command. See the man page of the test command.
@result boolean : true if test command successfully exits.
   y �zz� ! @ a b s t r u c t 
 R u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ p a r a m   o p t i o n ( t e x t )   :   
 A n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . 
w {|{ i   � �}~} I      ������ 0 
shell_test   ���� o      ���� 
0 option  ��  ��  ~ k     �� ��� Q     ���� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� m    �� ��� 
 t e s t  � o    ���� 
0 option  � 1    ��
�� 
spac� I    �������� 0 quoted_path  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    ��
�� boovfals� ���� L    �� m    ��
�� boovtrue��  | ��� l     ��������  ��  ��  � ��� l      ������  �  == private *   � ���  = =   p r i v a t e   *� ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 	deep_copy  ��  ��  � L     �� I     ������� 0 make_with_pathinfo  � ���� n   ��� n   ��� I    �������� 	0 clone  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 item_ref  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_ref  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� i   ��� I      �������� !0 check_existance_raising_error  ��  ��  � Z     !������� H     �� l    ������ n    ��� n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     ��  ��  � R    ����
�� .ascrerr ****      � ****� b    ��� b    ��� m    �� ��� 
 i t e m  � n    ��� 1    ��
�� 
strq� l   ������ n   ��� n   ��� I    ������� 0 as_text  ��  �  � o    �~�~ 0 	_pathinfo 	_pathInfo�  f    ��  ��  � m    �� ���     d o e s   n o t   e x i s t .� �}��|
�} 
errn� m    �{�{F�|  ��  ��  � ��� l     �z�y�x�z  �y  �x  � ��� i  ��� I      �w�v�u�w 0 update_pathinfo  �v  �u  � k     $�� ��� r     ��� n    ��� I    �t��s�t 0 make_with_opts  � ��� n   ��� n   ��� I    �r�q�p�r 0 item_ref  �q  �p  � o    �o�o 0 	_pathinfo 	_pathInfo�  f    � ��n� K    �� �m��l�m 0 prefering_posix  � n   ��� n   ��� I    �k�j�i�k 0 is_posix  �j  �i  � o    �h�h 0 	_pathinfo 	_pathInfo�  f    �l  �n  �s  � o     �g�g 0 pathinfo PathInfo� n     ��� o    �f�f 0 	_pathinfo 	_pathInfo�  f    � ��e� L    $�� n   #��� o     "�d�d 0 	_pathinfo 	_pathInfo�  f     �e  � ��� l     �c�b�a�c  �b  �a  � ��� i  ��� I      �`�_�^�` 0 dump  �_  �^  � L     �� n    ��� n   ��� I    �]�\�[�] 0 as_text  �\  �[  � o    �Z�Z 0 	_pathinfo 	_pathInfo�  f     � ��� l     �Y�X�W�Y  �X  �W  �    i   I     �V�U�T
�V .ascrcmnt****      � ****�U  �T   M      I     �S�R
�S .ascrcmnt****      � **** I    �Q�P�O�Q 0 dump  �P  �O  �R    l     �N�M�L�N  �M  �L   	 i  

 I      �K�J�I�K 	0 debug  �J  �I   k     1  I    �H
�H .MoloBootscpt        scpt l    �G�F I    �E�D�C
�E .MoloMKloscpt    ��� null�D  �C  �G  �F   �B�A
�B 
forM  f    �A    r     c     m     � F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d f m    �@
�@ 
psxf o      �?�? 
0 a_path    r     I    �>�=�> 0 	make_with    �<  o    �;�; 
0 a_path  �<  �=   o      �:�: 0 a_xfile   !"! l   �9#$�9  # K Ereturn a_result's change_path_extension(missing value)'s posix_path()   $ �%% � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )" &'& r    '()( n   %*+* I     %�8,�7�8 0 unique_child  , -�6- m     !.. �// : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f�6  �7  + n    010 I     �5�4�3�5 0 parent_folder  �4  �3  1 o    �2�2 0 a_xfile  ) o      �1�1 0 new_named_file  ' 2�02 I  ( 1�/3�.
�/ .ascrcmnt****      � ****3 n  ( -454 I   ) -�-�,�+�- 0 	item_name  �,  �+  5 o   ( )�*�* 0 new_named_file  �.  �0  	 676 l     �)�(�'�)  �(  �'  7 898 i  :;: I     �&�%�$
�& .aevtoappnull  �   � ****�%  �$  ; k     << =>= l     �#?@�#  ?  return debug()   @ �AA  r e t u r n   d e b u g ( )> B�"B Q     CDEC I   �!FG
�! .HBsushHBTEXT    ��� fileF l   H� �H I   �I�
� .earsffdralis        afdrI  f    �  �   �  G �J�
� 
rcIPJ m   	 
�
� boovtrue�  D R      �KL
� .ascrerr ****      � ****K o      �� 0 msg  L �M�
� 
errnM o      �� 	0 errno  �  E I   �N�
� .sysodisAaleR        TEXTN l   O��O b    PQP b    RSR o    �� 0 msg  S o    �
� 
ret Q o    �� 	0 errno  �  �  �  �"  9 T�T l     ���
�  �  �
  �       C�	UVW �XYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~����������������������	  U A�������� ������������������������������������������������������������������������������������������������������������������
� 
pimr� 0 pathinfo PathInfo
� 
pnam� 0 _prefer_posix  � 0 prefer_posix  � 0 	make_with  � 0 make_with_pathinfo  �  0 change_name  �� 0 change_folder  �� 0 change_path_extension  �� 0 as_alias  �� 0 as_furl  �� 0 hfs_path  �� 0 
posix_path  �� 0 normalized_posix_path  �� 0 quoted_path  �� 0 	is_folder  �� 0 
is_package  �� 0 is_alias  �� 0 
is_symlink  �� 0 
is_visible  �� 0 type_identifier  �� 0 	set_types  �� 0 info  �� 0 info_with_size  �� 0 re_info  �� 0 	item_name  �� 0 basename  �� 0 path_extension  �� 0 volume_name  �� 0 bundle_resource  �� $0 bundle_infoplist bundle_InfoPlist�� 0 bundle_resources_folder  �� 0 item_exists  �� 0 item_exists_without_update  
�� .coredoexbool       obj �� 0 	rename_to  �� 0 copy_to  �� 0 copy_with_opts  �� 0 finder_copy_to  �� 0 move_to  �� 0 move_with_replacing  �� 0 resolve_alias  �� 0 
into_trash  �� 
0 remove  �� 0 make_folder  �� 0 	make_path  �� 0 read_as_utf8  �� 0 write_as_utf8  �� 0 parent_folder  �� 	0 child  �� 0 child_posix  �� 0 unique_child  �� 0 list_children  �� 0 each  �� 0 perform_shell  �� 0 
shell_test  �� 0 	deep_copy  �� 0 item_ref  �� !0 check_existance_raising_error  �� 0 update_pathinfo  �� 0 dump  
�� .ascrcmnt****      � ****�� 	0 debug  
�� .aevtoappnull  �   � ****V ����� �  ��� �����
�� 
cobj� ��   �� 
�� 
scpt��  � �����
�� 
cobj� ��   ��
�� 
osax��  W ��   �� 
�� 
scpt
� boovtrueX �� )���������� 0 prefer_posix  �� ����� �  ���� 0 bool  ��  � ���� 0 bool  � ���� 0 _prefer_posix  �� �)�,FY �� A���������� 0 	make_with  �� ����� �  ���� 0 file_ref  ��  � �������� 0 file_ref  �� 
0 is_hfs  �� 0 	path_info  � 	�������� ]��������
�� 
ctxt
�� 
utxt
�� 
TEXT
�� 
pcls�� 0 make_with_hfs  �� 0 _prefer_posix  �� 0 make_with_posix  �� 0 make_with_pathinfo  �� YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ Z �� ����������� 0 make_with_pathinfo  �� ����� �  ���� 0 	path_info  ��  � �������� 0 	path_info  �� 0 a_parent  �� 0 xfile XFile� �� ���� 0 xfile XFile� �����������
�� .ascrinit****      � ****� k      ��  ���  ���  ���  ���  �����  ��  ��  � ����������
�� 
pare�� 0 	_pathinfo 	_pathInfo�� 0 _inforecord _infoRecord�� 0 _prefer_posix  �� 0 _is_symlink  � ��������������
�� 
pare�� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� 0 _is_symlink  �� !b  N  Ob   �O�Ob   j+ �O��� )E�O��K S�O�[ �� ����������� 0 change_name  �� ����� �  ���� 
0 a_name  ��  � ������ 
0 a_name  �� 0 	path_info  � �������� 0 	_pathinfo 	_pathInfo�� 0 change_name  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ \ � ��~�}���|� 0 change_folder  �~ �{��{ �  �z�z 0 
folder_ref  �}  � �y�x�y 0 
folder_ref  �x 0 	path_info  � �w�v�u�w 0 	_pathinfo 	_pathInfo�v 0 change_folder  �u 0 make_with_pathinfo  �| )�,�k+ E�O*�k+ ] �t ��s�r���q�t 0 change_path_extension  �s �p��p �  �o�o 0 a_suffix  �r  � �n�n 0 a_suffix  � �m�l�k�m 0 	_pathinfo 	_pathInfo�l 0 change_path_extension  �k 0 make_with_pathinfo  �q *)�,�k+ k+ ^ �j�i�h���g�j 0 as_alias  �i  �h  �  � �f�e�d�f !0 check_existance_raising_error  �e 0 	_pathinfo 	_pathInfo�d 0 as_alias  �g *j+  O)�,j+ _ �c&�b�a���`�c 0 as_furl  �b  �a  �  � �_�^�_ 0 	_pathinfo 	_pathInfo�^ 0 as_furl  �` 	)�,j+ ` �]6�\�[���Z�] 0 hfs_path  �\  �[  �  � �Y�X�Y 0 	_pathinfo 	_pathInfo�X 0 hfs_path  �Z 	)�,j+ a �WF�V�U���T�W 0 
posix_path  �V  �U  �  � �S�R�S 0 	_pathinfo 	_pathInfo�R 0 
posix_path  �T 	)�,j+ b �QV�P�O���N�Q 0 normalized_posix_path  �P  �O  �  � �M�L�M 0 	_pathinfo 	_pathInfo�L 0 normalized_posix_path  �N 	)�,j+ c �Ka�J�I���H�K 0 quoted_path  �J  �I  �  � �G�F�E�G 0 	_pathinfo 	_pathInfo�F 0 
posix_path  
�E 
strq�H )�,j+ �,Ed �Dz�C�B���A�D 0 	is_folder  �C  �B  � �@�@ 0 info_rec  � �?�>�? 0 info  
�> 
asdr�A *j+  E�O��,Ee �=��<�;���:�= 0 
is_package  �<  �;  � �9�9 0 info_rec  � �8�7�8 0 info  
�7 
ispk�: *j+  E�O��,Ef �6��5�4���3�6 0 is_alias  �5  �4  � �2�2 0 info_rec  � �1�0�1 0 info  
�0 
alis�3 *j+  E�O��,Eg �/��.�-���,�/ 0 
is_symlink  �.  �-  �  � �+�*��)�(�'�&�+ 0 _is_symlink  
�* 
msng�) 0 quoted_path  
�( .sysoexecTEXT���     TEXT�'  �&  �, 4)�,�  & �*j+ %j Oe)�,FW X  f)�,FY hO)�,Eh �%��$�#���"�% 0 
is_visible  �$  �#  � �!�! 0 info_rec  � � ��  0 info  
� 
pvis�" *j+  E�O��,Ei �������� 0 type_identifier  �  �  � �� 0 info_rec  � ��� 0 info  
� 
utid� *j+  E�O��,Ej �
������ 0 	set_types  � ��� �  ��� 0 creator_code  � 0 	type_code  �  � ���� 0 creator_code  � 0 	type_code  � 
0 a_file  � ��'��
�	�� 0 	is_folder  � 0 as_alias  
� 
fcrt
�
 
asty
�	 
msng� 0 _inforecord _infoRecord� ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY hk �7������ 0 info  �  �  �  � ���� ����� 0 _inforecord _infoRecord
� 
msng� !0 check_existance_raising_error  �  0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file� ()�,�  *j+ O*j+ �fl )�,FY hO)�,El ��Z���������� 0 info_with_size  ��  ��  �  � �������������� 0 _inforecord _infoRecord
�� 
msng�� !0 check_existance_raising_error  �� 0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file�� D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,Em ������������� 0 re_info  ��  ��  �  � �������������� 0 _inforecord _infoRecord
�� 
msng
�� 
ptsz
�� 
bool�� 0 as_furl  
�� .sysonfo4asfe        file�� <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,En ������������� 0 	item_name  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 	item_name  �� 	)�,j+ o ������������� 0 basename  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 basename  �� 	)�,j+ p ������������� 0 path_extension  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 path_extension  �� 	)�,j+ q ������������� 0 volume_name  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 volume_name  �� 	)�,j+ r ������������ 0 bundle_resource  �� ����� �  ���� 0 resource_name  ��  � ���� 0 resource_name  � ��������
�� 
in B�� 0 as_alias  
�� .sysorpthalis        TEXT�� 0 	make_with  �� *��*j+ l k+ s ��"���������� $0 bundle_infoplist bundle_InfoPlist��  ��  �  � &���� 0 child_posix  �� *�k+ t ��-���������� 0 bundle_resources_folder  ��  ��  �  � 1���� 0 child_posix  �� *�k+ u ��D���������� 0 item_exists  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 item_exists  �� 	)�,j+ v ��T���������� 0 item_exists_without_update  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  �� 	)�,j+ w ��d��������
�� .coredoexbool       obj ��  ��  �  � ���� 0 item_exists  �� *j+  x ��p���������� 0 	rename_to  �� ����� �  ���� 0 new_name  ��  � ���� 0 new_name  � ����������������� 0 item_exists  �� 0 item_ref  
�� 
pnam
�� 
msng�� 0 _inforecord _infoRecord�� 0 	_pathinfo 	_pathInfo�� 0 set_name  �� 1*j+   fY hO� �)j+ �,FUO�)�,FO)�,�k+ Oey ������������� 0 copy_to  �� ����� �  ���� 0 a_destination  ��  � ���� 0 a_destination  � ����
�� 
msng�� 0 copy_with_opts  �� 	*��l+ z ������������� 0 copy_with_opts  �� ����� �  ������ 0 a_destination  �� 0 opts  ��  � ������������������������ 0 a_destination  �� 0 opts  �� 0 w_replacing  �� 0 w_admin  �� 0 
w_removing  �� 0 command  �� 0 com_opts  �� 0 is_folder_to  �� 0 destination_path  �� 0 source_path  �� 0 	a_command  � ���������~�}�|�{�z�y�x�w�v3:CIN�u�td�s�r�q�p�o�n�m
�� 
pcls
�� 
reco�� 0 with_replacing  �  �~  �} 0 
with_admin  �| 0 with_removing  �{ 	0 ditto  
�z 
ctxt
�y 
utxt
�x 
TEXT�w 0 parent_folder  �v 	0 child  �u 0 item_exists  �t 
0 remove  �s 0 	is_folder  �r 0 normalized_posix_path  
�q 
strq
�p 
spac
�o 
badm
�n .sysoexecTEXT���     TEXT�m 0 	item_name  ��9eE�OfE�OfE�O�E�O��,�  U 
��,E�W X  hO 
��,E�W X  hO 
��,E�W X  hO ��,E �E�Y hW X  hY hO���mv��, *j+ �k+ E�Y hO��  a E�O� �a %E�Y hY �a   
a E�Y hOfE�O�j+  $� 
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�{ �l��k�j���i�l 0 finder_copy_to  �k �h��h �  �g�f�g 0 a_destination  �f 0 with_replacing  �j  � �e�d�c�b�a�e 0 a_destination  �d 0 with_replacing  �c 0 destination  �b 0 source_alias  �a 0 new_item  � �`��_�^�]�\�[�Z�` 0 as_alias  
�_ 
insh
�^ 
alrp�] 
�\ .coreclon****      � ****
�[ 
alis�Z 0 	make_with  �i +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ | �Y��X�W���V�Y 0 move_to  �X �U��U �  �T�T 0 a_destination  �W  � �S�R�Q�P�S 0 a_destination  �R 0 destination_path  �Q 0 source_path  �P 0 msg  � 	�O�N��M�L�K�J�I�H�O 0 item_exists  �N 0 quoted_path  
�M 
spac
�L .sysoexecTEXT���     TEXT�K 0 msg  �J  
�I 
ascr
�H .ascrcmnt****      � ****�V =*j+  O�j+ E�O*j+ E�O �%�%�%j W X  � �j UOfOe} �G�F�E���D�G 0 move_with_replacing  �F �C��C �  �B�B 0 a_destination  �E  � �A�@�?�>�A 0 a_destination  �@ 0 destination_path  �? 0 source_path  �> 0 msg  � 	�=�<#�;�:�9�8�7�6�= 0 item_exists  �< 0 quoted_path  
�; 
spac
�: .sysoexecTEXT���     TEXT�9 0 msg  �8  
�7 
ascr
�6 .ascrcmnt****      � ****�D =*j+  O�j+ E�O*j+ E�O �%�%�%j W X  � �j UOfOe~ �5:�4�3	 	�2�5 0 resolve_alias  �4  �3  	  �1�0�/�.�1 0 
x_original  �0 0 info_rec  �/ 0 original_item  �. 
0 errmsg  	 �-�,�+�*�)�(k�'�&�%�$�#�- 0 
is_symlink  �, 0 	deep_copy  �+ 0 item_exists  
�* 
msng�) 0 info  
�( 
alis�' 0 as_alias  
�& 
orig�% 
0 errmsg  �$  �# 0 	make_with  �2 _*j+   *j+ E�O�j+  �Y �Y hO*j+ E�O��,E * � )j+ �,�&E�UW 	X 	 
�O*�k+ Y ) �"~�!� 		��" 0 
into_trash  �!  �   	 �� 
0 a_file  	 ����� 0 as_alias  
� .coredeloobj        obj � 0 update_pathinfo  � *j+  E�O� �j UO*j+ � ����		�� 
0 remove  �  �  	 ��� 
0 a_file  � 
0 a_path  	 ��������� 0 quoted_path  � 0 	_pathinfo 	_pathInfo� 0 as_text  
� .sysoexecTEXT���     TEXT� 0 	_item_ref  
� 
msng� 0 _inforecord _infoRecord� +*j+  E�O)�,j+ E�O�%j O�)�,�,FO�)�,FO)� ����		�
� 0 make_folder  � �		�	 	  �� 0 folder_name  �  	 ��� 0 folder_name  � 0 
new_folder  	 ����� 0 item_exists  
� 
msng� 	0 child  � 0 	make_path  �
 "*j+   �Y hO*�k+ E�O�jvk+ � ��� ��			
��� 0 	make_path  �  ��	�� 	  ���� 0 opts  ��  		 ������ 0 opts  �� 0 w_admin  	
 ��������������������
�� 
pcls
�� 
reco�� 0 
with_admin  �� 0 item_exists  �� 0 	is_folder  
�� 
msng�� 0 
posix_path  
�� 
strq
�� 
badm
�� .sysoexecTEXT���     TEXT�� SfE�O��,�  
��,E�Y hO*j+  *j+  )Y �Y hO�*j+ �,%�l 
O*j+  )Y hO�� ��0����		���� 0 read_as_utf8  ��  ��  	  	 ������������ !0 check_existance_raising_error  �� 0 as_alias  
�� 
as  
�� 
utf8
�� .rdwrread****        ****�� *j+  O*j+ ��l � ��D����		���� 0 write_as_utf8  �� ��	�� 	  ���� 
0 a_data  ��  	 ������ 
0 a_data  �� 
0 output  	 ������������������������ 0 as_furl  
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
as  
�� 
utf8�� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� &*j+  �el E�O��jl O����� 	O�j 
� ��n����		���� 0 parent_folder  ��  ��  	  	 �������� 0 	_pathinfo 	_pathInfo�� 0 parent_folder  �� 0 make_with_pathinfo  �� *)�,j+ k+ � �������		���� 	0 child  �� ��	�� 	  ���� 0 subpath  ��  	 ���� 0 subpath  	 ������������ 0 item_exists_without_update  �� 0 	_pathinfo 	_pathInfo�� 	0 child  �� 0 make_with_pathinfo  
�� 
msng�� *j+   *)�,�k+ k+ Y �� �������		���� 0 child_posix  �� ��	�� 	  ���� 0 subpath  ��  	 ������ 0 subpath  �� 
0 a_path  	 ���������� 0 item_exists  �� 0 
posix_path  �� 0 	make_with  
�� 
msng�� #*j+   *j+ E�O��%E�O*�k+ Y �� �������		���� 0 unique_child  �� ��	�� 	  ���� 0 a_candidate  ��  	 �������������� 0 a_candidate  �� 0 
a_basename  �� 0 a_suffix  �� 0 i  �� 0 escape_suffix  �� 0 a_child  	 ��������������������� 0 	is_folder  
�� 
msng�� 0 
split_name  
�� 
cobj�� 	0 child  �� 0 item_exists  
�� 
spac
�� 
utxt�� x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�� ������		���� 0 list_children  ��  ��  	  	 ������ 0 as_furl  
�� .earslfdrutxt  @    file�� *j+  j � ������		���� 0 each  �� ��	 �� 	   ���� 0 a_script  ��  	 ������������ 0 a_script  �� 
0 a_list  �� 0 listwrapper ListWrapper�� 0 n  �� 
0 x_item  	 	����)	!������������ 0 list_children  �� 0 listwrapper ListWrapper	! ��	"����	#	$��
�� .ascrinit****      � ****	" k     	%	% )����  ��  ��  	# ��
�� 
pcnt	$ ��
�� 
pcnt�� b  �
�� .corecnte****       ****
�� 
pcnt
�� 
cobj�� 	0 child  �� 0 do  �� A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��� ��W���	&	'�~�� 0 perform_shell  �� �}	(�} 	(  �|�| 0 	a_command  �  	& �{�z�{ 0 	a_command  �z 
0 a_path  	' �y�xn�wr�v�y 0 normalized_posix_path  
�x 
strq
�w 
spac
�v .sysoexecTEXT���     TEXT�~ *j+  �,�,E�O��,%�%�%�%j � �u~�t�s	)	*�r�u 0 
shell_test  �t �q	+�q 	+  �p�p 
0 option  �s  	) �o�o 
0 option  	* ��n�m�l�k�j
�n 
spac�m 0 quoted_path  
�l .sysoexecTEXT���     TEXT�k  �j  �r   �%�%*j+ %j W 	X  fOe� �i��h�g	,	-�f�i 0 	deep_copy  �h  �g  	,  	- �e�d�c�e 0 	_pathinfo 	_pathInfo�d 	0 clone  �c 0 make_with_pathinfo  �f *)�,j+ k+ � �b��a�`	.	/�_�b 0 item_ref  �a  �`  	.  	/ �^�]�^ 0 	_pathinfo 	_pathInfo�] 0 item_ref  �_ 	)�,j+ � �\��[�Z	0	1�Y�\ !0 check_existance_raising_error  �[  �Z  	0  	1 �X�W�V�U��T�S��X 0 	_pathinfo 	_pathInfo�W 0 item_exists_without_update  
�V 
errn�UF�T 0 as_text  
�S 
strq�Y ")�,j+  )��l�)�,j+ �,%�%Y h� �R��Q�P	2	3�O�R 0 update_pathinfo  �Q  �P  	2  	3 �N�M�L�K�J�N 0 	_pathinfo 	_pathInfo�M 0 item_ref  �L 0 prefering_posix  �K 0 is_posix  �J 0 make_with_opts  �O %b  )�,j+ �)�,j+ ll+ )�,FO)�,E� �I��H�G	4	5�F�I 0 dump  �H  �G  	4  	5 �E�D�E 0 	_pathinfo 	_pathInfo�D 0 as_text  �F 	)�,j+ � �C�B�A	6	7�@
�C .ascrcmnt****      � ****�B  �A  	6  	7 �?�>�? 0 dump  
�> .ascrcmnt****      � ****�@ )jd*j+   � �=�<�;	8	9�:�= 	0 debug  �<  �;  	8 �9�8�7�9 
0 a_path  �8 0 a_xfile  �7 0 new_named_file  	9 �6�5�4�3�2�1.�0�/�.
�6 .MoloMKloscpt    ��� null
�5 
forM
�4 .MoloBootscpt        scpt
�3 
psxf�2 0 	make_with  �1 0 parent_folder  �0 0 unique_child  �/ 0 	item_name  
�. .ascrcmnt****      � ****�: 2*j  �)l O��&E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
� �-;�,�+	:	;�*
�- .aevtoappnull  �   � ****�,  �+  	: �)�(�) 0 msg  �( 	0 errno  	; �'�&�%�$	<�#�"
�' .earsffdralis        afdr
�& 
rcIP
�% .HBsushHBTEXT    ��� file�$ 0 msg  	< �!� �
�! 
errn�  	0 errno  �  
�# 
ret 
�" .sysodisAaleR        TEXT�*   )j  �el W X  ��%�%j  ascr  ��ޭ