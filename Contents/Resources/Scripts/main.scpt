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
osax��        j     �� 
�� 
pnam  m       �   
 X F i l e      l     ��������  ��  ��        l      ��  ��   		!@referencesPathInfo || help:openbook='net.script-factory.PathInfo.help'
Home page || http://www.script-factory.net/XModules/XFile/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XFile/changelog.html
Repository || https://github.com/tkurita/XFile.scptd

@title XFile Reference* Version : 1.7.1* Author : Kurita Tetsuro ((<scriptfactory@mac.com>))* Requirements : OS X 10.9 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

XFile provides unified object oriented interface to file operation (moving, removing, geting attributes and so on).Functions of file operations of AppleScript world is given by Scrpting Additions, Finder, System Events and shell commnads. 
It is cumbersome to find a proper way, because implemeted locations of functions are distributed.
XFile wraps these components and introduces a file object for unified object oriented interface.

== Example
@example
use XFile : script "XFile"use scripting additions(* Make a New Instance *)set a_xfile to XFile's make_with("/Users")set home_folder to XFile's make_with(path to home folder)(* Obtain File Infomation *)
log a_xfile's UTI()log a_xfile's is_folder() -- truelog a_xfile's is_package() -- falselog a_xfile's item_name() -- "Users"(* Obtain Parent and Child *)log home_folder's parent_folder()'s posix_path()-- "/Users"log home_folder's child("Documents")'s posix_path()-- "/Users/yourhome/Documents"log home_folder's child("Library/Scripts")'s posix_path()-- "/Users/yourhome/Library/Scripts"log home_folder's unique_child("Documents")'s posix_path()--"/Users/yourhome/Documents 2"(* Read and Write *)set test_file to home_folder's child("testfile")test_file's write_as_utf8("new data")log test_file's read_as_utf8() -- "new data"(* File Manipulations *)log test_file's item_exists() --trueset test_file2 to test_file's copy_to(home_folder's child("testfile2"))log test_file2's posix_path() -- "/Users/yourhome/testfile2"test_file2's move_to(home_folder's child("Documents"))log test_file2's posix_path() -- "/Users/yourhome/Documents/testfile2"test_file2's into_trash()log test_file2's posix_path() -- "/Users/yourhome/.Trash/testfile2"test_file's into_trash()(* Working with Shell Commands *)log test_file's perform_shell("cat %s") -- "new data"     �   ! @ r e f e r e n c e s  P a t h I n f o   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . P a t h I n f o . h e l p ' 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X F i l e / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X F i l e / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X F i l e . s c p t d 
 
 @ t i t l e   X F i l e   R e f e r e n c e  *   V e r s i o n   :   1 . 7 . 1  *   A u t h o r   :   K u r i t a   T e t s u r o   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) )  *   R e q u i r e m e n t s   :   O S   X   1 0 . 9   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
 
  X F i l e   p r o v i d e s   u n i f i e d   o b j e c t   o r i e n t e d   i n t e r f a c e   t o   f i l e   o p e r a t i o n   ( m o v i n g ,   r e m o v i n g ,   g e t i n g   a t t r i b u t e s   a n d   s o   o n ) .  F u n c t i o n s   o f   f i l e   o p e r a t i o n s   o f   A p p l e S c r i p t   w o r l d   i s   g i v e n   b y   S c r p t i n g   A d d i t i o n s ,   F i n d e r ,   S y s t e m   E v e n t s   a n d   s h e l l   c o m m n a d s .   
 I t   i s   c u m b e r s o m e   t o   f i n d   a   p r o p e r   w a y ,   b e c a u s e   i m p l e m e t e d   l o c a t i o n s   o f   f u n c t i o n s   a r e   d i s t r i b u t e d . 
 X F i l e   w r a p s   t h e s e   c o m p o n e n t s   a n d   i n t r o d u c e s   a   f i l e   o b j e c t   f o r   u n i f i e d   o b j e c t   o r i e n t e d   i n t e r f a c e . 
 
 = =   E x a m p l e 
 @ e x a m p l e 
 u s e   X F i l e   :   s c r i p t   " X F i l e "  u s e   s c r i p t i n g   a d d i t i o n s   ( *   M a k e   a   N e w   I n s t a n c e   * )  s e t   a _ x f i l e   t o   X F i l e ' s   m a k e _ w i t h ( " / U s e r s " )  s e t   h o m e _ f o l d e r   t o   X F i l e ' s   m a k e _ w i t h ( p a t h   t o   h o m e   f o l d e r )   ( *   O b t a i n   F i l e   I n f o m a t i o n   * ) 
 l o g   a _ x f i l e ' s   U T I ( )  l o g   a _ x f i l e ' s   i s _ f o l d e r ( )   - -   t r u e  l o g   a _ x f i l e ' s   i s _ p a c k a g e ( )   - -   f a l s e  l o g   a _ x f i l e ' s   i t e m _ n a m e ( )   - -   " U s e r s "   ( *   O b t a i n   P a r e n t   a n d   C h i l d   * )  l o g   h o m e _ f o l d e r ' s   p a r e n t _ f o l d e r ( ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / D o c u m e n t s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " L i b r a r y / S c r i p t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / L i b r a r y / S c r i p t s "  l o g   h o m e _ f o l d e r ' s   u n i q u e _ c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - - " / U s e r s / y o u r h o m e / D o c u m e n t s   2 "   ( *   R e a d   a n d   W r i t e   * )  s e t   t e s t _ f i l e   t o   h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e " )  t e s t _ f i l e ' s   w r i t e _ a s _ u t f 8 ( " n e w   d a t a " )  l o g   t e s t _ f i l e ' s   r e a d _ a s _ u t f 8 ( )   - -   " n e w   d a t a "   ( *   F i l e   M a n i p u l a t i o n s   * )  l o g   t e s t _ f i l e ' s   i t e m _ e x i s t s ( )   - - t r u e   s e t   t e s t _ f i l e 2   t o   t e s t _ f i l e ' s   c o p y _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e 2 " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   m o v e _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / D o c u m e n t s / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   i n t o _ t r a s h ( )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / . T r a s h / t e s t f i l e 2 "  t e s t _ f i l e ' s   i n t o _ t r a s h ( )   ( *   W o r k i n g   w i t h   S h e l l   C o m m a n d s   * )  l o g   t e s t _ f i l e ' s   p e r f o r m _ s h e l l ( " c a t   % s " )   - -   " n e w   d a t a "        l     ��������  ��  ��      ! " ! j   ! #�� #�� 0 _prefer_posix   # m   ! "��
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
  j klk l      �	mn�	  m &  !@group Working with Attributes    n �oo @ ! @ g r o u p   W o r k i n g   w i t h   A t t r i b u t e s  l pqp l     ����  �  �  q rsr l      �tu�  t P J!@abstruct
Obtain uniform type identifier (UTI) of the item 
@result text
   u �vv � ! @ a b s t r u c t 
 O b t a i n   u n i f o r m   t y p e   i d e n t i f i e r   ( U T I )   o f   t h e   i t e m   
 @ r e s u l t   t e x t 
s wxw i   T Wyzy I      ���� 0 type_identifier  �  �  z O     {|{ L    }} c    ~~ l   ��� � n   ��� I   	 ������� &0 typeoffile_error_ typeOfFile_error_� ��� l  	 ������ n  	 ��� I   
 �������� 0 
posix_path  ��  ��  �  f   	 
��  ��  � ���� l   ������ m    ��
�� 
msng��  ��  ��  ��  �  g    	�  �    m    ��
�� 
ctxt| n    ��� I    �������� "0 sharedworkspace sharedWorkspace��  ��  � o     ���� 0 nsworkspace NSWorkspacex ��� l     ��������  ��  ��  � ��� l      ������  � n h!@abstruct
Check whether the item is a folder or not.
@result boolean : true if the the item is folder.
   � ��� � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   a   f o l d e r   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   t h e   i t e m   i s   f o l d e r . 
� ��� i   X [��� I      �������� 0 	is_folder  ��  ��  � k     +�� ��� r     ��� I     �������� 0 type_identifier  ��  ��  � o      ���� 
0 my_uti  � ��� O    &��� Z    %������ =   ��� o    ���� 
0 my_uti  � m    �� ���  p u b l i c . f o l d e r� r    ��� m    ��
�� boovtrue� o      ���� 0 a_result  ��  � r    %��� n   #��� I    #������� ,0 type_conformstotype_ type_conformsToType_� ��� o    ���� 
0 my_uti  � ���� m    �� ���   c o m . a p p l e . b u n d l e��  ��  �  g    � o      ���� 0 a_result  � n   ��� I   	 �������� "0 sharedworkspace sharedWorkspace��  ��  � o    	���� 0 nsworkspace NSWorkspace� ��� L   ' )�� o   ' (���� 0 a_result  � ���� l   * *������  � { u
	-- �Ȃ��� info for �R�}���h�ŃG���[ -1700 ���N����B2020-02-03
	set info_rec to info()
	return folder of info_rec
	   � ��� � 
 	 - -  0j0\0K   i n f o   f o r  0�0�0�0�0g0�0�0�   - 1 7 0 0  0L�w0M0�0 2 0 2 0 - 0 2 - 0 3 
 	 s e t   i n f o _ r e c   t o   i n f o ( ) 
 	 r e t u r n   f o l d e r   o f   i n f o _ r e c 
 	��  � ��� l     ��������  ��  ��  � ��� l      ������  � n h!@abstructCheck whether the item is a package or not.@result boolean : true if the item is a package.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   p a c k a g e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   p a c k a g e . � ��� i   \ _��� I      �������� 0 
is_package  ��  ��  � k     
�� ��� L     �� l    ������ =    ��� m     �� ��� " c o m . a p p l e . p a c k a g e� I    �������� 0 type_identifier  ��  ��  ��  ��  � ���� l   	 	������  � C =	set info_rec to info()	return package folder of info_rec
	   � ��� z  	 s e t   i n f o _ r e c   t o   i n f o ( )  	 r e t u r n   p a c k a g e   f o l d e r   o f   i n f o _ r e c 
 	��  � ��� l     ��������  ��  ��  � ��� l      ������  � v p!@abstructCheck whether the item is an alias file or not.@result boolean : true if the item is an alias file.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . � ��� i   ` c��� I      �������� 0 is_alias  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� m   	 ��
�� 
alis� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � z t!@abstructCheck whether the item is a symbolic link or not.@result boolean : true if the item is a symbolic link.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k . � ��� i   d g��� I      �������� 0 
is_symlink  ��  ��  � k     3�� ��� Z     -������� =    ��� n    ��� o    ���� 0 _is_symlink  �  f     � m    ��
�� 
msng� Q    )���� k        I   ����
�� .sysoexecTEXT���     TEXT b     m     �  t e s t   - L   I    �������� 0 quoted_path  ��  ��  ��   �� r    	
	 m    ��
�� boovtrue
 n      o    ���� 0 _is_symlink    f    ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r   $ ) m   $ %��
�� boovfals n      o   & (���� 0 _is_symlink    f   % &��  ��  � �� L   . 3 n  . 2 o   / 1���� 0 _is_symlink    f   . /��  �  l     ��������  ��  ��    l      ����   j d!@abstructCheck whether the item is visible or not.@result boolean : true if the item is visible.    � � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e .   i   h k I      �������� 0 
is_visible  ��  ��   k        !"! r     #$# I     �������� 0 info  ��  ��  $ o      ���� 0 info_rec  " %��% L    && n    '(' 1   	 ��
�� 
pvis( o    	���� 0 info_rec  ��   )*) l     ��������  ��  ��  * +,+ l      ��-.��  - � �!@abstructSet creator code and type code to the item.@param creator_code (text) : creator code which consists of 4 characters<!-- end locale -->@param type_code (text) : type code which consists of 4 characters   . �//� ! @ a b s t r u c t  S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m .  @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s , 010 i   l o232 I      ��4���� 0 	set_types  4 565 o      ���� 0 creator_code  6 7��7 o      ���� 0 	type_code  ��  ��  3 Z     +89����8 H     :: I     �������� 0 	is_folder  ��  ��  9 k   	 ';; <=< r   	 >?> I   	 �������� 0 as_alias  ��  ��  ? o      �� 
0 a_file  = @A@ O    !BCB k     DD EFE r    GHG o    �~�~ 0 creator_code  H n      IJI 1    �}
�} 
fcrtJ o    �|�| 
0 a_file  F K�{K r     LML o    �z�z 0 	type_code  M n      NON 1    �y
�y 
astyO o    �x�x 
0 a_file  �{  C m    PP�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  A Q�wQ r   " 'RSR m   " #�v
�v 
msngS n     TUT o   $ &�u�u 0 _inforecord _infoRecordU  f   # $�w  ��  ��  1 VWV l     �t�s�r�t  �s  �r  W XYX l      �qZ[�q  Z!@abstructObtain file information.@descriptionDo &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().The size of the target will not be included.@result file infomation(record) : a result of info for command.   [ �\\( ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) .  T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . Y ]^] i   p s_`_ I      �p�o�n�p 0 info  �o  �n  ` k     'aa bcb Z     !de�m�ld =    fgf n    hih o    �k�k 0 _inforecord _infoRecordi  f     g m    �j
�j 
msnge k    jj klk I    �i�h�g�i !0 check_existance_raising_error  �h  �g  l m�fm r    non I   �epq
�e .sysonfo4asfe        filep I    �d�c�b�d 0 as_furl  �c  �b  q �ar�`
�a 
ptszr m    �_
�_ boovfals�`  o n     sts o    �^�^ 0 _inforecord _infoRecordt  f    �f  �m  �l  c u�]u L   " 'vv n  " &wxw o   # %�\�\ 0 _inforecord _infoRecordx  f   " #�]  ^ yzy l     �[�Z�Y�[  �Z  �Y  z {|{ l      �X}~�X  }82!@abstructObtain file information including its size.@descriptionDo &quot;info for&quot; command for the item with &quot;size&quot; option. The result is cached and same value is returned at next calling info_with_size() or ((<info>))().@result file infomation(record) : a result of info for command.   ~ �d ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   i n c l u d i n g   i t s   s i z e .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m   w i t h   & q u o t ; s i z e & q u o t ;   o p t i o n .    T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o _ w i t h _ s i z e ( )   o r   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . | ��� i   t w��� I      �W�V�U�W 0 info_with_size  �V  �U  � k     C�� ��� Z     =����T� =    ��� n    ��� o    �S�S 0 _inforecord _infoRecord�  f     � m    �R
�R 
msng� k    �� ��� I    �Q�P�O�Q !0 check_existance_raising_error  �P  �O  � ��N� r    ��� I   �M��
�M .sysonfo4asfe        file� I    �L�K�J�L 0 as_furl  �K  �J  � �I��H
�I 
ptsz� m    �G
�G boovtrue�H  � n     ��� o    �F�F 0 _inforecord _infoRecord�  f    �N  � ��� =    '��� n     %��� 1   # %�E
�E 
ptsz� n    #��� o   ! #�D�D 0 _inforecord _infoRecord�  f     !� m   % &�C
�C 
msng� ��B� r   * 9��� I  * 5�A��
�A .sysonfo4asfe        file� I   * /�@�?�>�@ 0 as_furl  �?  �>  � �=��<
�= 
ptsz� m   0 1�;
�; boovtrue�<  � n     ��� o   6 8�:�: 0 _inforecord _infoRecord�  f   5 6�B  �T  � ��9� L   > C�� n  > B��� o   ? A�8�8 0 _inforecord _infoRecord�  f   > ?�9  � ��� l     �7�6�5�7  �6  �5  � ��� l      �4���4  � � �!@abstructObtain file information again.@descriptionDo "info for" command for the item and reset the cache of ((<info>))().@result file infomation(record) : a result of info for command.   � ���~ ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   a g a i n .  @ d e s c r i p t i o n  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   x {��� I      �3�2�1�3 0 re_info  �2  �1  � k     ;�� ��� Z     5���0�� F     ��� l    ��/�.� >    ��� n    ��� o    �-�- 0 _inforecord _infoRecord�  f     � m    �,
�, 
msng�/  �.  � l 	  ��+�*� l   ��)�(� >   ��� n    ��� 1    �'
�' 
ptsz� n   ��� o   	 �&�& 0 _inforecord _infoRecord�  f    	� m    �%
�% 
msng�)  �(  �+  �*  � r    #��� I   �$��
�$ .sysonfo4asfe        file� I    �#�"�!�# 0 as_furl  �"  �!  � � ��
�  
ptsz� m    �
� boovtrue�  � n     ��� o     "�� 0 _inforecord _infoRecord�  f     �0  � r   & 5��� I  & 1���
� .sysonfo4asfe        file� I   & +���� 0 as_furl  �  �  � ���
� 
ptsz� m   , -�
� boovfals�  � n     ��� o   2 4�� 0 _inforecord _infoRecord�  f   1 2� ��� L   6 ;�� n  6 :��� o   7 9�� 0 _inforecord _infoRecord�  f   6 7�  � ��� l     ����  �  �  � ��� l      ����  � % !@group Obtain Path Infomation    � ��� > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  � ��� l     ����  �  �  � ��� l      ����  � W Q!@abstruct Obtain the name of the item referenced by the instance @result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e    @ r e s u l t   t e x t � ��� i   | ��� I      �
�	��
 0 	item_name  �	  �  � L     �� n    ��� n   ��� I    ���� 0 	item_name  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ����  �  �  � ��� l      � ���   � � �!@abstruct Obtain the base name (a name which does not include path extension) of the item referenced by the instance.@result text   � ���
 ! @ a b s t r u c t    O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   � �� � I      �������� 0 basename  ��  ��    L      n     n    I    �������� 0 basename  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f     �  l     ��������  ��  ��   	 l      ��
��  
 � �!@abstruct Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.@result text    �� ! @ a b s t r u c t    O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t 	  i   � � I      �������� 0 path_extension  ��  ��   L      n     n    I    �������� 0 path_extension  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f       l     ��������  ��  ��    l      ����   ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text    � � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t   i   � �  I      �������� 0 volume_name  ��  ��    L     !! n    "#" n   $%$ I    �������� 0 volume_name  ��  ��  % o    ���� 0 	_pathinfo 	_pathInfo#  f      &'& l     ��������  ��  ��  ' ()( l      ��*+��  * $ !@group Working with a Bundle    + �,, < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e  ) -.- l     ��������  ��  ��  . /0/ l      ��12��  1 � �!@abstructObtain an item which is in the bundle resource folder.@descriptionThis method can be call to a bundle.@param resource_name (text) : a resource name@result script object : a XFile instance   2 �33� ! @ a b s t r u c t  O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r .  @ d e s c r i p t i o n  T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e .  @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 0 454 i   � �676 I      ��8���� 0 bundle_resource  8 9��9 o      ���� 0 resource_name  ��  ��  7 L     :: I     ��;���� 0 	make_with  ; <��< I   ��=>
�� .sysorpthalis        TEXT= o    ���� 0 resource_name  > ��?��
�� 
in B? l   @����@ I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��  5 ABA l     ��������  ��  ��  B CDC l      ��EF��  E j d!@abstructObtain a reference to Info.plist of the bundle.@result script object : a XFile instance   F �GG � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e D HIH i   � �JKJ I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  K L     LL I     ��M���� 0 child_posix  M N��N m    OO �PP & C o n t e n t s / I n f o . p l i s t��  ��  I QRQ l     ��������  ��  ��  R STS i   � �UVU I      �������� 0 bundle_resources_folder  ��  ��  V L     WW I     ��X���� 0 child_posix  X Y��Y m    ZZ �[[ & C o n t e n t s / R e s o u r c e s /��  ��  T \]\ l     ��������  ��  ��  ] ^_^ l      ��`a��  ` ! !@group File Manipulations    a �bb 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  _ cdc l     ��������  ��  ��  d efe l      ��gh��  g/)!@abstructCheck whether the item referenced by the instance exists or not.@descriptionA file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.@result boolean : true if the item exists.   h �iiR ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . f jkj i   � �lml I      �������� 0 item_exists  ��  ��  m L     nn n    opo n   qrq I    �������� 0 item_exists  ��  ��  r o    ���� 0 	_pathinfo 	_pathInfop  f     k sts l     ��������  ��  ��  t uvu l      ��wx��  w � �!@abstructCheck whether the item referenced by the instance exists or not.@descriptionThe internal file reference will not be changed unlike ((<item_exists>)).@result boolean : true if the item exists.   x �yy� ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . v z{z i   � �|}| I      �������� 0 item_exists_without_update  ��  ��  } L     ~~ n    � n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     { ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstructSynonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.@result boolean : true if the item exists.   � ���* ! @ a b s t r u c t  S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . � ��� i   � ���� I     ������
�� .coredoexbool       obj ��  ��  � L     �� I     �������� 0 item_exists  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � l f!@abstructRename an item which referenced by the XFile instance.@result boolean : true if succeded.   � ��� � ! @ a b s t r u c t  R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e d e d . � ��� i   � ���� I      ������� 0 	rename_to  � ���� o      ���� 0 new_name  ��  ��  � k     "�� ��� O     ��� r    ��� o    ���� 0 new_name  � n      ��� 1    ��
�� 
pnam� n   ��� n   ��� I    �������� 0 as_alias_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    � m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� r    ��� m    ��
�� 
msng� n     ��� o    ���� 0 _inforecord _infoRecord�  f    � ��� n   ��� n   ��� I    ������� 0 set_name  � ���� o    ���� 0 new_name  ��  ��  � o    �� 0 	_pathinfo 	_pathInfo�  f    � ��~� L     "�� m     !�}
�} boovtrue�~  � ��� l     �|�{�z�|  �{  �z  � ��� l      �y���y  �*$!@abstruct Copy the item to specified location@descriptionSame name item in the destination is replaced.@param a_destination (script object or text) : a XFile instance referencing the copy destination or a relative path.@result script object : a XFile instance referencing copied item.   � ���H ! @ a b s t r u c t    C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n  @ d e s c r i p t i o n  S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :    a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �x��w�x 0 copy_to  � ��v� o      �u�u 0 a_destination  �v  �w  � L     �� I     �t��s�t 0 copy_with_opts  � ��� o    �r�r 0 a_destination  � ��q� m    �p
�p 
msng�q  �s  � ��� l     �o�n�m�o  �n  �m  � ��� l      �l���l  �71!
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
 @ p a r a m   o p t s   (   r e c o r d ) :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �k��j�k 0 copy_with_opts  � ��� o      �i�i 0 a_destination  � ��h� o      �g�g 0 opts  �h  �j  � k    8�� ��� l     �f���f  � \ V cp : if source and destination are folders and the path of the source ends with "/",    � ��� �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  � ��� l     �e���e  � ^ X         cp command contents of the source copy under the destination folder like ditto.   � ��� �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .� ��� l     �d���d  � U O        The endding "/" of the source path should be removed for stable result.   � ��� �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .� ��� l     �c���c  � 5 /        Is the support  of ditto not required ?   � ��� ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?� ��� r     ��� m     �b
�b boovtrue� o      �a�a 0 w_replacing  � ��� r    ��� m    �`
�` boovfals� o      �_�_ 0 w_admin  � ��� r    ��� m    	�^
�^ boovfals� o      �]�] 0 
w_removing  � ��� l   �� � r     m     �  c p o      �\�\ 0 command  �   or "ditto"     �    o r   " d i t t o "�  l   �[�Z�Y�[  �Z  �Y   	 Z    l
�X�W
 =    n     m    �V
�V 
pcls o    �U�U 0 opts   m    �T
�T 
reco k    h  Q    )�S r      n     o    �R�R 0 with_replacing   o    �Q�Q 0 opts   o      �P�P 0 w_replacing   R      �O�N�M
�O .ascrerr ****      � ****�N  �M  �S    Q   * ;�L r   - 2 n   - 0  o   . 0�K�K 0 
with_admin    o   - .�J�J 0 opts   o      �I�I 0 w_admin   R      �H�G�F
�H .ascrerr ****      � ****�G  �F  �L   !"! Q   < M#$�E# r   ? D%&% n   ? B'(' o   @ B�D�D 0 with_removing  ( o   ? @�C�C 0 opts  & o      �B�B 0 
w_removing  $ R      �A�@�?
�A .ascrerr ****      � ****�@  �?  �E  " )�>) Q   N h*+�=* Z   Q _,-�<�;, n   Q U./. o   R T�:�: 	0 ditto  / o   Q R�9�9 0 opts  - r   X [010 m   X Y22 �33 
 d i t t o1 o      �8�8 0 command  �<  �;  + R      �7�6�5
�7 .ascrerr ****      � ****�6  �5  �=  �>  �X  �W  	 454 l  m m�4�3�2�4  �3  �2  5 676 Z   m �89�1�08 E  m v:;: J   m r<< =>= m   m n�/
�/ 
ctxt> ?@? m   n o�.
�. 
utxt@ A�-A m   o p�,
�, 
TEXT�-  ; n   r uBCB m   s u�+
�+ 
pclsC o   r s�*�* 0 a_destination  9 r   y �DED n  y �FGF I   ~ ��)H�(�) 	0 child  H I�'I o   ~ �&�& 0 a_destination  �'  �(  G I   y ~�%�$�#�% 0 parent_folder  �$  �#  E o      �"�" 0 a_destination  �1  �0  7 JKJ l  � ��!� ��!  �   �  K LML Z   � �NOP�N =  � �QRQ o   � ��� 0 command  R m   � �SS �TT  c pO k   � �UU VWV r   � �XYX m   � �ZZ �[[  - R pY o      �� 0 com_opts  W \�\ Z   � �]^��] o   � ��� 0 w_replacing  ^ r   � �_`_ b   � �aba o   � ��� 0 com_opts  b m   � �cc �dd  f` o      �� 0 com_opts  �  �  �  P efe =  � �ghg o   � ��� 0 command  h m   � �ii �jj 
 d i t t of k�k r   � �lml m   � �nn �oo  - - r s r cm o      �� 0 com_opts  �  �  M pqp r   � �rsr m   � ��
� boovfalss o      �� 0 is_folder_to  q tut Z   � �vw��v n  � �xyx I   � ����� 0 item_exists  �  �  y o   � ��� 0 a_destination  w Z   � �z{�
|z l  � �}�	�} o   � ��� 0 
w_removing  �	  �  { n  � �~~ I   � ����� 
0 remove  �  �   o   � ��� 0 a_destination  �
  | Z   � ������ =  � ���� o   � �� �  0 command  � m   � ��� ���  c p� r   � ���� n  � ���� I   � ��������� 0 	is_folder  ��  ��  � o   � ����� 0 a_destination  � o      ���� 0 is_folder_to  �  �  �  �  u ��� l  � ���������  ��  ��  � ��� r   � ���� n   � ���� 1   � ���
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
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� L   # *�� I   # )������� 0 	make_with  � ���� o   $ %���� 0 new_item  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 
0 my_log  � ���� o      ���� 
0 a_text  ��  ��  � l    
���� O    
��� I   	�����
�� .ascrcmnt****      � ****� o    ���� 
0 a_text  ��  � 1     ��
�� 
ascr� E ? use this for debuggingm, because the log command is overrided.   � ��� ~   u s e   t h i s   f o r   d e b u g g i n g m ,   b e c a u s e   t h e   l o g   c o m m a n d   i s   o v e r r i d e d .� ��� l     ��������  ��  ��  � ��� l      ������  �("!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, moving an item will fail.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.   � ���D ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   m o v i n g   a n   i t e m   w i l l   f a i l .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . � ��� i   � ���� I      ������� 0 move_to  � ���� o      ���� 0 a_destination  ��  ��  � k     _�� � � l     ����   ' ! my_log("start move_to in XFile")    � B   m y _ l o g ( " s t a r t   m o v e _ t o   i n   X F i l e " )   l     I     �������� 0 item_exists  ��  ��   G A even if the item exists, broken symbolic file will return false.    �		 �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e . 

 r     n    I    �������� 0 quoted_path  ��  ��   o    ���� 0 a_destination   o      ���� 0 destination_path    r     I    �������� 0 quoted_path  ��  ��   o      ���� 0 source_path    Q    5 I   $����
�� .sysoexecTEXT���     TEXT b      b     b     m       �!!  m v   o    ���� 0 source_path   1    ��
�� 
spac o    ���� 0 destination_path  ��   R      ��"��
�� .ascrerr ****      � ****" o      ���� 0 msg  ��   k   , 5## $%$ I   , 2��&���� 
0 my_log  & '��' o   - .���� 0 msg  ��  ��  % (��( L   3 5)) m   3 4��
�� boovfals��   *+* l  6 6��,-��  , T N update internal reference, because alias does not follow moved item in 10.14.   - �.. �   u p d a t e   i n t e r n a l   r e f e r e n c e ,   b e c a u s e   a l i a s   d o e s   n o t   f o l l o w   m o v e d   i t e m   i n   1 0 . 1 4 .+ /0/ Z   6 \12��31 n  6 ;454 I   7 ;�������� 0 	is_folder  ��  ��  5 o   6 7�� 0 a_destination  2 k   > O66 787 l  > >�~9:�~  9 / ) my_log("destination is folder, updated")   : �;; R   m y _ l o g ( " d e s t i n a t i o n   i s   f o l d e r ,   u p d a t e d " )8 <�}< I   > O�|=�{�| 0 change_pathinfo  = >�z> n  ? K?@? n  @ KABA I   B K�yC�x�y 0 change_folder  C D�wD n  B GEFE I   C G�v�u�t�v 0 item_ref  �u  �t  F o   B C�s�s 0 a_destination  �w  �x  B o   @ B�r�r 0 	_pathinfo 	_pathInfo@  f   ? @�z  �{  �}  ��  3 I   R \�qG�p�q 0 
change_ref  G H�oH n  S XIJI I   T X�n�m�l�n 0 item_ref  �m  �l  J o   S T�k�k 0 a_destination  �o  �p  0 K�jK L   ] _LL m   ] ^�i
�i boovtrue�j  � MNM l     �h�g�f�h  �g  �f  N OPO l      �eQR�e  Q>8!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, the item will be replaced with the target item.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.   R �SSp ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . P TUT i   � �VWV I      �dX�c�d 0 move_with_replacing  X Y�bY o      �a�a 0 a_destination  �b  �c  W k     <ZZ [\[ l    ]^_] I     �`�_�^�` 0 item_exists  �_  �^  ^ G A even if the item exists, broken symbolic file will return false.   _ �`` �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .\ aba r    cdc n   efe I    �]�\�[�] 0 quoted_path  �\  �[  f o    �Z�Z 0 a_destination  d o      �Y�Y 0 destination_path  b ghg r    iji I    �X�W�V�X 0 quoted_path  �W  �V  j o      �U�U 0 source_path  h klk Q    9mnom I   $�Tp�S
�T .sysoexecTEXT���     TEXTp b     qrq b    sts b    uvu m    ww �xx  m v   - f  v o    �R�R 0 source_path  t 1    �Q
�Q 
spacr o    �P�P 0 destination_path  �S  n R      �Oy�N
�O .ascrerr ****      � ****y o      �M�M 0 msg  �N  o k   , 9zz {|{ O  , 6}~} I  0 5�L�K
�L .ascrcmnt****      � **** o   0 1�J�J 0 msg  �K  ~ 1   , -�I
�I 
ascr| ��H� L   7 9�� m   7 8�G
�G boovfals�H  l ��F� L   : <�� m   : ;�E
�E boovtrue�F  U ��� l     �D�C�B�D  �C  �B  � ��� l      �A���A  �!@abstructResolving original item of a alias file.@descriptionIf the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.@result script object or missing value   � ���
 ! @ a b s t r u c t  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  @ d e s c r i p t i o n  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e � ��� i   � ���� I      �@�?�>�@ 0 resolve_alias  �?  �>  � k     ^�� ��� Z     #���=�<� I     �;�:�9�; 0 
is_symlink  �:  �9  � k    �� ��� r    ��� I    �8�7�6�8 0 	deep_copy  �7  �6  � o      �5�5 0 
x_original  � ��4� Z    ���3�� n   ��� I    �2�1�0�2 0 item_exists  �1  �0  � o    �/�/ 0 
x_original  � L    �� o    �.�. 0 
x_original  �3  � L    �� m    �-
�- 
msng�4  �=  �<  � ��� l  $ $�,�+�*�,  �+  �*  � ��� r   $ +��� I   $ )�)�(�'�) 0 info  �(  �'  � o      �&�& 0 info_rec  � ��%� Z   , ^���$�� n   , 0��� m   - /�#
�# 
alis� o   , -�"�" 0 info_rec  � k   3 X�� ��� Q   3 P���� O   6 F��� r   : E��� c   : C��� l  : A��!� � n   : A��� 1   ? A�
� 
orig� l  : ?���� n  : ?��� I   ; ?���� 0 as_alias  �  �  �  f   : ;�  �  �!  �   � m   A B�
� 
alis� o      �� 0 original_item  � m   6 7���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � R      ���
� .ascrerr ****      � ****� o      �� 
0 errmsg  �  � L   N P�� m   N O�
� 
msng� ��� L   Q X�� I   Q W���� 0 	make_with  � ��� o   R S�� 0 original_item  �  �  �  �$  � L   [ ^�� N   [ ]��  f   [ \�%  � ��� l     ����  �  �  � ��� l      ����  � ! !@abstructPut into trash.   � ��� 6 ! @ a b s t r u c t  P u t   i n t o   t r a s h . � ��� i   � ���� I      �
�	��
 0 
into_trash  �	  �  � k     �� ��� r     ��� I     ���� 0 as_alias  �  �  � o      �� 
0 a_file  � ��� O    ��� I   ���
� .coredelonull���     obj � o    �� 
0 a_file  �  � m    	���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � �� � I    �������� 0 update_pathinfo  ��  ��  �   � ��� l     ��������  ��  ��  � ��� l      ������  � c ]!@abstructRemove the item referd from the target XFile instance.@result script object : me   � ��� � ! @ a b s t r u c t  R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   m e � ��� i   � ���� I      �������� 
0 remove  ��  ��  � k     *�� ��� r     ��� I     �������� 0 quoted_path  ��  ��  � o      ���� 
0 a_file  � ��� r    ��� n   ��� n  	 ��� I    �������� 0 as_text  ��  ��  � o   	 ���� 0 	_pathinfo 	_pathInfo�  f    	� o      ���� 
0 a_path  � ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  r m   - r  � o    ���� 
0 a_file  ��  � ��� r    !   o    ���� 
0 a_path   n      n     o     ���� 0 	_item_ref   o    ���� 0 	_pathinfo 	_pathInfo  f    �  r   " '	 m   " #��
�� 
msng	 n     

 o   $ &���� 0 _inforecord _infoRecord  f   # $ �� L   ( *  f   ( )��  �  l     ��������  ��  ��    l      ����     !@group Making subfolders     � 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s    l     ��������  ��  ��    l      ����   � �!@abstructMake a sub folder.@descriptionmissing value will be returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.@result script object or missing value : a XFile instance of newly created folder.    �� ! @ a b s t r u c t  M a k e   a   s u b   f o l d e r .  @ d e s c r i p t i o n  m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r .   i   � � I      �� ���� 0 make_folder    !��! o      ���� 0 folder_name  ��  ��   k     !"" #$# Z     %&����% H     '' l    (����( I     �������� 0 item_exists  ��  ��  ��  ��  & L   	 )) m   	 
��
�� 
msng��  ��  $ *+* l   ��������  ��  ��  + ,-, r    ./. I    ��0���� 	0 child  0 1��1 o    ���� 0 folder_name  ��  ��  / o      ���� 0 
new_folder  - 2��2 L    !33 n    454 I     ��6���� 0 	make_path  6 7��7 J    ����  ��  ��  5 o    ���� 0 
new_folder  ��   898 l     ��������  ��  ��  9 :;: l      ��<=��  <��!@abstructMake folders which indicating the path of the XFile instance.@descriptionUsing a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.@result script object or missing value : a XFile instance of newly created folder.   = �>> ! @ a b s t r u c t  M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e .  @ d e s c r i p t i o n  U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . ; ?@? i   � �ABA I      ��C���� 0 	make_path  C D��D o      ���� 0 opts  ��  ��  B k     REE FGF r     HIH m     ��
�� boovfalsI o      ���� 0 w_admin  G JKJ Z    LM����L =   	NON n    PQP m    ��
�� 
pclsQ o    ���� 0 opts  O m    ��
�� 
recoM r    RSR n    TUT o    ���� 0 
with_admin  U o    ���� 0 opts  S o      ���� 0 w_admin  ��  ��  K VWV Z    0XY����X I    �������� 0 item_exists  ��  ��  Y Z    ,Z[��\Z I    #�������� 0 	is_folder  ��  ��  [ L   & (]]  f   & '��  \ m   + ,��
�� 
msng��  ��  W ^_^ I  1 @��`a
�� .sysoexecTEXT���     TEXT` b   1 :bcb m   1 2dd �ee  m k d i r   - p  c l  2 9f����f n   2 9ghg 1   7 9��
�� 
strqh I   2 7�������� 0 
posix_path  ��  ��  ��  ��  a ��i��
�� 
badmi o   ; <���� 0 w_admin  ��  _ jkj Z  A Olm����l I   A F�������� 0 item_exists  ��  ��  m L   I Knn  f   I J��  ��  k o��o L   P Rpp m   P Q��
�� 
msng��  @ qrq l     ��������  ��  ��  r sts l     ��������  ��  ��  t uvu l      ��wx��  w 0 *!@group Reading and Writing File Contents    x �yy T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  v z{z l     ��������  ��  ��  { |}| l      ��~��  ~ X R!@abstructRead file contents as UTF-8 encoded text.@result Unicode text (UTF-8)    ��� � ! @ a b s t r u c t  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) } ��� i   � ���� I      �������� 0 read_as_utf8  ��  ��  � k     �� ��� I     �������� !0 check_existance_raising_error  ��  ��  � ���� L    �� I   ����
�� .rdwrread****        ****� l   ������ I    ��~�}� 0 as_alias  �~  �}  ��  ��  � �|��{
�| 
as  � m    �z
�z 
utf8�{  ��  � ��� l     �y�x�w�y  �x  �w  � ��� l      �v���v  � u o!@abstructWrite data into the file as UTF-8 encoded text.@param a_data (text) : data to write into the file.   � ��� � ! @ a b s t r u c t  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . � ��� i   � ���� I      �u��t�u 0 write_as_utf8  � ��s� o      �r�r 
0 a_data  �s  �t  � k     %�� ��� r     ��� I    �q��
�q .rdwropenshor       file� I     �p�o�n�p 0 as_furl  �o  �n  � �m��l
�m 
perm� m    �k
�k boovtrue�l  � o      �j�j 
0 output  � ��� I   �i��
�i .rdwrseofnull���     ****� o    �h�h 
0 output  � �g��f
�g 
set2� m    �e�e  �f  � ��� I   �d��
�d .rdwrwritnull���     ****� o    �c�c 
0 a_data  � �b��
�b 
refn� o    �a�a 
0 output  � �`��_
�` 
as  � m    �^
�^ 
utf8�_  � ��]� I    %�\��[
�\ .rdwrclosnull���     ****� o     !�Z�Z 
0 output  �[  �]  � ��� l     �Y�X�W�Y  �X  �W  � ��� l      �V���V  � " !@group Parent and Children    � ��� 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  � ��� l     �U�T�S�U  �T  �S  � ��� l      �R���R  � � �!@abstructObtain a folder containing the item referenced by the XFile instance.@result script object : a XFile instance of the parent folder.   � ���  ! @ a b s t r u c t  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . � ��� i   � ���� I      �Q�P�O�Q 0 parent_folder  �P  �O  � L     �� I     �N��M�N 0 make_with_pathinfo  � ��L� n   ��� n   ��� I    �K�J�I�K 0 parent_folder  �J  �I  � o    �H�H 0 	_pathinfo 	_pathInfo�  f    �L  �M  � ��� l     �G�F�E�G  �F  �E  � ��� l      �D���D  �!@abstructObtain an item in the folder with specifying a sub path from the target.@descriptionIf this methods is sent to non exsisting folder, missing value is returend.@param suppath(text) :a sub path to obtain.@result script object or missing value : a XFile instance   � ���& ! @ a b s t r u c t  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  @ d e s c r i p t i o n  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e � ��� i   � ���� I      �C��B�C 	0 child  � ��A� o      �@�@ 0 subpath  �A  �B  � Z     ���?�� I     �>�=�<�> 0 item_exists_without_update  �=  �<  � L    �� I    �;��:�; 0 make_with_pathinfo  � ��9� n  	 ��� n  
 ��� I    �8��7�8 	0 child  � ��6� o    �5�5 0 subpath  �6  �7  � o   
 �4�4 0 	_pathinfo 	_pathInfo�  f   	 
�9  �:  �?  � L    �� m    �3
�3 
msng� ��� l     �2�1�0�2  �1  �0  � ��� i   � ���� I      �/��.�/ 0 child_posix  � ��-� o      �,�, 0 subpath  �-  �.  � Z     "���+�� I     �*�)�(�* 0 item_exists  �)  �(  � k    �� ��� r    ��� I    �'�&�%�' 0 
posix_path  �&  �%  � o      �$�$ 
0 a_path  � ��� r    ��� b    ��� o    �#�# 
0 a_path  � o    �"�" 0 subpath  � o      �!�! 
0 a_path  � �� � L    �� I    ���� 0 	make_with  � ��� o    �� 
0 a_path  �  �  �   �+  � L     "�� m     !�
� 
msng� � � l     ����  �  �     l     ����  �  �    l      ��  ��!@abstructObtain a XFile instance reference unique name item in the folder.@descriptionIf the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.@param a_candidate(text or list) :A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.@result script object : a XFile instance    �T ! @ a b s t r u c t  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  @ d e s c r i p t i o n  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   :  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e  	 i   � �

 I      ��� 0 unique_child   � o      �� 0 a_candidate  �  �   k     w  Z     �� H      I     ���� 0 	is_folder  �  �   L   	  m   	 
�

�
 
msng�  �    r    ) n    I    �	��	 0 
split_name   � o    �� 0 a_candidate  �  �   o    �� 0 pathinfo PathInfo J        o      �� 0 
a_basename    �  o      �� 0 a_suffix  �   !"! Z   * ;#$�%# =  * -&'& o   * +� �  0 a_suffix  ' m   + ,��
�� 
msng$ r   0 3()( m   0 1** �++  ) o      ���� 0 a_suffix  �  % r   6 ;,-, b   6 9./. m   6 700 �11  ./ o   7 8���� 0 a_suffix  - o      ���� 0 a_suffix  " 232 r   < ?454 m   < =���� 5 o      ���� 0 i  3 676 r   @ C898 m   @ A:: �;;  9 o      ���� 0 escape_suffix  7 <=< T   D t>> k   I o?? @A@ r   I UBCB I   I S��D���� 	0 child  D E��E b   J OFGF b   J MHIH o   J K���� 0 
a_basename  I o   K L���� 0 escape_suffix  G o   M N���� 0 a_suffix  ��  ��  C o      ���� 0 a_child  A J��J Z   V oKL��MK n  V [NON I   W [�������� 0 item_exists  ��  ��  O o   V W���� 0 a_child  L k   ^ kPP QRQ r   ^ eSTS b   ^ cUVU 1   ^ _��
�� 
spacV l  _ bW����W c   _ bXYX o   _ `���� 0 i  Y m   ` a��
�� 
utxt��  ��  T o      ���� 0 escape_suffix  R Z��Z r   f k[\[ [   f i]^] o   f g���� 0 i  ^ m   g h���� \ o      ���� 0 i  ��  ��  M  S   n o��  = _��_ L   u w`` o   u v���� 0 a_child  ��  	 aba l     ��������  ��  ��  b cdc i   � �efe I      �������� 0 list_children  ��  ��  f L     
gg I    	��h��
�� .earslfdrutxt  @    fileh I     �������� 0 as_furl  ��  ��  ��  d iji l     ��������  ��  ��  j klk l      ��mn��  m<6!@abstruct
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. Each XFile instance in the target folder is passed to the &quot;do&quot; handler.The do handler must return true or false. When the do handler return false, the process is stoped immediately.@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
   n �ool ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .    E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r .  T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y .  @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
l pqp i   � �rsr I      ��t���� 0 each  t u��u o      ���� 0 a_script  ��  ��  s k     @vv wxw r     yzy I     �������� 0 list_children  ��  ��  z o      ���� 
0 a_list  x {|{ h    ��}�� 0 listwrapper ListWrapper} j     ��~
�� 
pcnt~ o     ���� 
0 a_list  | � l   ��������  ��  ��  � ���� Y    @�������� k    ;�� ��� r    +��� I    )������� 	0 child  � ���� n    %��� 4   " %���
�� 
cobj� o   # $���� 0 n  � n    "��� 1     "��
�� 
pcnt� o     ���� 0 listwrapper ListWrapper��  ��  � o      ���� 
0 x_item  � ���� Z   , ;������� H   , 3�� n  , 2��� I   - 2������� 0 do  � ���� o   - .���� 
0 x_item  ��  ��  � o   , -���� 0 a_script  �  S   6 7��  ��  ��  �� 0 n  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 
0 a_list  ��  ��  ��  q ��� l     ��������  ��  ��  � ��� l      ������  � * $!@group Working with Shell Commands    � ��� H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  � ��� l     ��������  ��  ��  � ��� l      ������  �	!@abstruct
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
� ��� i   � ���� I      ������� 0 perform_shell  � ���� o      ���� 0 	a_command  ��  ��  � k     �� ��� r     ��� n    	��� 1    	��
�� 
strq� n    ��� 1    ��
�� 
strq� I     �������� 0 normalized_posix_path  ��  ��  � o      ���� 
0 a_path  � ���� L    �� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� b    ��� m    �� ���  e v a l   $ ( p r i n t f  � n   ��� 1    ��
�� 
strq� o    ���� 0 	a_command  � 1    ��
�� 
spac� o    ���� 
0 a_path  � m    �� ���  )��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Run test command taking the target as an argument.
@param option(text) : 
An option to passed to the test command. See the man page of the test command.
@result boolean : true if test command successfully exits.
   � ���� ! @ a b s t r u c t 
 R u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ p a r a m   o p t i o n ( t e x t )   :   
 A n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . 
� ��� i   � ���� I      ������� 0 
shell_test  � ���� o      ���� 
0 option  ��  ��  � k     �� ��� Q     ���� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� m    �� ��� 
 t e s t  � o    ���� 
0 option  � 1    ��
�� 
spac� I    �������� 0 quoted_path  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    ��
�� boovfals� ��� L    �� m    �~
�~ boovtrue�  � ��� l     �}�|�{�}  �|  �{  � ��� l      �z���z  �  == private *   � ���  = =   p r i v a t e   *� ��� l     �y�x�w�y  �x  �w  � ��� i   � ���� I      �v�u�t�v 0 	deep_copy  �u  �t  � L     �� I     �s��r�s 0 make_with_pathinfo  � ��q� n   ��� n   ��� I    �p�o�n�p 	0 clone  �o  �n  � o    �m�m 0 	_pathinfo 	_pathInfo�  f    �q  �r  � ��� l     �l�k�j�l  �k  �j  � ��� i   � � I      �i�h�g�i 0 item_ref  �h  �g    L      n     n    I    �f�e�d�f 0 item_ref  �e  �d   o    �c�c 0 	_pathinfo 	_pathInfo  f     �  l     �b�a�`�b  �a  �`   	 i  

 I      �_�^�]�_ !0 check_existance_raising_error  �^  �]   k     !  l     �\�\   4 . my_log("start check_existance_raising_error")    � \   m y _ l o g ( " s t a r t   c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r " ) �[ Z     !�Z�Y H      l    �X�W n     n    I    �V�U�T�V 0 item_exists_without_update  �U  �T   o    �S�S 0 	_pathinfo 	_pathInfo  f     �X  �W   R    �R
�R .ascrerr ****      � **** b     b      m    !! �"" 
 i t e m    n    #$# 1    �Q
�Q 
strq$ l   %�P�O% n   &'& n   ()( I    �N�M�L�N 0 as_text  �M  �L  ) o    �K�K 0 	_pathinfo 	_pathInfo'  f    �P  �O   m    ** �++     d o e s   n o t   e x i s t . �J,�I
�J 
errn, m    �H�HF�I  �Z  �Y  �[  	 -.- l     �G�F�E�G  �F  �E  . /0/ i  121 I      �D�C�B�D 0 update_pathinfo  �C  �B  2 k     $33 454 r     676 n    898 I    �A:�@�A 0 make_with_opts  : ;<; n   =>= n   ?@? I    �?�>�=�? 0 item_ref  �>  �=  @ o    �<�< 0 	_pathinfo 	_pathInfo>  f    < A�;A K    BB �:C�9�: 0 prefering_posix  C n   DED n   FGF I    �8�7�6�8 0 is_posix  �7  �6  G o    �5�5 0 	_pathinfo 	_pathInfoE  f    �9  �;  �@  9 o     �4�4 0 pathinfo PathInfo7 n     HIH o    �3�3 0 	_pathinfo 	_pathInfoI  f    5 J�2J L    $KK n   #LML o     "�1�1 0 	_pathinfo 	_pathInfoM  f     �2  0 NON l     �0�/�.�0  �/  �.  O PQP i  RSR I      �-T�,�- 0 change_pathinfo  T U�+U o      �*�* 0 
a_pathinfo  �+  �,  S k      VV WXW r     YZY o     �)�) 0 
a_pathinfo  Z n     [\[ o    �(�( 0 	_pathinfo 	_pathInfo\  f    X ]^] r    _`_ m    �'
�' 
msng` n     aba o    
�&�& 0 _inforecord _infoRecordb  f    ^ cdc r    efe n   ghg n   iji I    �%�$�#�% 0 is_posix  �$  �#  j o    �"�" 0 	_pathinfo 	_pathInfoh  f    f n     klk o    �!�! 0 _prefer_posix  l  f    d mnm r    opo m    � 
�  
msngp n     qrq o    �� 0 _is_symlink  r  f    n s�s L     tt  f    �  Q uvu l     ����  �  �  v wxw i  yzy I      �{�� 0 
change_ref  { |�| o      �� 0 file_ref  �  �  z L     }} I     �~�� 0 change_pathinfo  ~ � n   ��� I    ���� 0 	make_with  � ��� o    �� 0 file_ref  �  �  � o    �� 0 pathinfo PathInfo�  �  x ��� l     ����  �  �  � ��� i  ��� I      ��
�	� 0 dump  �
  �	  � L     �� n    ��� n   ��� I    ���� 0 as_text  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ����  �  �  � ��� i  ��� I     �� ��
� .ascrcmnt****      � ****�   ��  � M     �� I     �����
�� .ascrcmnt****      � ****� I    �������� 0 dump  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i  ��� I      �������� 	0 debug  ��  ��  � k     /�� ��� n    	��� I    	������� 	0 setup  � ����  f    ��  ��  � 4     ���
�� 
scpt� m    �� ���  M o d u l e L o a d e r� ��� r   
 ��� c   
 ��� m   
 �� ��� F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d f� m    ��
�� 
psxf� o      ���� 
0 a_path  � ��� r    ��� I    ������� 0 	make_with  � ���� o    ���� 
0 a_path  ��  ��  � o      ���� 0 a_xfile  � ��� l   ������  � K Ereturn a_result's change_path_extension(missing value)'s posix_path()   � ��� � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )� ��� r    %��� n   #��� I    #������� 0 unique_child  � ���� m    �� ��� : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f��  ��  � n   ��� I    �������� 0 parent_folder  ��  ��  � o    ���� 0 a_xfile  � o      ���� 0 new_named_file  � ���� I  & /�����
�� .ascrcmnt****      � ****� n  & +��� I   ' +�������� 0 	item_name  ��  ��  � o   & '���� 0 new_named_file  ��  ��  � ��� l     ��������  ��  ��  � ��� i   #��� I      �������� 0 open_helpbook  ��  ��  � Q     ,���� O   ��� I   
 ������� 0 do  � ���� I   �����
�� .earsffdralis        afdr�  f    ��  ��  ��  � 4    ���
�� 
scpt� m    �� ���  O p e n H e l p B o o k� R      ����
�� .ascrerr ****      � ****� o      ���� 0 msg  � �����
�� 
errn� o      ���� 	0 errno  ��  � k    ,�� ��� I   "������
�� .miscactvnull��� ��� null��  ��  � ���� I  # ,�����
�� .sysodisAaleR        TEXT� l  # (������ b   # (��� b   # &��� o   # $���� 0 msg  � o   $ %��
�� 
ret � o   & '���� 	0 errno  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i  $'��� I     ������
�� .aevtoappnull  �   � ****��  ��  � k     �� ��� l     ������  �  return debug()   � ���  r e t u r n   d e b u g ( )� ���� I     �������� 0 open_helpbook  ��  ��  ��  � ���� l     ��������  ��  ��  ��       G����� �������	 											
																						 	!	"	#	$	%	&	'	(	)	*	+	,	-	.	/	0	1	2	3	4	5	6	7	8	9	:	;��  � E������������������������������������������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d
�� 
pimr�� 0 pathinfo PathInfo
�� 
pnam�� 0 _prefer_posix  �� 0 prefer_posix  �� 0 	make_with  �� 0 make_with_pathinfo  �� 0 change_name  �� 0 change_folder  �� 0 change_path_extension  �� 0 as_alias  �� 0 as_furl  �� 0 hfs_path  �� 0 
posix_path  �� 0 normalized_posix_path  �� 0 quoted_path  �� 0 type_identifier  �� 0 	is_folder  �� 0 
is_package  �� 0 is_alias  �� 0 
is_symlink  �� 0 
is_visible  �� 0 	set_types  �� 0 info  �� 0 info_with_size  �� 0 re_info  �� 0 	item_name  �� 0 basename  �� 0 path_extension  �� 0 volume_name  �� 0 bundle_resource  �� $0 bundle_infoplist bundle_InfoPlist�� 0 bundle_resources_folder  �� 0 item_exists  �� 0 item_exists_without_update  
�� .coredoexbool       obj �� 0 	rename_to  �� 0 copy_to  �� 0 copy_with_opts  �� 0 finder_copy_to  �� 
0 my_log  � 0 move_to  �~ 0 move_with_replacing  �} 0 resolve_alias  �| 0 
into_trash  �{ 
0 remove  �z 0 make_folder  �y 0 	make_path  �x 0 read_as_utf8  �w 0 write_as_utf8  �v 0 parent_folder  �u 	0 child  �t 0 child_posix  �s 0 unique_child  �r 0 list_children  �q 0 each  �p 0 perform_shell  �o 0 
shell_test  �n 0 	deep_copy  �m 0 item_ref  �l !0 check_existance_raising_error  �k 0 update_pathinfo  �j 0 change_pathinfo  �i 0 
change_ref  �h 0 dump  
�g .ascrcmnt****      � ****�f 	0 debug  �e 0 open_helpbook  
�d .aevtoappnull  �   � ****� �c	<�c 	<  	=	>	= �b	?�a
�b 
cobj	? 	@	@   �` 
�` 
scpt�a  	> �_	A�^
�_ 
cobj	A 	B	B   �]
�] 
osax�^  � 	C	C   �\ 
�\ 
scpt
�� boovtrue� �[ )�Z�Y	D	E�X�[ 0 prefer_posix  �Z �W	F�W 	F  �V�V 0 bool  �Y  	D �U�U 0 bool  	E �T�T 0 _prefer_posix  �X �)�,F� �S A�R�Q	G	H�P�S 0 	make_with  �R �O	I�O 	I  �N�N 0 file_ref  �Q  	G �M�L�K�M 0 file_ref  �L 
0 is_hfs  �K 0 	path_info  	H 	�J�I�H�G ]�F�E�D�C
�J 
ctxt
�I 
utxt
�H 
TEXT
�G 
pcls�F 0 make_with_hfs  �E 0 _prefer_posix  �D 0 make_with_posix  �C 0 make_with_pathinfo  �P YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ � �B ��A�@	J	K�?�B 0 make_with_pathinfo  �A �>	L�> 	L  �=�= 0 	path_info  �@  	J �<�;�:�< 0 	path_info  �; 0 a_parent  �: 0 xfile XFile	K �9 �	M�9 0 xfile XFile	M �8	N�7�6	O	P�5
�8 .ascrinit****      � ****	N k      	Q	Q  �	R	R  �	S	S  �	T	T  �	U	U  ��4�4  �7  �6  	O �3�2�1�0�/
�3 
pare�2 0 	_pathinfo 	_pathInfo�1 0 _inforecord _infoRecord�0 0 _prefer_posix  �/ 0 _is_symlink  	P �.�-�,�+�*�)�(
�. 
pare�- 0 	_pathinfo 	_pathInfo
�, 
msng�+ 0 _inforecord _infoRecord�* 0 is_posix  �) 0 _prefer_posix  �( 0 _is_symlink  �5 !b  N  Ob   �O�Ob   j+ �O��? )E�O��K S�O�� �' ��&�%	V	W�$�' 0 change_name  �& �#	X�# 	X  �"�" 
0 a_name  �%  	V �!� �! 
0 a_name  �  0 	path_info  	W ���� 0 	_pathinfo 	_pathInfo� 0 change_name  � 0 make_with_pathinfo  �$ )�,�k+ E�O*�k+ � � ���	Y	Z�� 0 change_folder  � �	[� 	[  �� 0 
folder_ref  �  	Y ��� 0 
folder_ref  � 0 	path_info  	Z ���� 0 	_pathinfo 	_pathInfo� 0 change_folder  � 0 make_with_pathinfo  � )�,�k+ E�O*�k+ 	  � ���	\	]�� 0 change_path_extension  � �	^� 	^  �� 0 a_suffix  �  	\ �� 0 a_suffix  	] �
�	��
 0 	_pathinfo 	_pathInfo�	 0 change_path_extension  � 0 make_with_pathinfo  � *)�,�k+ k+ 	 ���	_	`�� 0 as_alias  �  �  	_  	` ���� !0 check_existance_raising_error  � 0 	_pathinfo 	_pathInfo� 0 as_alias  � *j+  O)�,j+ 	 � &����	a	b���  0 as_furl  ��  ��  	a  	b ������ 0 	_pathinfo 	_pathInfo�� 0 as_furl  �� 	)�,j+ 	 ��6����	c	d���� 0 hfs_path  ��  ��  	c  	d ������ 0 	_pathinfo 	_pathInfo�� 0 hfs_path  �� 	)�,j+ 	 ��F����	e	f���� 0 
posix_path  ��  ��  	e  	f ������ 0 	_pathinfo 	_pathInfo�� 0 
posix_path  �� 	)�,j+ 	 ��V����	g	h���� 0 normalized_posix_path  ��  ��  	g  	h ������ 0 	_pathinfo 	_pathInfo�� 0 normalized_posix_path  �� 	)�,j+ 	 ��a����	i	j���� 0 quoted_path  ��  ��  	i  	j �������� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
strq�� )�,j+ �,E	 ��z����	k	l���� 0 type_identifier  ��  ��  	k ���� 0 nsworkspace NSWorkspace	l ������������ "0 sharedworkspace sharedWorkspace�� 0 
posix_path  
�� 
msng�� &0 typeoffile_error_ typeOfFile_error_
�� 
ctxt�� �j+   *)j+ �l+ �&U	 �������	m	n���� 0 	is_folder  ��  ��  	m �������� 
0 my_uti  �� 0 nsworkspace NSWorkspace�� 0 a_result  	n ���������� 0 type_identifier  �� "0 sharedworkspace sharedWorkspace�� ,0 type_conformstotype_ type_conformsToType_�� ,*j+  E�O�j+  ��  eE�Y *��l+ E�UO�OP		 �������	o	p���� 0 
is_package  ��  ��  	o  	p ����� 0 type_identifier  �� �*j+  OP	
 �������	q	r���� 0 is_alias  ��  ��  	q ���� 0 info_rec  	r ������ 0 info  
�� 
alis�� *j+  E�O��,E	 �������	s	t���� 0 
is_symlink  ��  ��  	s  	t �������������� 0 _is_symlink  
�� 
msng�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  �� 4)�,�  & �*j+ %j Oe)�,FW X  f)�,FY hO)�,E	 ������	u	v���� 0 
is_visible  ��  ��  	u ���� 0 info_rec  	v ������ 0 info  
�� 
pvis�� *j+  E�O��,E	 ��3����	w	x���� 0 	set_types  �� ��	y�� 	y  ������ 0 creator_code  �� 0 	type_code  ��  	w �������� 0 creator_code  �� 0 	type_code  �� 
0 a_file  	x ����P���������� 0 	is_folder  �� 0 as_alias  
�� 
fcrt
�� 
asty
�� 
msng�� 0 _inforecord _infoRecord�� ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h	 ��`����	z	{���� 0 info  ��  ��  	z  	{ �������������� 0 _inforecord _infoRecord
�� 
msng�� !0 check_existance_raising_error  �� 0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file�� ()�,�  *j+ O*j+ �fl )�,FY hO)�,E	 �������	|	}���� 0 info_with_size  ��  ��  	|  	} �������������� 0 _inforecord _infoRecord
�� 
msng�� !0 check_existance_raising_error  �� 0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file�� D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,E	 �������	~	���� 0 re_info  ��  ��  	~  	 �������������� 0 _inforecord _infoRecord
�� 
msng
�� 
ptsz
�� 
bool�� 0 as_furl  
�� .sysonfo4asfe        file�� <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,E	 �������	�	���� 0 	item_name  ��  ��  	�  	� �~�}�~ 0 	_pathinfo 	_pathInfo�} 0 	item_name  � 	)�,j+ 	 �| �{�z	�	��y�| 0 basename  �{  �z  	�  	� �x�w�x 0 	_pathinfo 	_pathInfo�w 0 basename  �y 	)�,j+ 	 �v�u�t	�	��s�v 0 path_extension  �u  �t  	�  	� �r�q�r 0 	_pathinfo 	_pathInfo�q 0 path_extension  �s 	)�,j+ 	 �p �o�n	�	��m�p 0 volume_name  �o  �n  	�  	� �l�k�l 0 	_pathinfo 	_pathInfo�k 0 volume_name  �m 	)�,j+ 	 �j7�i�h	�	��g�j 0 bundle_resource  �i �f	��f 	�  �e�e 0 resource_name  �h  	� �d�d 0 resource_name  	� �c�b�a�`
�c 
in B�b 0 as_alias  
�a .sysorpthalis        TEXT�` 0 	make_with  �g *��*j+ l k+ 	 �_K�^�]	�	��\�_ $0 bundle_infoplist bundle_InfoPlist�^  �]  	�  	� O�[�[ 0 child_posix  �\ *�k+ 	 �ZV�Y�X	�	��W�Z 0 bundle_resources_folder  �Y  �X  	�  	� Z�V�V 0 child_posix  �W *�k+ 	 �Um�T�S	�	��R�U 0 item_exists  �T  �S  	�  	� �Q�P�Q 0 	_pathinfo 	_pathInfo�P 0 item_exists  �R 	)�,j+ 	 �O}�N�M	�	��L�O 0 item_exists_without_update  �N  �M  	�  	� �K�J�K 0 	_pathinfo 	_pathInfo�J 0 item_exists_without_update  �L 	)�,j+ 	 �I��H�G	�	��F
�I .coredoexbool       obj �H  �G  	�  	� �E�E 0 item_exists  �F *j+  	 �D��C�B	�	��A�D 0 	rename_to  �C �@	��@ 	�  �?�? 0 new_name  �B  	� �>�> 0 new_name  	� ��=�<�;�:�9�8�= 0 	_pathinfo 	_pathInfo�< 0 as_alias_without_update  
�; 
pnam
�: 
msng�9 0 _inforecord _infoRecord�8 0 set_name  �A #� �)�,j+ �,FUO�)�,FO)�,�k+ Oe	 �7��6�5	�	��4�7 0 copy_to  �6 �3	��3 	�  �2�2 0 a_destination  �5  	� �1�1 0 a_destination  	� �0�/
�0 
msng�/ 0 copy_with_opts  �4 	*��l+ 	 �.��-�,	�	��+�. 0 copy_with_opts  �- �*	��* 	�  �)�(�) 0 a_destination  �( 0 opts  �,  	� �'�&�%�$�#�"�!� ����' 0 a_destination  �& 0 opts  �% 0 w_replacing  �$ 0 w_admin  �# 0 
w_removing  �" 0 command  �! 0 com_opts  �  0 is_folder_to  � 0 destination_path  � 0 source_path  � 0 	a_command  	� ��������2�����SZcin�������
�	��
� 
pcls
� 
reco� 0 with_replacing  �  �  � 0 
with_admin  � 0 with_removing  � 	0 ditto  
� 
ctxt
� 
utxt
� 
TEXT� 0 parent_folder  � 	0 child  � 0 item_exists  � 
0 remove  � 0 	is_folder  � 0 normalized_posix_path  
� 
strq
�
 
spac
�	 
badm
� .sysoexecTEXT���     TEXT� 0 	item_name  �+9eE�OfE�OfE�O�E�O��,�  U 
��,E�W X  hO 
��,E�W X  hO 
��,E�W X  hO ��,E �E�Y hW X  hY hO���mv��, *j+ �k+ E�Y hO��  a E�O� �a %E�Y hY �a   
a E�Y hOfE�O�j+  $� 
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�	 ����	�	��� 0 finder_copy_to  � �	�� 	�  �� � 0 a_destination  �  0 with_replacing  �  	� ������������ 0 a_destination  �� 0 with_replacing  �� 0 destination  �� 0 source_alias  �� 0 new_item  	� ����������������� 0 as_alias  
�� 
insh
�� 
alrp�� 
�� .coreclon****      � ****
�� 
alis�� 0 	make_with  � +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ 	 �������	�	����� 
0 my_log  �� ��	��� 	�  ���� 
0 a_text  ��  	� ���� 
0 a_text  	� ����
�� 
ascr
�� .ascrcmnt****      � ****�� � �j U	  �������	�	����� 0 move_to  �� ��	��� 	�  ���� 0 a_destination  ��  	� ���������� 0 a_destination  �� 0 destination_path  �� 0 source_path  �� 0 msg  	� ���� ������������������������ 0 item_exists  �� 0 quoted_path  
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 msg  ��  �� 
0 my_log  �� 0 	is_folder  �� 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 change_folder  �� 0 change_pathinfo  �� 0 
change_ref  �� `*j+  O�j+ E�O*j+ E�O �%�%�%j W X  *�k+ OfO�j+  *)�,�j+ 
k+ k+ Y *�j+ 
k+ Oe	! ��W����	�	����� 0 move_with_replacing  �� ��	��� 	�  ���� 0 a_destination  ��  	� ���������� 0 a_destination  �� 0 destination_path  �� 0 source_path  �� 0 msg  	� 	����w�������������� 0 item_exists  �� 0 quoted_path  
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 msg  ��  
�� 
ascr
�� .ascrcmnt****      � ****�� =*j+  O�j+ E�O*j+ E�O �%�%�%j W X  � �j UOfOe	" �������	�	����� 0 resolve_alias  ��  ��  	� ���������� 0 
x_original  �� 0 info_rec  �� 0 original_item  �� 
0 errmsg  	� ������������������������� 0 
is_symlink  �� 0 	deep_copy  �� 0 item_exists  
�� 
msng�� 0 info  
�� 
alis�� 0 as_alias  
�� 
orig�� 
0 errmsg  ��  �� 0 	make_with  �� _*j+   *j+ E�O�j+  �Y �Y hO*j+ E�O��,E * � )j+ �,�&E�UW 	X 	 
�O*�k+ Y )	# �������	�	����� 0 
into_trash  ��  ��  	� ���� 
0 a_file  	� ��������� 0 as_alias  
�� .coredelonull���     obj �� 0 update_pathinfo  �� *j+  E�O� �j UO*j+ 	$ �������	�	����� 
0 remove  ��  ��  	� ������ 
0 a_file  �� 
0 a_path  	� ����������������� 0 quoted_path  �� 0 	_pathinfo 	_pathInfo�� 0 as_text  
�� .sysoexecTEXT���     TEXT�� 0 	_item_ref  
�� 
msng�� 0 _inforecord _infoRecord�� +*j+  E�O)�,j+ E�O�%j O�)�,�,FO�)�,FO)	% ������	�	����� 0 make_folder  �� ��	��� 	�  ���� 0 folder_name  ��  	� ������ 0 folder_name  �� 0 
new_folder  	� ���������� 0 item_exists  
�� 
msng�� 	0 child  �� 0 	make_path  �� "*j+   �Y hO*�k+ E�O�jvk+ 	& ��B����	�	����� 0 	make_path  �� ��	��� 	�  ���� 0 opts  ��  	� ������ 0 opts  �� 0 w_admin  	� ������������d��~�}�|
�� 
pcls
�� 
reco�� 0 
with_admin  �� 0 item_exists  �� 0 	is_folder  
�� 
msng� 0 
posix_path  
�~ 
strq
�} 
badm
�| .sysoexecTEXT���     TEXT�� SfE�O��,�  
��,E�Y hO*j+  *j+  )Y �Y hO�*j+ �,%�l 
O*j+  )Y hO�	' �{��z�y	�	��x�{ 0 read_as_utf8  �z  �y  	�  	� �w�v�u�t�s�w !0 check_existance_raising_error  �v 0 as_alias  
�u 
as  
�t 
utf8
�s .rdwrread****        ****�x *j+  O*j+ ��l 	( �r��q�p	�	��o�r 0 write_as_utf8  �q �n	��n 	�  �m�m 
0 a_data  �p  	� �l�k�l 
0 a_data  �k 
0 output  	� �j�i�h�g�f�e�d�c�b�a�`�j 0 as_furl  
�i 
perm
�h .rdwropenshor       file
�g 
set2
�f .rdwrseofnull���     ****
�e 
refn
�d 
as  
�c 
utf8�b 
�a .rdwrwritnull���     ****
�` .rdwrclosnull���     ****�o &*j+  �el E�O��jl O����� 	O�j 
	) �_��^�]	�	��\�_ 0 parent_folder  �^  �]  	�  	� �[�Z�Y�[ 0 	_pathinfo 	_pathInfo�Z 0 parent_folder  �Y 0 make_with_pathinfo  �\ *)�,j+ k+ 	* �X��W�V	�	��U�X 	0 child  �W �T	��T 	�  �S�S 0 subpath  �V  	� �R�R 0 subpath  	� �Q�P�O�N�M�Q 0 item_exists_without_update  �P 0 	_pathinfo 	_pathInfo�O 	0 child  �N 0 make_with_pathinfo  
�M 
msng�U *j+   *)�,�k+ k+ Y �	+ �L��K�J	�	��I�L 0 child_posix  �K �H	��H 	�  �G�G 0 subpath  �J  	� �F�E�F 0 subpath  �E 
0 a_path  	� �D�C�B�A�D 0 item_exists  �C 0 
posix_path  �B 0 	make_with  
�A 
msng�I #*j+   *j+ E�O��%E�O*�k+ Y �	, �@�?�>	�	��=�@ 0 unique_child  �? �<	��< 	�  �;�; 0 a_candidate  �>  	� �:�9�8�7�6�5�: 0 a_candidate  �9 0 
a_basename  �8 0 a_suffix  �7 0 i  �6 0 escape_suffix  �5 0 a_child  	� �4�3�2�1*0:�0�/�.�-�4 0 	is_folder  
�3 
msng�2 0 
split_name  
�1 
cobj�0 	0 child  �/ 0 item_exists  
�. 
spac
�- 
utxt�= x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�	- �,f�+�*	�	��)�, 0 list_children  �+  �*  	�  	� �(�'�( 0 as_furl  
�' .earslfdrutxt  @    file�) *j+  j 	. �&s�%�$	�	��#�& 0 each  �% �"	��" 	�  �!�! 0 a_script  �$  	� � �����  0 a_script  � 
0 a_list  � 0 listwrapper ListWrapper� 0 n  � 
0 x_item  	� 	��}	������� 0 list_children  � 0 listwrapper ListWrapper	� �	���	�	��
� .ascrinit****      � ****	� k     	�	� }��  �  �  	� �
� 
pcnt	� �
� 
pcnt� b  �
� .corecnte****       ****
� 
pcnt
� 
cobj� 	0 child  � 0 do  �# A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��	/ ����	�	��
� 0 perform_shell  � �		��	 	�  �� 0 	a_command  �  	� ��� 0 	a_command  � 
0 a_path  	� ������� 0 normalized_posix_path  
� 
strq
� 
spac
� .sysoexecTEXT���     TEXT�
 *j+  �,�,E�O��,%�%�%�%j 	0 ��� ��	�	���� 0 
shell_test  �  ��	��� 	�  ���� 
0 option  ��  	� ���� 
0 option  	� �����������
�� 
spac�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  ��   �%�%*j+ %j W 	X  fOe	1 �������	�	����� 0 	deep_copy  ��  ��  	�  	� �������� 0 	_pathinfo 	_pathInfo�� 	0 clone  �� 0 make_with_pathinfo  �� *)�,j+ k+ 	2 �� ����	�	����� 0 item_ref  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 	)�,j+ 	3 ������	�	����� !0 check_existance_raising_error  ��  ��  	�  	� ��������!����*�� 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  
�� 
errn��F�� 0 as_text  
�� 
strq�� ")�,j+  )��l�)�,j+ �,%�%Y h	4 ��2����	�	����� 0 update_pathinfo  ��  ��  	�  	� ������������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 prefering_posix  �� 0 is_posix  �� 0 make_with_opts  �� %b  )�,j+ �)�,j+ ll+ )�,FO)�,E	5 ��S����	�	����� 0 change_pathinfo  �� ��	��� 	�  ���� 0 
a_pathinfo  ��  	� ���� 0 
a_pathinfo  	� �������������� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� 0 _is_symlink  �� !�)�,FO�)�,FO)�,j+ )�,FO�)�,FO)	6 ��z����	�	����� 0 
change_ref  �� ��	��� 	�  ���� 0 file_ref  ��  	� ���� 0 file_ref  	� ������ 0 	make_with  �� 0 change_pathinfo  �� *b  �k+  k+ 	7 �������	�	����� 0 dump  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 as_text  �� 	)�,j+ 	8 �������	�	���
�� .ascrcmnt****      � ****��  ��  	�  	� ������ 0 dump  
�� .ascrcmnt****      � ****�� )jd*j+   	9 �������	�	����� 	0 debug  ��  ��  	� �������� 
0 a_path  �� 0 a_xfile  �� 0 new_named_file  	� �������������������
�� 
scpt�� 	0 setup  
�� 
psxf�� 0 	make_with  �� 0 parent_folder  �� 0 unique_child  �� 0 	item_name  
�� .ascrcmnt****      � ****�� 0)��/)k+ O��&E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
	: �������	�	����� 0 open_helpbook  ��  ��  	� ������ 0 msg  �� 	0 errno  	� 	���������	�������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  	� ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j 	; �������	�	���
�� .aevtoappnull  �   � ****��  ��  	�  	� ���� 0 open_helpbook  �� *j+   ascr  ��ޭ