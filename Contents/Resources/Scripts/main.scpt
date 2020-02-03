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
frmk  m   " #   �    A p p K i t��        j   + 1�� �� 0 nsworkspace NSWorkspace  4   + 0�� 
�� 
pcls  m   - .   �    N S W o r k s p a c e       l     ��������  ��  ��      ! " ! j   2 4�� #
�� 
pnam # m   2 3 $ $ � % % 
 X F i l e "  & ' & l     ��������  ��  ��   '  ( ) ( l      �� * +��   *	'	!!@referencesPathInfo || help:openbook='net.script-factory.PathInfo.help'
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
use XFile : script "XFile"use scripting additions(* Make a New Instance *)set a_xfile to XFile's make_with("/Users")set home_folder to XFile's make_with(path to home folder)(* Obtain File Infomation *)log a_xfile's type_identifier() -- "public.folder"log a_xfile's is_folder() -- truelog a_xfile's is_package() -- falselog a_xfile's item_name() -- "Users"(* Obtain Parent and Child *)log home_folder's parent_folder()'s posix_path()-- "/Users"log home_folder's child("Documents")'s posix_path()-- "/Users/yourhome/Documents"log home_folder's child("Library/Scripts")'s posix_path()-- "/Users/yourhome/Library/Scripts"log home_folder's unique_child("Documents")'s posix_path()--"/Users/yourhome/Documents 2"(* Read and Write *)set test_file to home_folder's child("testfile")test_file's write_as_utf8("new data")log test_file's read_as_utf8() -- "new data"(* File Manipulations *)log test_file's item_exists() --trueset test_file2 to test_file's copy_to(home_folder's child("testfile2"))log test_file2's posix_path() -- "/Users/yourhome/testfile2"test_file2's move_to(home_folder's child("Documents"))log test_file2's posix_path() -- "/Users/yourhome/Documents/testfile2"test_file2's into_trash()log test_file2's posix_path() -- "/Users/yourhome/.Trash/testfile2"test_file's into_trash()(* Working with Shell Commands *)log test_file's perform_shell("cat %s") -- "new data"    + � , ,B ! @ r e f e r e n c e s  P a t h I n f o   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . P a t h I n f o . h e l p ' 
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
 u s e   X F i l e   :   s c r i p t   " X F i l e "  u s e   s c r i p t i n g   a d d i t i o n s   ( *   M a k e   a   N e w   I n s t a n c e   * )  s e t   a _ x f i l e   t o   X F i l e ' s   m a k e _ w i t h ( " / U s e r s " )  s e t   h o m e _ f o l d e r   t o   X F i l e ' s   m a k e _ w i t h ( p a t h   t o   h o m e   f o l d e r )   ( *   O b t a i n   F i l e   I n f o m a t i o n   * )  l o g   a _ x f i l e ' s   t y p e _ i d e n t i f i e r ( )   - -   " p u b l i c . f o l d e r "  l o g   a _ x f i l e ' s   i s _ f o l d e r ( )   - -   t r u e  l o g   a _ x f i l e ' s   i s _ p a c k a g e ( )   - -   f a l s e  l o g   a _ x f i l e ' s   i t e m _ n a m e ( )   - -   " U s e r s "   ( *   O b t a i n   P a r e n t   a n d   C h i l d   * )  l o g   h o m e _ f o l d e r ' s   p a r e n t _ f o l d e r ( ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / D o c u m e n t s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " L i b r a r y / S c r i p t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / L i b r a r y / S c r i p t s "  l o g   h o m e _ f o l d e r ' s   u n i q u e _ c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - - " / U s e r s / y o u r h o m e / D o c u m e n t s   2 "   ( *   R e a d   a n d   W r i t e   * )  s e t   t e s t _ f i l e   t o   h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e " )  t e s t _ f i l e ' s   w r i t e _ a s _ u t f 8 ( " n e w   d a t a " )  l o g   t e s t _ f i l e ' s   r e a d _ a s _ u t f 8 ( )   - -   " n e w   d a t a "   ( *   F i l e   M a n i p u l a t i o n s   * )  l o g   t e s t _ f i l e ' s   i t e m _ e x i s t s ( )   - - t r u e   s e t   t e s t _ f i l e 2   t o   t e s t _ f i l e ' s   c o p y _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e 2 " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   m o v e _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / D o c u m e n t s / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   i n t o _ t r a s h ( )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / . T r a s h / t e s t f i l e 2 "  t e s t _ f i l e ' s   i n t o _ t r a s h ( )   ( *   W o r k i n g   w i t h   S h e l l   C o m m a n d s   * )  l o g   t e s t _ f i l e ' s   p e r f o r m _ s h e l l ( " c a t   % s " )   - -   " n e w   d a t a "   )  - . - l     ��������  ��  ��   .  / 0 / j   5 7�� 1�� 0 _prefer_posix   1 m   5 6��
�� boovtrue 0  2 3 2 l     ��������  ��  ��   3  4 5 4 i   8 ; 6 7 6 I      �� 8���� 0 prefer_posix   8  9�� 9 o      ���� 0 bool  ��  ��   7 r      : ; : o     ���� 0 bool   ; n      < = < o    ���� 0 _prefer_posix   =  f     5  > ? > l     ��������  ��  ��   ?  @ A @ l      �� B C��   B c ]!@group ConstractorsMaking a new instance with a reference to a file from the class object.    C � D D � ! @ g r o u p   C o n s t r a c t o r s  M a k i n g   a   n e w   i n s t a n c e   w i t h   a   r e f e r e n c e   t o   a   f i l e   f r o m   t h e   c l a s s   o b j e c t .  A  E F E l     ��������  ��  ��   F  G H G l      �� I J��   I!@abstruct Make a XFile instance with a file reference@descriptionHFS/POSIX path, alias and file URL can be accepted as file specification.@param file_ref (alias or Unicode text) : a HFS/POSIX path, alias or File URL@result script object : a new instance of XFile    J � K K ! @ a b s t r u c t    M a k e   a   X F i l e   i n s t a n c e   w i t h   a   f i l e   r e f e r e n c e  @ d e s c r i p t i o n  H F S / P O S I X   p a t h ,   a l i a s   a n d   f i l e   U R L   c a n   b e   a c c e p t e d   a s   f i l e   s p e c i f i c a t i o n .  @ p a r a m   f i l e _ r e f   ( a l i a s   o r   U n i c o d e   t e x t )   :   a   H F S / P O S I X   p a t h ,   a l i a s   o r   F i l e   U R L  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  H  L M L i   < ? N O N I      �� P���� 0 	make_with   P  Q�� Q o      ���� 0 file_ref  ��  ��   O k     X R R  S T S r      U V U m     ��
�� boovfals V o      ���� 
0 is_hfs   T  W X W Z     Y Z���� Y E    [ \ [ J    	 ] ]  ^ _ ^ m    ��
�� 
ctxt _  ` a ` m    ��
�� 
utxt a  b�� b m    ��
�� 
TEXT��   \ n   	  c d c m   
 ��
�� 
pcls d o   	 
���� 0 file_ref   Z r     e f e l    g���� g H     h h C     i j i o    ���� 0 file_ref   j m     k k � l l  /��  ��   f o      ���� 
0 is_hfs  ��  ��   X  m n m Z    P o p q r o o    ���� 
0 is_hfs   p r    + s t s n   ) u v u I   $ )�� w���� 0 make_with_hfs   w  x�� x o   $ %���� 0 file_ref  ��  ��   v o    $���� 0 pathinfo PathInfo t o      ���� 0 	path_info   q  y z y n  . 2 { | { o   / 1���� 0 _prefer_posix   |  f   . / z  }�� } r   5 A ~  ~ n  5 ? � � � I   : ?�� ����� 0 make_with_posix   �  ��� � o   : ;���� 0 file_ref  ��  ��   � o   5 :���� 0 pathinfo PathInfo  o      ���� 0 	path_info  ��   r r   D P � � � n  D N � � � I   I N�� ����� 0 make_with_hfs   �  ��� � o   I J���� 0 file_ref  ��  ��   � o   D I���� 0 pathinfo PathInfo � o      ���� 0 	path_info   n  � � � l  Q Q��������  ��  ��   �  ��� � L   Q X � � I   Q W�� ����� 0 make_with_pathinfo   �  ��� � o   R S���� 0 	path_info  ��  ��  ��   M  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstructMake a new instance with a ((<PathInfo>)) instance.@param path_info (script) : a ((<PathInfo>)) instance.@result script object : a new instance of XFile     � � � �N ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   a   ( ( < P a t h I n f o > ) )   i n s t a n c e .  @ p a r a m   p a t h _ i n f o   ( s c r i p t )   :   a   ( ( < P a t h I n f o > ) )   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e    �  � � � i   @ C � � � I      �� ����� 0 make_with_pathinfo   �  ��� � o      ���� 0 	path_info  ��  ��   � k      � �  � � � r      � � �  f      � o      ���� 0 a_parent   �  � � � h    �� ��� 0 xfile XFile � k       � �  � � � j     �� �
�� 
pare � o     ���� 0 a_parent   �  � � � j   	 �� ��� 0 	_pathinfo 	_pathInfo � o   	 ���� 0 	path_info   �  � � � j    �� ��� 0 _inforecord _infoRecord � m    ��
�� 
msng �  ��� � j    �� ��� 0 _prefer_posix   � n    � � � I    �������� 0 is_posix  ��  ��   � o    ���� 0 	path_info  ��   �  ��� � L     � � o    ���� 0 xfile XFile��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@group Make a New Instance with Changing Contents of an Instance

Making a new XFile instance with changing a part of the exisiting instance.    � � � �  ! @ g r o u p   M a k e   a   N e w   I n s t a n c e   w i t h   C h a n g i n g   C o n t e n t s   o f   a n   I n s t a n c e  
 
 M a k i n g   a   n e w   X F i l e   i n s t a n c e   w i t h   c h a n g i n g   a   p a r t   o f   t h e   e x i s i t i n g   i n s t a n c e .  �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstructMake a new instance with changing file name of the instance@param a_name (Unicode text or string) : a file name@result script object : a new instance of XFile    � � � �X ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f i l e   n a m e   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :   a   f i l e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   D G � � � I      �� ����� 0 change_name   �  ��� � o      �� 
0 a_name  ��  ��   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �~ ��}�~ 0 change_name   �  ��| � o    �{�{ 
0 a_name  �|  �}   � o    �z�z 0 	_pathinfo 	_pathInfo �  f      � o      �y�y 0 	path_info   �  ��x � L     � � I    �w ��v�w 0 make_with_pathinfo   �  ��u � o    �t�t 0 	path_info  �u  �v  �x   �  � � � l     �s�r�q�s  �r  �q   �  � � � l      �p � ��p   � � �!@abstructMake a new instance with changing folder of the instance@param a_name (alias, Unicode text, file URL, file specification) : a reference to folder@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f o l d e r   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( a l i a s ,   U n i c o d e   t e x t ,   f i l e   U R L ,   f i l e   s p e c i f i c a t i o n )   :   a   r e f e r e n c e   t o   f o l d e r  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   H K � � � I      �o ��n�o 0 change_folder   �  ��m � o      �l�l 0 
folder_ref  �m  �n   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �k ��j�k 0 change_folder   �  ��i � o    �h�h 0 
folder_ref  �i  �j   � o    �g�g 0 	_pathinfo 	_pathInfo �  f      � o      �f�f 0 	path_info   �  ��e � L     � � I    �d ��c�d 0 make_with_pathinfo   �  ��b � o    �a�a 0 	path_info  �b  �c  �e   �  � � � l     �`�_�^�`  �_  �^   �  � � � l      �] � ��]   � � �!@abstructMake a new instance with changing path extension of the instance@param a_name (Unicode text or string) :a path extension, should not start with a dot ".".<!-- end locale -->@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   p a t h   e x t e n s i o n   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   : a   p a t h   e x t e n s i o n ,   s h o u l d   n o t   s t a r t   w i t h   a   d o t   " . " .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   L O �  � I      �\�[�\ 0 change_path_extension   �Z o      �Y�Y 0 a_suffix  �Z  �[    L      I     �X�W�X 0 make_with_pathinfo   �V n   	 n   		 I    	�U
�T�U 0 change_path_extension  
 �S o    �R�R 0 a_suffix  �S  �T  	 o    �Q�Q 0 	_pathinfo 	_pathInfo  f    �V  �W   �  l     �P�O�N�P  �O  �N    l      �M�M   q k!@group Getting a File Reference form an Instance

Obtain a reference to a file which XFile reference to.    � � ! @ g r o u p   G e t t i n g   a   F i l e   R e f e r e n c e   f o r m   a n   I n s t a n c e  
 
 O b t a i n   a   r e f e r e n c e   t o   a   f i l e   w h i c h   X F i l e   r e f e r e n c e   t o .   l     �L�K�J�L  �K  �J    l      �I�I   � �!@abstructObtain a reference to a file as alias class@descriptionAn error raise, If a file or a folder does not exists.@result alias    � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   a l i a s   c l a s s  @ d e s c r i p t i o n  A n   e r r o r   r a i s e ,   I f   a   f i l e   o r   a   f o l d e r   d o e s   n o t   e x i s t s .  @ r e s u l t   a l i a s   i   P S I      �H�G�F�H 0 as_alias  �G  �F   k        I     �E�D�C�E !0 check_existance_raising_error  �D  �C    !�B! L    "" n   #$# n   %&% I   	 �A�@�?�A 0 as_alias  �@  �?  & o    	�>�> 0 	_pathinfo 	_pathInfo$  f    �B   '(' l     �=�<�;�=  �<  �;  ( )*) l      �:+,�:  + Q K!@abstructObtain a reference to a file as File URL class@result File URL   , �-- � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   F i l e   U R L   c l a s s  @ r e s u l t   F i l e   U R L * ./. i   T W010 I      �9�8�7�9 0 as_furl  �8  �7  1 L     22 n    343 n   565 I    �6�5�4�6 0 as_furl  �5  �4  6 o    �3�3 0 	_pathinfo 	_pathInfo4  f     / 787 l     �2�1�0�2  �1  �0  8 9:9 l      �/;<�/  ; / )!@abstruct Obtain HFS path@result text   < �== R ! @ a b s t r u c t    O b t a i n   H F S   p a t h  @ r e s u l t   t e x t : >?> i   X [@A@ I      �.�-�,�. 0 hfs_path  �-  �,  A L     BB n    CDC n   EFE I    �+�*�)�+ 0 hfs_path  �*  �)  F o    �(�( 0 	_pathinfo 	_pathInfoD  f     ? GHG l     �'�&�%�'  �&  �%  H IJI l      �$KL�$  K 1 +!@abstruct Obtain POSIX path@result text   L �MM V ! @ a b s t r u c t    O b t a i n   P O S I X   p a t h  @ r e s u l t   t e x t J NON i   \ _PQP I      �#�"�!�# 0 
posix_path  �"  �!  Q L     RR n    STS n   UVU I    � ���  0 
posix_path  �  �  V o    �� 0 	_pathinfo 	_pathInfoT  f     O WXW l     ����  �  �  X YZY l      �[\�  [ M G!@abstruct
Obtain POSIX path which does not end with "/".
@result text   \ �]] � ! @ a b s t r u c t 
 O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 @ r e s u l t   t e x t Z ^_^ i   ` c`a` I      ���� 0 normalized_posix_path  �  �  a L     bb n    cdc n   efe I    ���� 0 normalized_posix_path  �  �  f o    �� 0 	_pathinfo 	_pathInfod  f     _ ghg l     ����  �  �  h iji i   d gklk I      ���� 0 quoted_path  �  �  l L     mm n    
non n   	pqp 1    	�
� 
strqq n   rsr I    �
�	��
 0 
posix_path  �	  �  s o    �� 0 	_pathinfo 	_pathInfoo  f     j tut l     ����  �  �  u vwv l      �xy�  x &  !@group Working with Attributes    y �zz @ ! @ g r o u p   W o r k i n g   w i t h   A t t r i b u t e s  w {|{ l     ��� �  �  �   | }~} l      �����   P J!@abstruct
Obtain uniform type identifier (UTI) of the item 
@result text
   � ��� � ! @ a b s t r u c t 
 O b t a i n   u n i f o r m   t y p e   i d e n t i f i e r   ( U T I )   o f   t h e   i t e m   
 @ r e s u l t   t e x t 
~ ��� i   h k��� I      �������� 0 type_identifier  ��  ��  � O     ��� L    �� c    ��� l   ������ n   ��� I    ������� &0 typeoffile_error_ typeOfFile_error_� ��� l   ������ n   ��� I    �������� 0 
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
� ��� i   l o��� I      �������� 0 	is_folder  ��  ��  � k     /�� ��� r     ��� I     �������� 0 type_identifier  ��  ��  � o      ���� 
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
 	��  � ��� l     ��������  ��  ��  � ��� l      ������  � n h!@abstructCheck whether the item is a package or not.@result boolean : true if the item is a package.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   p a c k a g e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   p a c k a g e . � ��� i   p s��� I      �������� 0 
is_package  ��  ��  � O     ��� k    �� ��� L    �� n   ��� I    ������� ,0 isfilepackageatpath_ isFilePackageAtPath_� ���� l   ������ n   ��� I    �������� 0 
posix_path  ��  ��  �  f    ��  ��  ��  ��  �  g    � ���� l   ������  � P J return its type:(my type_identifier()) conformsToType:"com.apple.package"   � ��� �   r e t u r n   i t s   t y p e : ( m y   t y p e _ i d e n t i f i e r ( ) )   c o n f o r m s T o T y p e : " c o m . a p p l e . p a c k a g e "��  � n    	��� I    	�������� "0 sharedworkspace sharedWorkspace��  ��  � o     ���� 0 nsworkspace NSWorkspace� ��� l     ��������  ��  ��  � ��� l      ������  � v p!@abstructCheck whether the item is an alias file or not.@result boolean : true if the item is an alias file.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . � ��� i   t w��� I      �������� 0 is_alias  ��  ��  � L     �� l    ������ =    ��� m     �� ��� ( c o m . a p p l e . a l i a s - f i l e� I    �������� 0 type_identifier  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � z t!@abstructCheck whether the item is a symbolic link or not.@result boolean : true if the item is a symbolic link.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k . � ��� i   x {   I      �������� 0 
is_symlink  ��  ��   L      l    ���� =     m      �  p u b l i c . s y m l i n k I    �������� 0 type_identifier  ��  ��  ��  ��  � 	 l     ��������  ��  ��  	 

 l      ����   j d!@abstructCheck whether the item is visible or not.@result boolean : true if the item is visible.    � � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e .   i   |  I      �������� 0 
is_visible  ��  ��   k       r      I     �������� 0 info  ��  ��   o      ���� 0 info_rec   �� L     n     1   	 ��
�� 
pvis o    	���� 0 info_rec  ��    l     ��������  ��  ��    l      �� !��    � �!@abstructSet creator code and type code to the item.@param creator_code (text) : creator code which consists of 4 characters<!-- end locale -->@param type_code (text) : type code which consists of 4 characters   ! �""� ! @ a b s t r u c t  S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m .  @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  #$# i   � �%&% I      ��'���� 0 	set_types  ' ()( o      ���� 0 creator_code  ) *��* o      ���� 0 	type_code  ��  ��  & Z     ++,����+ H     -- I     �������� 0 	is_folder  ��  ��  , k   	 '.. /0/ r   	 121 I   	 �������� 0 as_alias  ��  ��  2 o      ���� 
0 a_file  0 343 O    !565 k     77 898 r    :;: o    ���� 0 creator_code  ; n      <=< 1    ��
�� 
fcrt= o    �� 
0 a_file  9 >�~> r     ?@? o    �}�} 0 	type_code  @ n      ABA 1    �|
�| 
astyB o    �{�{ 
0 a_file  �~  6 m    CC�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  4 D�zD r   " 'EFE m   " #�y
�y 
msngF n     GHG o   $ &�x�x 0 _inforecord _infoRecordH  f   # $�z  ��  ��  $ IJI l     �w�v�u�w  �v  �u  J KLK l      �tMN�t  M!@abstructObtain file information.@descriptionDo &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().The size of the target will not be included.@result file infomation(record) : a result of info for command.   N �OO( ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) .  T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . L PQP i   � �RSR I      �s�r�q�s 0 info  �r  �q  S k     'TT UVU Z     !WX�p�oW =    YZY n    [\[ o    �n�n 0 _inforecord _infoRecord\  f     Z m    �m
�m 
msngX k    ]] ^_^ I    �l�k�j�l !0 check_existance_raising_error  �k  �j  _ `�i` r    aba I   �hcd
�h .sysonfo4asfe        filec I    �g�f�e�g 0 as_furl  �f  �e  d �de�c
�d 
ptsze m    �b
�b boovfals�c  b n     fgf o    �a�a 0 _inforecord _infoRecordg  f    �i  �p  �o  V h�`h L   " 'ii n  " &jkj o   # %�_�_ 0 _inforecord _infoRecordk  f   " #�`  Q lml l     �^�]�\�^  �]  �\  m non l      �[pq�[  p82!@abstructObtain file information including its size.@descriptionDo &quot;info for&quot; command for the item with &quot;size&quot; option. The result is cached and same value is returned at next calling info_with_size() or ((<info>))().@result file infomation(record) : a result of info for command.   q �rrd ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   i n c l u d i n g   i t s   s i z e .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m   w i t h   & q u o t ; s i z e & q u o t ;   o p t i o n .    T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o _ w i t h _ s i z e ( )   o r   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . o sts i   � �uvu I      �Z�Y�X�Z 0 info_with_size  �Y  �X  v k     Cww xyx Z     =z{|�Wz =    }~} n    � o    �V�V 0 _inforecord _infoRecord�  f     ~ m    �U
�U 
msng{ k    �� ��� I    �T�S�R�T !0 check_existance_raising_error  �S  �R  � ��Q� r    ��� I   �P��
�P .sysonfo4asfe        file� I    �O�N�M�O 0 as_furl  �N  �M  � �L��K
�L 
ptsz� m    �J
�J boovtrue�K  � n     ��� o    �I�I 0 _inforecord _infoRecord�  f    �Q  | ��� =    '��� n     %��� 1   # %�H
�H 
ptsz� n    #��� o   ! #�G�G 0 _inforecord _infoRecord�  f     !� m   % &�F
�F 
msng� ��E� r   * 9��� I  * 5�D��
�D .sysonfo4asfe        file� I   * /�C�B�A�C 0 as_furl  �B  �A  � �@��?
�@ 
ptsz� m   0 1�>
�> boovtrue�?  � n     ��� o   6 8�=�= 0 _inforecord _infoRecord�  f   5 6�E  �W  y ��<� L   > C�� n  > B��� o   ? A�;�; 0 _inforecord _infoRecord�  f   > ?�<  t ��� l     �:�9�8�:  �9  �8  � ��� l      �7���7  � � �!@abstructObtain file information again.@descriptionDo "info for" command for the item and reset the cache of ((<info>))().@result file infomation(record) : a result of info for command.   � ���~ ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   a g a i n .  @ d e s c r i p t i o n  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   � ���� I      �6�5�4�6 0 re_info  �5  �4  � k     ;�� ��� Z     5���3�� F     ��� l    ��2�1� >    ��� n    ��� o    �0�0 0 _inforecord _infoRecord�  f     � m    �/
�/ 
msng�2  �1  � l 	  ��.�-� l   ��,�+� >   ��� n    ��� 1    �*
�* 
ptsz� n   ��� o   	 �)�) 0 _inforecord _infoRecord�  f    	� m    �(
�( 
msng�,  �+  �.  �-  � r    #��� I   �'��
�' .sysonfo4asfe        file� I    �&�%�$�& 0 as_furl  �%  �$  � �#��"
�# 
ptsz� m    �!
�! boovtrue�"  � n     ��� o     "� �  0 _inforecord _infoRecord�  f     �3  � r   & 5��� I  & 1���
� .sysonfo4asfe        file� I   & +���� 0 as_furl  �  �  � ���
� 
ptsz� m   , -�
� boovfals�  � n     ��� o   2 4�� 0 _inforecord _infoRecord�  f   1 2� ��� L   6 ;�� n  6 :��� o   7 9�� 0 _inforecord _infoRecord�  f   6 7�  � ��� l     ����  �  �  � ��� l      ����  � % !@group Obtain Path Infomation    � ��� > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  � ��� l     ����  �  �  � ��� l      ����  � W Q!@abstruct Obtain the name of the item referenced by the instance @result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e    @ r e s u l t   t e x t � ��� i   � ���� I      ���� 0 	item_name  �  �  � L     �� n    ��� n   ��� I    �
�	��
 0 	item_name  �	  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct Obtain the base name (a name which does not include path extension) of the item referenced by the instance.@result text   � ���
 ! @ a b s t r u c t    O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   � ���� I      ��� � 0 basename  �  �   � L     �� n    ��� n   ��� I    �������� 0 basename  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.@result text   � ���� ! @ a b s t r u c t    O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t �    i   � � I      �������� 0 path_extension  ��  ��   L      n     n    I    �������� 0 path_extension  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f      	
	 l     ��������  ��  ��  
  l      ����   ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text    � � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t   i   � � I      �������� 0 volume_name  ��  ��   L      n     n    I    �������� 0 volume_name  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f       l     ��������  ��  ��    l      ����   $ !@group Working with a Bundle     � < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e    !  l     ��������  ��  ��  ! "#" l      ��$%��  $ � �!@abstructObtain an item which is in the bundle resource folder.@descriptionThis method can be call to a bundle.@param resource_name (text) : a resource name@result script object : a XFile instance   % �&&� ! @ a b s t r u c t  O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r .  @ d e s c r i p t i o n  T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e .  @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e # '(' i   � �)*) I      ��+���� 0 bundle_resource  + ,��, o      ���� 0 resource_name  ��  ��  * L     -- I     ��.���� 0 	make_with  . /��/ I   ��01
�� .sysorpthalis        TEXT0 o    ���� 0 resource_name  1 ��2��
�� 
in B2 l   3����3 I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��  ( 454 l     ��������  ��  ��  5 676 l      ��89��  8 j d!@abstructObtain a reference to Info.plist of the bundle.@result script object : a XFile instance   9 �:: � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 7 ;<; i   � �=>= I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  > L     ?? I     ��@���� 0 child_posix  @ A��A m    BB �CC & C o n t e n t s / I n f o . p l i s t��  ��  < DED l     ��������  ��  ��  E FGF i   � �HIH I      �������� 0 bundle_resources_folder  ��  ��  I L     JJ I     ��K���� 0 child_posix  K L��L m    MM �NN & C o n t e n t s / R e s o u r c e s /��  ��  G OPO l     ��������  ��  ��  P QRQ l      ��ST��  S ! !@group File Manipulations    T �UU 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  R VWV l     ��������  ��  ��  W XYX l      ��Z[��  Z/)!@abstructCheck whether the item referenced by the instance exists or not.@descriptionA file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.@result boolean : true if the item exists.   [ �\\R ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . Y ]^] i   � �_`_ I      �������� 0 item_exists  ��  ��  ` L     aa n    bcb n   ded I    �������� 0 item_exists  ��  ��  e o    ���� 0 	_pathinfo 	_pathInfoc  f     ^ fgf l     ��������  ��  ��  g hih l      ��jk��  j � �!@abstructCheck whether the item referenced by the instance exists or not.@descriptionThe internal file reference will not be changed unlike ((<item_exists>)).@result boolean : true if the item exists.   k �ll� ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . i mnm i   � �opo I      �������� 0 item_exists_without_update  ��  ��  p L     qq n    rsr n   tut I    �������� 0 item_exists_without_update  ��  ��  u o    ���� 0 	_pathinfo 	_pathInfos  f     n vwv l     ��������  ��  ��  w xyx l      ��z{��  z � �!@abstructSynonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.@result boolean : true if the item exists.   { �||* ! @ a b s t r u c t  S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . y }~} i   � �� I     ������
�� .coredoexbool       obj ��  ��  � L     �� I     �������� 0 item_exists  ��  ��  ~ ��� l     ��������  ��  ��  � ��� l      ������  � l f!@abstructRename an item which referenced by the XFile instance.@result boolean : true if succeded.   � ��� � ! @ a b s t r u c t  R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e d e d . � ��� i   � ���� I      ������� 0 	rename_to  � ���� o      ���� 0 new_name  ��  ��  � k     "�� ��� O     ��� r    ��� o    ���� 0 new_name  � n      ��� 1    ��
�� 
pnam� n   ��� n   ��� I    �������� 0 as_alias_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    � m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� r    ��� m    ��
�� 
msng� n     ��� o    ���� 0 _inforecord _infoRecord�  f    � ��� n   ��� n   ��� I    ������� 0 set_name  � ���� o    ���� 0 new_name  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    � ���� L     "�� m     !��
�� boovtrue��  � ��� l     ��~�}�  �~  �}  � ��� l      �|���|  �*$!@abstruct Copy the item to specified location@descriptionSame name item in the destination is replaced.@param a_destination (script object or text) : a XFile instance referencing the copy destination or a relative path.@result script object : a XFile instance referencing copied item.   � ���H ! @ a b s t r u c t    C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n  @ d e s c r i p t i o n  S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :    a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �{��z�{ 0 copy_to  � ��y� o      �x�x 0 a_destination  �y  �z  � L     �� I     �w��v�w 0 copy_with_opts  � ��� o    �u�u 0 a_destination  � ��t� m    �s
�s 
msng�t  �v  � ��� l     �r�q�p�r  �q  �p  � ��� l      �o���o  �71!
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
 @ p a r a m   o p t s   (   r e c o r d ) :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �n��m�n 0 copy_with_opts  � ��� o      �l�l 0 a_destination  � ��k� o      �j�j 0 opts  �k  �m  � k    8�� ��� l     �i���i  � \ V cp : if source and destination are folders and the path of the source ends with "/",    � ��� �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  � ��� l     �h���h  � ^ X         cp command contents of the source copy under the destination folder like ditto.   � ��� �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .� ��� l     �g���g  � U O        The endding "/" of the source path should be removed for stable result.   � ��� �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .� ��� l     �f���f  � 5 /        Is the support  of ditto not required ?   � ��� ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?� ��� r     ��� m     �e
�e boovtrue� o      �d�d 0 w_replacing  � ��� r    ��� m    �c
�c boovfals� o      �b�b 0 w_admin  � ��� r    ��� m    	�a
�a boovfals� o      �`�` 0 
w_removing  � ��� l   ���� r    ��� m    �� ���  c p� o      �_�_ 0 command  �   or "ditto"   � ���    o r   " d i t t o "� ��� l   �^�]�\�^  �]  �\  � ��� Z    l���[�Z� =   � � n     m    �Y
�Y 
pcls o    �X�X 0 opts    m    �W
�W 
reco� k    h  Q    )�V r     	 n    

 o    �U�U 0 with_replacing   o    �T�T 0 opts  	 o      �S�S 0 w_replacing   R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  �V    Q   * ;�O r   - 2 n   - 0 o   . 0�N�N 0 
with_admin   o   - .�M�M 0 opts   o      �L�L 0 w_admin   R      �K�J�I
�K .ascrerr ****      � ****�J  �I  �O    Q   < M�H r   ? D n   ? B o   @ B�G�G 0 with_removing   o   ? @�F�F 0 opts   o      �E�E 0 
w_removing   R      �D�C�B
�D .ascrerr ****      � ****�C  �B  �H   �A Q   N h�@ Z   Q _ �?�> n   Q U!"! o   R T�=�= 	0 ditto  " o   Q R�<�< 0 opts    r   X [#$# m   X Y%% �&& 
 d i t t o$ o      �;�; 0 command  �?  �>   R      �:�9�8
�: .ascrerr ****      � ****�9  �8  �@  �A  �[  �Z  � '(' l  m m�7�6�5�7  �6  �5  ( )*) Z   m �+,�4�3+ E  m v-.- J   m r// 010 m   m n�2
�2 
ctxt1 232 m   n o�1
�1 
utxt3 4�04 m   o p�/
�/ 
TEXT�0  . n   r u565 m   s u�.
�. 
pcls6 o   r s�-�- 0 a_destination  , r   y �787 n  y �9:9 I   ~ ��,;�+�, 	0 child  ; <�*< o   ~ �)�) 0 a_destination  �*  �+  : I   y ~�(�'�&�( 0 parent_folder  �'  �&  8 o      �%�% 0 a_destination  �4  �3  * =>= l  � ��$�#�"�$  �#  �"  > ?@? Z   � �ABC�!A =  � �DED o   � �� �  0 command  E m   � �FF �GG  c pB k   � �HH IJI r   � �KLK m   � �MM �NN  - R pL o      �� 0 com_opts  J O�O Z   � �PQ��P o   � ��� 0 w_replacing  Q r   � �RSR b   � �TUT o   � ��� 0 com_opts  U m   � �VV �WW  fS o      �� 0 com_opts  �  �  �  C XYX =  � �Z[Z o   � ��� 0 command  [ m   � �\\ �]] 
 d i t t oY ^�^ r   � �_`_ m   � �aa �bb  - - r s r c` o      �� 0 com_opts  �  �!  @ cdc r   � �efe m   � ��
� boovfalsf o      �� 0 is_folder_to  d ghg Z   � �ij��i n  � �klk I   � ����� 0 item_exists  �  �  l o   � ��� 0 a_destination  j Z   � �mn�om l  � �p��p o   � ��
�
 0 
w_removing  �  �  n n  � �qrq I   � ��	���	 
0 remove  �  �  r o   � ��� 0 a_destination  �  o Z   � �st��s =  � �uvu o   � ��� 0 command  v m   � �ww �xx  c pt r   � �yzy n  � �{|{ I   � ���� � 0 	is_folder  �  �   | o   � ����� 0 a_destination  z o      ���� 0 is_folder_to  �  �  �  �  h }~} l  � ���������  ��  ��  ~ � r   � ���� n   � ���� 1   � ���
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
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   m o v i n g   a n   i t e m   w i l l   f a i l .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . � ��� i   � ���� I      ������� 0 move_to  � ���� o      ���� 0 a_destination  ��  ��  � k     _�� ��� l     ������  � ' ! my_log("start move_to in XFile")   � ��� B   m y _ l o g ( " s t a r t   m o v e _ t o   i n   X F i l e " )� ��� l    ���� I     �������� 0 item_exists  ��  ��  � G A even if the item exists, broken symbolic file will return false.   � ��� �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .� ��� r    � � n    I    �������� 0 quoted_path  ��  ��   o    ���� 0 a_destination    o      ���� 0 destination_path  �  r     I    �������� 0 quoted_path  ��  ��   o      ���� 0 source_path    Q    5	
	 I   $����
�� .sysoexecTEXT���     TEXT b      b     b     m     �  m v   o    ���� 0 source_path   1    ��
�� 
spac o    ���� 0 destination_path  ��  
 R      ����
�� .ascrerr ****      � **** o      ���� 0 msg  ��   k   , 5  I   , 2������ 
0 my_log   �� o   - .���� 0 msg  ��  ��   �� L   3 5 m   3 4��
�� boovfals��    l  6 6�� ��   T N update internal reference, because alias does not follow moved item in 10.14.     �!! �   u p d a t e   i n t e r n a l   r e f e r e n c e ,   b e c a u s e   a l i a s   d o e s   n o t   f o l l o w   m o v e d   i t e m   i n   1 0 . 1 4 . "#" Z   6 \$%��&$ n  6 ;'(' I   7 ;�������� 0 	is_folder  ��  ��  ( o   6 7���� 0 a_destination  % k   > O)) *+* l  > >��,-��  , / ) my_log("destination is folder, updated")   - �.. R   m y _ l o g ( " d e s t i n a t i o n   i s   f o l d e r ,   u p d a t e d " )+ /��/ I   > O�0�~� 0 change_pathinfo  0 1�}1 n  ? K232 n  @ K454 I   B K�|6�{�| 0 change_folder  6 7�z7 n  B G898 I   C G�y�x�w�y 0 item_ref  �x  �w  9 o   B C�v�v 0 a_destination  �z  �{  5 o   @ B�u�u 0 	_pathinfo 	_pathInfo3  f   ? @�}  �~  ��  ��  & I   R \�t:�s�t 0 
change_ref  : ;�r; n  S X<=< I   T X�q�p�o�q 0 item_ref  �p  �o  = o   S T�n�n 0 a_destination  �r  �s  # >�m> L   ] _?? m   ] ^�l
�l boovtrue�m  � @A@ l     �k�j�i�k  �j  �i  A BCB l      �hDE�h  D>8!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, the item will be replaced with the target item.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.   E �FFp ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . C GHG i   � �IJI I      �gK�f�g 0 move_with_replacing  K L�eL o      �d�d 0 a_destination  �e  �f  J k     <MM NON l    PQRP I     �c�b�a�c 0 item_exists  �b  �a  Q G A even if the item exists, broken symbolic file will return false.   R �SS �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .O TUT r    VWV n   XYX I    �`�_�^�` 0 quoted_path  �_  �^  Y o    �]�] 0 a_destination  W o      �\�\ 0 destination_path  U Z[Z r    \]\ I    �[�Z�Y�[ 0 quoted_path  �Z  �Y  ] o      �X�X 0 source_path  [ ^_^ Q    9`ab` I   $�Wc�V
�W .sysoexecTEXT���     TEXTc b     ded b    fgf b    hih m    jj �kk  m v   - f  i o    �U�U 0 source_path  g 1    �T
�T 
space o    �S�S 0 destination_path  �V  a R      �Rl�Q
�R .ascrerr ****      � ****l o      �P�P 0 msg  �Q  b k   , 9mm non O  , 6pqp I  0 5�Or�N
�O .ascrcmnt****      � ****r o   0 1�M�M 0 msg  �N  q 1   , -�L
�L 
ascro s�Ks L   7 9tt m   7 8�J
�J boovfals�K  _ u�Iu L   : <vv m   : ;�H
�H boovtrue�I  H wxw l     �G�F�E�G  �F  �E  x yzy l      �D{|�D  {!@abstructResolving original item of a alias file.@descriptionIf the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.@result script object or missing value   | �}}
 ! @ a b s t r u c t  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  @ d e s c r i p t i o n  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e z ~~ i   � ���� I      �C�B�A�C 0 resolve_alias  �B  �A  � k     ^�� ��� Z     #���@�?� I     �>�=�<�> 0 
is_symlink  �=  �<  � k    �� ��� r    ��� I    �;�:�9�; 0 	deep_copy  �:  �9  � o      �8�8 0 
x_original  � ��7� Z    ���6�� n   ��� I    �5�4�3�5 0 item_exists  �4  �3  � o    �2�2 0 
x_original  � L    �� o    �1�1 0 
x_original  �6  � L    �� m    �0
�0 
msng�7  �@  �?  � ��� l  $ $�/�.�-�/  �.  �-  � ��� r   $ +��� I   $ )�,�+�*�, 0 info  �+  �*  � o      �)�) 0 info_rec  � ��(� Z   , ^���'�� n   , 0��� m   - /�&
�& 
alis� o   , -�%�% 0 info_rec  � k   3 X�� ��� Q   3 P���� O   6 F��� r   : E��� c   : C��� l  : A��$�#� n   : A��� 1   ? A�"
�" 
orig� l  : ?��!� � n  : ?��� I   ; ?���� 0 as_alias  �  �  �  f   : ;�!  �   �$  �#  � m   A B�
� 
alis� o      �� 0 original_item  � m   6 7���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � R      ���
� .ascrerr ****      � ****� o      �� 
0 errmsg  �  � L   N P�� m   N O�
� 
msng� ��� L   Q X�� I   Q W���� 0 	make_with  � ��� o   R S�� 0 original_item  �  �  �  �'  � L   [ ^�� N   [ ]��  f   [ \�(   ��� l     ����  �  �  � ��� l      ����  � ! !@abstructPut into trash.   � ��� 6 ! @ a b s t r u c t  P u t   i n t o   t r a s h . � ��� i   � ���� I      ���� 0 
into_trash  �  �  � k     ,�� ��� O     ��� n   ��� I    �
��	�
 @0 recycleurls_completionhandler_ recycleURLs_completionHandler_� ��� l   ���� n   ��� n   ��� I    ���� 0 as_nsurl as_NSURL�  �  � o    �� 0 	_pathinfo 	_pathInfo�  f    �  �  � ��� l   ��� � m    ��
�� 
msng�  �   �  �	  �  g    � n    	��� I    	�������� "0 sharedworkspace sharedWorkspace��  ��  � o     ���� 0 nsworkspace NSWorkspace� ���� I    ,������� 0 change_pathinfo  � ���� n   (��� n   (��� I    (������� 0 change_folder  � ���� I   $�����
�� .earsffdralis        afdr� m     ��
�� afdmtrsh��  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � c ]!@abstructRemove the item referd from the target XFile instance.@result script object : me   � ��� � ! @ a b s t r u c t  R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   m e � ��� i   � ���� I      �������� 
0 remove  ��  ��  � k     *�� ��� r     ��� I     �������� 0 quoted_path  ��  ��  � o      ���� 
0 a_file  � ��� r    ��� n   ��� n  	 ��� I    �������� 0 as_text  ��  ��  � o   	 ���� 0 	_pathinfo 	_pathInfo�  f    	� o      ���� 
0 a_path  � ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� m       �  r m   - r  � o    ���� 
0 a_file  ��  �  r    ! o    ���� 
0 a_path   n      n    	 o     ���� 0 	_item_ref  	 o    ���� 0 	_pathinfo 	_pathInfo  f     

 r   " ' m   " #��
�� 
msng n      o   $ &���� 0 _inforecord _infoRecord  f   # $ �� L   ( *  f   ( )��  �  l     ��������  ��  ��    l      ����     !@group Making subfolders     � 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s    l     ��������  ��  ��    l      ����   � �!@abstructMake a sub folder.@descriptionmissing value will be returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.@result script object or missing value : a XFile instance of newly created folder.    �� ! @ a b s t r u c t  M a k e   a   s u b   f o l d e r .  @ d e s c r i p t i o n  m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r .   !  i   � �"#" I      ��$���� 0 make_folder  $ %��% o      ���� 0 folder_name  ��  ��  # k     !&& '(' Z     )*����) H     ++ l    ,����, I     �������� 0 item_exists  ��  ��  ��  ��  * L   	 -- m   	 
��
�� 
msng��  ��  ( ./. l   ��������  ��  ��  / 010 r    232 I    ��4���� 	0 child  4 5��5 o    ���� 0 folder_name  ��  ��  3 o      ���� 0 
new_folder  1 6��6 L    !77 n    898 I     ��:���� 0 	make_path  : ;��; J    ����  ��  ��  9 o    ���� 0 
new_folder  ��  ! <=< l     ��������  ��  ��  = >?> l      ��@A��  @��!@abstructMake folders which indicating the path of the XFile instance.@descriptionUsing a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.@result script object or missing value : a XFile instance of newly created folder.   A �BB ! @ a b s t r u c t  M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e .  @ d e s c r i p t i o n  U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . ? CDC i   � �EFE I      ��G���� 0 	make_path  G H��H o      ���� 0 opts  ��  ��  F k     RII JKJ r     LML m     ��
�� boovfalsM o      ���� 0 w_admin  K NON Z    PQ����P =   	RSR n    TUT m    ��
�� 
pclsU o    ���� 0 opts  S m    ��
�� 
recoQ r    VWV n    XYX o    ���� 0 
with_admin  Y o    ���� 0 opts  W o      ���� 0 w_admin  ��  ��  O Z[Z Z    0\]����\ I    �������� 0 item_exists  ��  ��  ] Z    ,^_��`^ I    #�������� 0 	is_folder  ��  ��  _ L   & (aa  f   & '��  ` m   + ,��
�� 
msng��  ��  [ bcb I  1 @��de
�� .sysoexecTEXT���     TEXTd b   1 :fgf m   1 2hh �ii  m k d i r   - p  g l  2 9j����j n   2 9klk 1   7 9��
�� 
strql I   2 7�������� 0 
posix_path  ��  ��  ��  ��  e ��m��
�� 
badmm o   ; <���� 0 w_admin  ��  c non Z  A Opq����p I   A F�������� 0 item_exists  ��  ��  q L   I Krr  f   I J��  ��  o s��s L   P Rtt m   P Q��
�� 
msng��  D uvu l     ��������  ��  ��  v wxw l     ��������  ��  ��  x yzy l      ��{|��  { 0 *!@group Reading and Writing File Contents    | �}} T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  z ~~ l     ����~��  �  �~   ��� l      �}���}  � X R!@abstructRead file contents as UTF-8 encoded text.@result Unicode text (UTF-8)   � ��� � ! @ a b s t r u c t  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) � ��� i   � ���� I      �|�{�z�| 0 read_as_utf8  �{  �z  � k     �� ��� I     �y�x�w�y !0 check_existance_raising_error  �x  �w  � ��v� L    �� I   �u��
�u .rdwrread****        ****� l   ��t�s� I    �r�q�p�r 0 as_alias  �q  �p  �t  �s  � �o��n
�o 
as  � m    �m
�m 
utf8�n  �v  � ��� l     �l�k�j�l  �k  �j  � ��� l      �i���i  � u o!@abstructWrite data into the file as UTF-8 encoded text.@param a_data (text) : data to write into the file.   � ��� � ! @ a b s t r u c t  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . � ��� i   � ���� I      �h��g�h 0 write_as_utf8  � ��f� o      �e�e 
0 a_data  �f  �g  � k     %�� ��� r     ��� I    �d��
�d .rdwropenshor       file� I     �c�b�a�c 0 as_furl  �b  �a  � �`��_
�` 
perm� m    �^
�^ boovtrue�_  � o      �]�] 
0 output  � ��� I   �\��
�\ .rdwrseofnull���     ****� o    �[�[ 
0 output  � �Z��Y
�Z 
set2� m    �X�X  �Y  � ��� I   �W��
�W .rdwrwritnull���     ****� o    �V�V 
0 a_data  � �U��
�U 
refn� o    �T�T 
0 output  � �S��R
�S 
as  � m    �Q
�Q 
utf8�R  � ��P� I    %�O��N
�O .rdwrclosnull���     ****� o     !�M�M 
0 output  �N  �P  � ��� l     �L�K�J�L  �K  �J  � ��� l      �I���I  � " !@group Parent and Children    � ��� 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  � ��� l     �H�G�F�H  �G  �F  � ��� l      �E���E  � � �!@abstructObtain a folder containing the item referenced by the XFile instance.@result script object : a XFile instance of the parent folder.   � ���  ! @ a b s t r u c t  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . � ��� i   � ���� I      �D�C�B�D 0 parent_folder  �C  �B  � L     �� I     �A��@�A 0 make_with_pathinfo  � ��?� n   ��� n   ��� I    �>�=�<�> 0 parent_folder  �=  �<  � o    �;�; 0 	_pathinfo 	_pathInfo�  f    �?  �@  � ��� l     �:�9�8�:  �9  �8  � ��� l      �7���7  �!@abstructObtain an item in the folder with specifying a sub path from the target.@descriptionIf this methods is sent to non exsisting folder, missing value is returend.@param suppath(text) :a sub path to obtain.@result script object or missing value : a XFile instance   � ���& ! @ a b s t r u c t  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  @ d e s c r i p t i o n  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e � ��� i   � ���� I      �6��5�6 	0 child  � ��4� o      �3�3 0 subpath  �4  �5  � Z     ���2�� I     �1�0�/�1 0 item_exists_without_update  �0  �/  � L    �� I    �.��-�. 0 make_with_pathinfo  � ��,� n  	 ��� n  
 ��� I    �+��*�+ 	0 child  � ��)� o    �(�( 0 subpath  �)  �*  � o   
 �'�' 0 	_pathinfo 	_pathInfo�  f   	 
�,  �-  �2  � L    �� m    �&
�& 
msng� ��� l     �%�$�#�%  �$  �#  � ��� i   � ���� I      �"��!�" 0 child_posix  � �� � o      �� 0 subpath  �   �!  � Z     "����� I     ���� 0 item_exists  �  �  � k    �� ��� r    ��� I    ���� 0 
posix_path  �  �  � o      �� 
0 a_path  � ��� r    ��� b    ��� o    �� 
0 a_path  � o    �� 0 subpath  � o      �� 
0 a_path  � ��� L    �� I    � �� 0 	make_with    � o    �� 
0 a_path  �  �  �  �  � L     " m     !�
� 
msng�  l     ����  �  �    l     �
�	��
  �	  �    l      �	
�  	��!@abstructObtain a XFile instance reference unique name item in the folder.@descriptionIf the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.@param a_candidate(text or list) :A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.@result script object : a XFile instance   
 �T ! @ a b s t r u c t  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  @ d e s c r i p t i o n  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   :  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   i   � � I      ��� 0 unique_child   � o      �� 0 a_candidate  �  �   k     w  Z     �� H      I     � �����  0 	is_folder  ��  ��   L   	  m   	 
��
�� 
msng�  �    r    ) n    I    ������ 0 
split_name    ��  o    ���� 0 a_candidate  ��  ��   o    ���� 0 pathinfo PathInfo J      !! "#" o      ���� 0 
a_basename  # $��$ o      ���� 0 a_suffix  ��   %&% Z   * ;'(��)' =  * -*+* o   * +���� 0 a_suffix  + m   + ,��
�� 
msng( r   0 3,-, m   0 1.. �//  - o      ���� 0 a_suffix  ��  ) r   6 ;010 b   6 9232 m   6 744 �55  .3 o   7 8���� 0 a_suffix  1 o      ���� 0 a_suffix  & 676 r   < ?898 m   < =���� 9 o      ���� 0 i  7 :;: r   @ C<=< m   @ A>> �??  = o      ���� 0 escape_suffix  ; @A@ T   D tBB k   I oCC DED r   I UFGF I   I S��H���� 	0 child  H I��I b   J OJKJ b   J MLML o   J K���� 0 
a_basename  M o   K L���� 0 escape_suffix  K o   M N���� 0 a_suffix  ��  ��  G o      ���� 0 a_child  E N��N Z   V oOP��QO n  V [RSR I   W [�������� 0 item_exists  ��  ��  S o   V W���� 0 a_child  P k   ^ kTT UVU r   ^ eWXW b   ^ cYZY 1   ^ _��
�� 
spacZ l  _ b[����[ c   _ b\]\ o   _ `���� 0 i  ] m   ` a��
�� 
utxt��  ��  X o      ���� 0 escape_suffix  V ^��^ r   f k_`_ [   f iaba o   f g���� 0 i  b m   g h���� ` o      ���� 0 i  ��  ��  Q  S   n o��  A c��c L   u wdd o   u v���� 0 a_child  ��   efe l     ��������  ��  ��  f ghg i   iji I      �������� 0 list_children  ��  ��  j L     
kk I    	��l��
�� .earslfdrutxt  @    filel I     �������� 0 as_furl  ��  ��  ��  h mnm l     ��������  ��  ��  n opo l      ��qr��  q<6!@abstruct
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. Each XFile instance in the target folder is passed to the &quot;do&quot; handler.The do handler must return true or false. When the do handler return false, the process is stoped immediately.@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
   r �ssl ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .    E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r .  T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y .  @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
p tut i  vwv I      ��x���� 0 each  x y��y o      ���� 0 a_script  ��  ��  w k     @zz {|{ r     }~} I     �������� 0 list_children  ��  ��  ~ o      ���� 
0 a_list  | � h    ����� 0 listwrapper ListWrapper� j     ���
�� 
pcnt� o     ���� 
0 a_list  � ��� l   ��������  ��  ��  � ���� Y    @�������� k    ;�� ��� r    +��� I    )������� 	0 child  � ���� n    %��� 4   " %���
�� 
cobj� o   # $���� 0 n  � n    "��� 1     "��
�� 
pcnt� o     ���� 0 listwrapper ListWrapper��  ��  � o      ���� 
0 x_item  � ���� Z   , ;������� H   , 3�� n  , 2��� I   - 2������� 0 do  � ���� o   - .���� 
0 x_item  ��  ��  � o   , -���� 0 a_script  �  S   6 7��  ��  ��  �� 0 n  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 
0 a_list  ��  ��  ��  u ��� l     ��������  ��  ��  � ��� l      ������  � * $!@group Working with Shell Commands    � ��� H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  � ��� l     ��������  ��  ��  � ��� l      ������  �	!@abstruct
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
� ��� i  ��� I      ������� 0 perform_shell  � ���� o      ���� 0 	a_command  ��  ��  � k     �� ��� r     ��� n    	��� 1    	��
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
� ��� i  ��� I      ������� 0 
shell_test  � ��� o      �~�~ 
0 option  �  ��  � k     �� ��� Q     ���� I   �}��|
�} .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� m    �� ��� 
 t e s t  � o    �{�{ 
0 option  � 1    �z
�z 
spac� I    �y�x�w�y 0 quoted_path  �x  �w  �|  � R      �v�u�t
�v .ascrerr ****      � ****�u  �t  � L    �� m    �s
�s boovfals� ��r� L    �� m    �q
�q boovtrue�r  � ��� l     �p�o�n�p  �o  �n  � ��� l      �m���m  �  == private *   � ���  = =   p r i v a t e   *� ��� l     �l�k�j�l  �k  �j  � ��� i  ��� I      �i�h�g�i 0 	deep_copy  �h  �g  � L     �� I     �f��e�f 0 make_with_pathinfo  � ��d� n   ��� n   ��� I    �c�b�a�c 	0 clone  �b  �a  � o    �`�` 0 	_pathinfo 	_pathInfo�  f    �d  �e  � � � l     �_�^�]�_  �^  �]     i   I      �\�[�Z�\ 0 item_ref  �[  �Z   L      n     n   	 I    �Y�X�W�Y 0 item_ref  �X  �W  	 o    �V�V 0 	_pathinfo 	_pathInfo  f      

 l     �U�T�S�U  �T  �S    i   I      �R�Q�P�R !0 check_existance_raising_error  �Q  �P   k     !  l     �O�O   4 . my_log("start check_existance_raising_error")    � \   m y _ l o g ( " s t a r t   c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r " ) �N Z     !�M�L H      l    �K�J n     n    I    �I�H�G�I 0 item_exists_without_update  �H  �G   o    �F�F 0 	_pathinfo 	_pathInfo  f     �K  �J   R    �E 
�E .ascrerr ****      � **** b    !"! b    #$# m    %% �&& 
 i t e m  $ n    '(' 1    �D
�D 
strq( l   )�C�B) n   *+* n   ,-, I    �A�@�?�A 0 as_text  �@  �?  - o    �>�> 0 	_pathinfo 	_pathInfo+  f    �C  �B  " m    .. �//     d o e s   n o t   e x i s t .  �=0�<
�= 
errn0 m    �;�;F�<  �M  �L  �N   121 l     �:�9�8�:  �9  �8  2 343 i  565 I      �7�6�5�7 0 update_pathinfo  �6  �5  6 k     $77 898 r     :;: n    <=< I    �4>�3�4 0 make_with_opts  > ?@? n   ABA n   CDC I    �2�1�0�2 0 item_ref  �1  �0  D o    �/�/ 0 	_pathinfo 	_pathInfoB  f    @ E�.E K    FF �-G�,�- 0 prefering_posix  G n   HIH n   JKJ I    �+�*�)�+ 0 is_posix  �*  �)  K o    �(�( 0 	_pathinfo 	_pathInfoI  f    �,  �.  �3  = o     �'�' 0 pathinfo PathInfo; n     LML o    �&�& 0 	_pathinfo 	_pathInfoM  f    9 N�%N L    $OO n   #PQP o     "�$�$ 0 	_pathinfo 	_pathInfoQ  f     �%  4 RSR l     �#�"�!�#  �"  �!  S TUT i   #VWV I      � X��  0 change_pathinfo  X Y�Y o      �� 0 
a_pathinfo  �  �  W k     ZZ [\[ r     ]^] o     �� 0 
a_pathinfo  ^ n     _`_ o    �� 0 	_pathinfo 	_pathInfo`  f    \ aba r    cdc m    �
� 
msngd n     efe o    
�� 0 _inforecord _infoRecordf  f    b ghg r    iji n   klk n   mnm I    ���� 0 is_posix  �  �  n o    �� 0 	_pathinfo 	_pathInfol  f    j n     opo o    �� 0 _prefer_posix  p  f    h q�q L    rr  f    �  U sts l     ����  �  �  t uvu i  $'wxw I      �y�� 0 
change_ref  y z�z o      �� 0 file_ref  �  �  x L     {{ I     �|�
� 0 change_pathinfo  | }�	} n   ~~ I    ���� 0 	make_with  � ��� o    �� 0 file_ref  �  �   o    �� 0 pathinfo PathInfo�	  �
  v ��� l     ����  �  �  � ��� i  (+��� I      � �����  0 dump  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 as_text  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� i  ,/��� I     ������
�� .ascrcmnt****      � ****��  ��  � M     �� I     �����
�� .ascrcmnt****      � ****� I    �������� 0 dump  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i  03��� I      �������� 	0 debug  ��  ��  � k     /�� ��� n    	��� I    	������� 	0 setup  � ����  f    ��  ��  � 4     ���
�� 
scpt� m    �� ���  M o d u l e L o a d e r� ��� r   
 ��� c   
 ��� m   
 �� ��� F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d f� m    ��
�� 
psxf� o      ���� 
0 a_path  � ��� r    ��� I    ������� 0 	make_with  � ���� o    ���� 
0 a_path  ��  ��  � o      ���� 0 a_xfile  � ��� l   ������  � K Ereturn a_result's change_path_extension(missing value)'s posix_path()   � ��� � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )� ��� r    %��� n   #��� I    #������� 0 unique_child  � ���� m    �� ��� : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f��  ��  � n   ��� I    �������� 0 parent_folder  ��  ��  � o    ���� 0 a_xfile  � o      ���� 0 new_named_file  � ���� I  & /�����
�� .ascrcmnt****      � ****� n  & +��� I   ' +�������� 0 	item_name  ��  ��  � o   & '���� 0 new_named_file  ��  ��  � ��� l     ��������  ��  ��  � ��� i  47��� I      �������� 0 open_helpbook  ��  ��  � Q     ,���� O   ��� I   
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
ret � o   & '���� 	0 errno  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i  8;��� I     ������
�� .aevtoappnull  �   � ****��  ��  � k     �� ��� l     ������  �  return debug()   � ���  r e t u r n   d e b u g ( )� ���� I     �������� 0 open_helpbook  ��  ��  ��  � ���� l     ��������  ��  ��  ��       H������ $��������	 											
																						 	!	"	#	$	%	&	'	(	)	*	+	,	-	.	/	0	1	2	3	4	5	6	7	8	9	:��  � F��������������������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X
�� 
pimr�� 0 pathinfo PathInfo�� 0 nsworkspace NSWorkspace
�� 
pnam�� 0 _prefer_posix  �� 0 prefer_posix  �� 0 	make_with  �� 0 make_with_pathinfo  �� 0 change_name  �� 0 change_folder  �� 0 change_path_extension  �� 0 as_alias  �� 0 as_furl  �� 0 hfs_path  �� 0 
posix_path  �� 0 normalized_posix_path  �� 0 quoted_path  �� 0 type_identifier  �� 0 	is_folder  �� 0 
is_package  �� 0 is_alias  �� 0 
is_symlink  �� 0 
is_visible  �� 0 	set_types  �� 0 info  �� 0 info_with_size  �� 0 re_info  �� 0 	item_name  �� 0 basename  �� 0 path_extension  � 0 volume_name  �~ 0 bundle_resource  �} $0 bundle_infoplist bundle_InfoPlist�| 0 bundle_resources_folder  �{ 0 item_exists  �z 0 item_exists_without_update  
�y .coredoexbool       obj �x 0 	rename_to  �w 0 copy_to  �v 0 copy_with_opts  �u 0 finder_copy_to  �t 
0 my_log  �s 0 move_to  �r 0 move_with_replacing  �q 0 resolve_alias  �p 0 
into_trash  �o 
0 remove  �n 0 make_folder  �m 0 	make_path  �l 0 read_as_utf8  �k 0 write_as_utf8  �j 0 parent_folder  �i 	0 child  �h 0 child_posix  �g 0 unique_child  �f 0 list_children  �e 0 each  �d 0 perform_shell  �c 0 
shell_test  �b 0 	deep_copy  �a 0 item_ref  �` !0 check_existance_raising_error  �_ 0 update_pathinfo  �^ 0 change_pathinfo  �] 0 
change_ref  �\ 0 dump  
�[ .ascrcmnt****      � ****�Z 	0 debug  �Y 0 open_helpbook  
�X .aevtoappnull  �   � ****� �W	;�W 	;  	<	=	>	< �V	?�U
�V 
cobj	? 	@	@   �T 
�T 
scpt�U  	= �S	A�R
�S 
cobj	A 	B	B   �Q
�Q 
osax�R  	> �P	C�O
�P 
cobj	C 	D	D   �N 
�N 
frmk�O  � 	E	E   �M 
�M 
scpt� 	F	F �L�K	G
�L misccura
�K 
pcls	G �	H	H  N S W o r k s p a c e
�� boovtrue� �J 7�I�H	I	J�G�J 0 prefer_posix  �I �F	K�F 	K  �E�E 0 bool  �H  	I �D�D 0 bool  	J �C�C 0 _prefer_posix  �G �)�,F� �B O�A�@	L	M�?�B 0 	make_with  �A �>	N�> 	N  �=�= 0 file_ref  �@  	L �<�;�:�< 0 file_ref  �; 
0 is_hfs  �: 0 	path_info  	M 	�9�8�7�6 k�5�4�3�2
�9 
ctxt
�8 
utxt
�7 
TEXT
�6 
pcls�5 0 make_with_hfs  �4 0 _prefer_posix  �3 0 make_with_posix  �2 0 make_with_pathinfo  �? YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ � �1 ��0�/	O	P�.�1 0 make_with_pathinfo  �0 �-	Q�- 	Q  �,�, 0 	path_info  �/  	O �+�*�)�+ 0 	path_info  �* 0 a_parent  �) 0 xfile XFile	P �( �	R�( 0 xfile XFile	R �'	S�&�%	T	U�$
�' .ascrinit****      � ****	S k     	V	V  �	W	W  �	X	X  �	Y	Y  ��#�#  �&  �%  	T �"�!� �
�" 
pare�! 0 	_pathinfo 	_pathInfo�  0 _inforecord _infoRecord� 0 _prefer_posix  	U ������
� 
pare� 0 	_pathinfo 	_pathInfo
� 
msng� 0 _inforecord _infoRecord� 0 is_posix  � 0 _prefer_posix  �$ b  N  Ob   �O�Ob   j+ ��. )E�O��K S�O�� � ���	Z	[�� 0 change_name  � �	\� 	\  �� 
0 a_name  �  	Z ��� 
0 a_name  � 0 	path_info  	[ ���� 0 	_pathinfo 	_pathInfo� 0 change_name  � 0 make_with_pathinfo  � )�,�k+ E�O*�k+ � � ���	]	^�
� 0 change_folder  � �		_�	 	_  �� 0 
folder_ref  �  	] ��� 0 
folder_ref  � 0 	path_info  	^ ���� 0 	_pathinfo 	_pathInfo� 0 change_folder  � 0 make_with_pathinfo  �
 )�,�k+ E�O*�k+ � � �� 	`	a��� 0 change_path_extension  � ��	b�� 	b  ���� 0 a_suffix  �   	` ���� 0 a_suffix  	a �������� 0 	_pathinfo 	_pathInfo�� 0 change_path_extension  �� 0 make_with_pathinfo  �� *)�,�k+ k+ 	  ������	c	d���� 0 as_alias  ��  ��  	c  	d �������� !0 check_existance_raising_error  �� 0 	_pathinfo 	_pathInfo�� 0 as_alias  �� *j+  O)�,j+ 	 ��1����	e	f���� 0 as_furl  ��  ��  	e  	f ������ 0 	_pathinfo 	_pathInfo�� 0 as_furl  �� 	)�,j+ 	 ��A����	g	h���� 0 hfs_path  ��  ��  	g  	h ������ 0 	_pathinfo 	_pathInfo�� 0 hfs_path  �� 	)�,j+ 	 ��Q����	i	j���� 0 
posix_path  ��  ��  	i  	j ������ 0 	_pathinfo 	_pathInfo�� 0 
posix_path  �� 	)�,j+ 	 ��a����	k	l���� 0 normalized_posix_path  ��  ��  	k  	l ������ 0 	_pathinfo 	_pathInfo�� 0 normalized_posix_path  �� 	)�,j+ 	 ��l����	m	n���� 0 quoted_path  ��  ��  	m  	n �������� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
strq�� )�,j+ �,E	 �������	o	p���� 0 type_identifier  ��  ��  	o  	p ������������ "0 sharedworkspace sharedWorkspace�� 0 
posix_path  
�� 
msng�� &0 typeoffile_error_ typeOfFile_error_
�� 
ctxt�� b  j+   *)j+ �l+ �&U	 �������	q	r���� 0 	is_folder  ��  ��  	q ������ 
0 my_uti  �� 0 a_result  	r ���������� 0 type_identifier  �� "0 sharedworkspace sharedWorkspace�� ,0 type_conformstotype_ type_conformsToType_�� 0*j+  E�Ob  j+  ��  eE�Y *��l+ E�UO�OP	 �������	s	t���� 0 
is_package  ��  ��  	s  	t �������� "0 sharedworkspace sharedWorkspace�� 0 
posix_path  �� ,0 isfilepackageatpath_ isFilePackageAtPath_�� b  j+   *)j+ k+ OPU		 �������	u	v���� 0 is_alias  ��  ��  	u  	v ����� 0 type_identifier  �� 	�*j+  	
 ������	w	x���� 0 
is_symlink  ��  ��  	w  	x ���� 0 type_identifier  �� 	�*j+  	 ������	y	z���� 0 
is_visible  ��  ��  	y ���� 0 info_rec  	z ������ 0 info  
�� 
pvis�� *j+  E�O��,E	 ��&����	{	|���� 0 	set_types  �� ��	}�� 	}  ������ 0 creator_code  �� 0 	type_code  ��  	{ �������� 0 creator_code  �� 0 	type_code  �� 
0 a_file  	| ����C���������� 0 	is_folder  �� 0 as_alias  
�� 
fcrt
�� 
asty
�� 
msng�� 0 _inforecord _infoRecord�� ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h	 ��S����	~	���� 0 info  ��  ��  	~  	 �������������� 0 _inforecord _infoRecord
�� 
msng�� !0 check_existance_raising_error  �� 0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file�� ()�,�  *j+ O*j+ �fl )�,FY hO)�,E	 ��v����	�	����� 0 info_with_size  ��  ��  	�  	� �������������� 0 _inforecord _infoRecord
�� 
msng�� !0 check_existance_raising_error  �� 0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file�� D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,E	 �������	�	����� 0 re_info  ��  ��  	�  	� ����~�}�|�{�� 0 _inforecord _infoRecord
� 
msng
�~ 
ptsz
�} 
bool�| 0 as_furl  
�{ .sysonfo4asfe        file�� <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,E	 �z��y�x	�	��w�z 0 	item_name  �y  �x  	�  	� �v�u�v 0 	_pathinfo 	_pathInfo�u 0 	item_name  �w 	)�,j+ 	 �t��s�r	�	��q�t 0 basename  �s  �r  	�  	� �p�o�p 0 	_pathinfo 	_pathInfo�o 0 basename  �q 	)�,j+ 	 �n�m�l	�	��k�n 0 path_extension  �m  �l  	�  	� �j�i�j 0 	_pathinfo 	_pathInfo�i 0 path_extension  �k 	)�,j+ 	 �h�g�f	�	��e�h 0 volume_name  �g  �f  	�  	� �d�c�d 0 	_pathinfo 	_pathInfo�c 0 volume_name  �e 	)�,j+ 	 �b*�a�`	�	��_�b 0 bundle_resource  �a �^	��^ 	�  �]�] 0 resource_name  �`  	� �\�\ 0 resource_name  	� �[�Z�Y�X
�[ 
in B�Z 0 as_alias  
�Y .sysorpthalis        TEXT�X 0 	make_with  �_ *��*j+ l k+ 	 �W>�V�U	�	��T�W $0 bundle_infoplist bundle_InfoPlist�V  �U  	�  	� B�S�S 0 child_posix  �T *�k+ 	 �RI�Q�P	�	��O�R 0 bundle_resources_folder  �Q  �P  	�  	� M�N�N 0 child_posix  �O *�k+ 	 �M`�L�K	�	��J�M 0 item_exists  �L  �K  	�  	� �I�H�I 0 	_pathinfo 	_pathInfo�H 0 item_exists  �J 	)�,j+ 	 �Gp�F�E	�	��D�G 0 item_exists_without_update  �F  �E  	�  	� �C�B�C 0 	_pathinfo 	_pathInfo�B 0 item_exists_without_update  �D 	)�,j+ 	 �A��@�?	�	��>
�A .coredoexbool       obj �@  �?  	�  	� �=�= 0 item_exists  �> *j+  	 �<��;�:	�	��9�< 0 	rename_to  �; �8	��8 	�  �7�7 0 new_name  �:  	� �6�6 0 new_name  	� ��5�4�3�2�1�0�5 0 	_pathinfo 	_pathInfo�4 0 as_alias_without_update  
�3 
pnam
�2 
msng�1 0 _inforecord _infoRecord�0 0 set_name  �9 #� �)�,j+ �,FUO�)�,FO)�,�k+ Oe	 �/��.�-	�	��,�/ 0 copy_to  �. �+	��+ 	�  �*�* 0 a_destination  �-  	� �)�) 0 a_destination  	� �(�'
�( 
msng�' 0 copy_with_opts  �, 	*��l+ 	 �&��%�$	�	��#�& 0 copy_with_opts  �% �"	��" 	�  �!� �! 0 a_destination  �  0 opts  �$  	� ������������ 0 a_destination  � 0 opts  � 0 w_replacing  � 0 w_admin  � 0 
w_removing  � 0 command  � 0 com_opts  � 0 is_folder_to  � 0 destination_path  � 0 source_path  � 0 	a_command  	� ���������%���
�	�FMV\a��w������ ��
� 
pcls
� 
reco� 0 with_replacing  �  �  � 0 
with_admin  � 0 with_removing  � 	0 ditto  
� 
ctxt
� 
utxt
�
 
TEXT�	 0 parent_folder  � 	0 child  � 0 item_exists  � 
0 remove  � 0 	is_folder  � 0 normalized_posix_path  
� 
strq
� 
spac
� 
badm
�  .sysoexecTEXT���     TEXT�� 0 	item_name  �#9eE�OfE�OfE�O�E�O��,�  U 
��,E�W X  hO 
��,E�W X  hO 
��,E�W X  hO ��,E �E�Y hW X  hY hO���mv��, *j+ �k+ E�Y hO��  a E�O� �a %E�Y hY �a   
a E�Y hOfE�O�j+  $� 
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�	 �������	�	����� 0 finder_copy_to  �� ��	��� 	�  ������ 0 a_destination  �� 0 with_replacing  ��  	� ������������ 0 a_destination  �� 0 with_replacing  �� 0 destination  �� 0 source_alias  �� 0 new_item  	� ����������������� 0 as_alias  
�� 
insh
�� 
alrp�� 
�� .coreclon****      � ****
�� 
alis�� 0 	make_with  �� +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ 	 �������	�	����� 
0 my_log  �� ��	��� 	�  ���� 
0 a_text  ��  	� ���� 
0 a_text  	� ����
�� 
ascr
�� .ascrcmnt****      � ****�� � �j U	 �������	�	����� 0 move_to  �� ��	��� 	�  ���� 0 a_destination  ��  	� ���������� 0 a_destination  �� 0 destination_path  �� 0 source_path  �� 0 msg  	� ���������������������������� 0 item_exists  �� 0 quoted_path  
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 msg  ��  �� 
0 my_log  �� 0 	is_folder  �� 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 change_folder  �� 0 change_pathinfo  �� 0 
change_ref  �� `*j+  O�j+ E�O*j+ E�O �%�%�%j W X  *�k+ OfO�j+  *)�,�j+ 
k+ k+ Y *�j+ 
k+ Oe	  ��J����	�	����� 0 move_with_replacing  �� ��	��� 	�  ���� 0 a_destination  ��  	� ���������� 0 a_destination  �� 0 destination_path  �� 0 source_path  �� 0 msg  	� 	����j�������������� 0 item_exists  �� 0 quoted_path  
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 msg  ��  
�� 
ascr
�� .ascrcmnt****      � ****�� =*j+  O�j+ E�O*j+ E�O �%�%�%j W X  � �j UOfOe	! �������	�	����� 0 resolve_alias  ��  ��  	� ���������� 0 
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
�O*�k+ Y )	" �������	�	����� 0 
into_trash  ��  ��  	�  	� 	�������������������� "0 sharedworkspace sharedWorkspace�� 0 	_pathinfo 	_pathInfo�� 0 as_nsurl as_NSURL
�� 
msng�� @0 recycleurls_completionhandler_ recycleURLs_completionHandler_
�� afdmtrsh
�� .earsffdralis        afdr�� 0 change_folder  �� 0 change_pathinfo  �� -b  j+   *)�,j+ �l+ UO*)�,�j k+ k+ 	# �������	�	����� 
0 remove  ��  ��  	� ������ 
0 a_file  �� 
0 a_path  	� ������ ���������� 0 quoted_path  �� 0 	_pathinfo 	_pathInfo�� 0 as_text  
�� .sysoexecTEXT���     TEXT�� 0 	_item_ref  
�� 
msng�� 0 _inforecord _infoRecord�� +*j+  E�O)�,j+ E�O�%j O�)�,�,FO�)�,FO)	$ ��#����	�	����� 0 make_folder  �� ��	��� 	�  ���� 0 folder_name  ��  	� ������ 0 folder_name  �� 0 
new_folder  	� ���������� 0 item_exists  
�� 
msng�� 	0 child  �� 0 	make_path  �� "*j+   �Y hO*�k+ E�O�jvk+ 	% ��F��~	�	��}�� 0 	make_path  � �|	��| 	�  �{�{ 0 opts  �~  	� �z�y�z 0 opts  �y 0 w_admin  	� �x�w�v�u�t�sh�r�q�p�o
�x 
pcls
�w 
reco�v 0 
with_admin  �u 0 item_exists  �t 0 	is_folder  
�s 
msng�r 0 
posix_path  
�q 
strq
�p 
badm
�o .sysoexecTEXT���     TEXT�} SfE�O��,�  
��,E�Y hO*j+  *j+  )Y �Y hO�*j+ �,%�l 
O*j+  )Y hO�	& �n��m�l	�	��k�n 0 read_as_utf8  �m  �l  	�  	� �j�i�h�g�f�j !0 check_existance_raising_error  �i 0 as_alias  
�h 
as  
�g 
utf8
�f .rdwrread****        ****�k *j+  O*j+ ��l 	' �e��d�c	�	��b�e 0 write_as_utf8  �d �a	��a 	�  �`�` 
0 a_data  �c  	� �_�^�_ 
0 a_data  �^ 
0 output  	� �]�\�[�Z�Y�X�W�V�U�T�S�] 0 as_furl  
�\ 
perm
�[ .rdwropenshor       file
�Z 
set2
�Y .rdwrseofnull���     ****
�X 
refn
�W 
as  
�V 
utf8�U 
�T .rdwrwritnull���     ****
�S .rdwrclosnull���     ****�b &*j+  �el E�O��jl O����� 	O�j 
	( �R��Q�P	�	��O�R 0 parent_folder  �Q  �P  	�  	� �N�M�L�N 0 	_pathinfo 	_pathInfo�M 0 parent_folder  �L 0 make_with_pathinfo  �O *)�,j+ k+ 	) �K��J�I	�	��H�K 	0 child  �J �G	��G 	�  �F�F 0 subpath  �I  	� �E�E 0 subpath  	� �D�C�B�A�@�D 0 item_exists_without_update  �C 0 	_pathinfo 	_pathInfo�B 	0 child  �A 0 make_with_pathinfo  
�@ 
msng�H *j+   *)�,�k+ k+ Y �	* �?��>�=	�	��<�? 0 child_posix  �> �;	��; 	�  �:�: 0 subpath  �=  	� �9�8�9 0 subpath  �8 
0 a_path  	� �7�6�5�4�7 0 item_exists  �6 0 
posix_path  �5 0 	make_with  
�4 
msng�< #*j+   *j+ E�O��%E�O*�k+ Y �	+ �3�2�1	�	��0�3 0 unique_child  �2 �/	��/ 	�  �.�. 0 a_candidate  �1  	� �-�,�+�*�)�(�- 0 a_candidate  �, 0 
a_basename  �+ 0 a_suffix  �* 0 i  �) 0 escape_suffix  �( 0 a_child  	� �'�&�%�$.4>�#�"�!� �' 0 	is_folder  
�& 
msng�% 0 
split_name  
�$ 
cobj�# 	0 child  �" 0 item_exists  
�! 
spac
�  
utxt�0 x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�	, �j��	�	��� 0 list_children  �  �  	�  	� ��� 0 as_furl  
� .earslfdrutxt  @    file� *j+  j 	- �w��	�	��� 0 each  � �	�� 	�  �� 0 a_script  �  	� ������ 0 a_script  � 
0 a_list  � 0 listwrapper ListWrapper� 0 n  � 
0 x_item  	� 	���	����
�	�� 0 list_children  � 0 listwrapper ListWrapper	� �	���	�	��
� .ascrinit****      � ****	� k     	�	� ���  �  �  	� �
� 
pcnt	� �
� 
pcnt� b  �
� .corecnte****       ****
� 
pcnt
�
 
cobj�	 	0 child  � 0 do  � A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��	. � �����	�	����  0 perform_shell  �� ��	��� 	�  ���� 0 	a_command  ��  	� ������ 0 	a_command  �� 
0 a_path  	� ������������ 0 normalized_posix_path  
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� *j+  �,�,E�O��,%�%�%�%j 	/ �������	�	����� 0 
shell_test  �� ��	��� 	�  ���� 
0 option  ��  	� ���� 
0 option  	� �����������
�� 
spac�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  ��   �%�%*j+ %j W 	X  fOe	0 �������	�	����� 0 	deep_copy  ��  ��  	�  	� �������� 0 	_pathinfo 	_pathInfo�� 	0 clone  �� 0 make_with_pathinfo  �� *)�,j+ k+ 	1 ������	�	����� 0 item_ref  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 	)�,j+ 	2 ������	�	����� !0 check_existance_raising_error  ��  ��  	�  	� ��������%����.�� 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  
�� 
errn��F�� 0 as_text  
�� 
strq�� ")�,j+  )��l�)�,j+ �,%�%Y h	3 ��6����	�	����� 0 update_pathinfo  ��  ��  	�  	� ������������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 prefering_posix  �� 0 is_posix  �� 0 make_with_opts  �� %b  )�,j+ �)�,j+ ll+ )�,FO)�,E	4 ��W����	�	����� 0 change_pathinfo  �� ��	��� 	�  ���� 0 
a_pathinfo  ��  	� ���� 0 
a_pathinfo  	� ������������ 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� �)�,FO�)�,FO)�,j+ )�,FO)	5 ��x����	�	����� 0 
change_ref  �� ��	��� 	�  ���� 0 file_ref  ��  	� ���� 0 file_ref  	� ������ 0 	make_with  �� 0 change_pathinfo  �� *b  �k+  k+ 	6 �������	�	����� 0 dump  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 as_text  �� 	)�,j+ 	7 �������	�	���
�� .ascrcmnt****      � ****��  ��  	�  	� ������ 0 dump  
�� .ascrcmnt****      � ****�� )jd*j+   	8 �������	�	����� 	0 debug  ��  ��  	� �������� 
0 a_path  �� 0 a_xfile  �� 0 new_named_file  	� �������������������
�� 
scpt�� 	0 setup  
�� 
psxf�� 0 	make_with  �� 0 parent_folder  �� 0 unique_child  �� 0 	item_name  
�� .ascrcmnt****      � ****�� 0)��/)k+ O��&E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
	9 �������	�	����� 0 open_helpbook  ��  ��  	� ������ 0 msg  �� 	0 errno  	� 	���������	�������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  	� ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j 	: �������	�	���
�� .aevtoappnull  �   � ****��  ��  	�  	� ���� 0 open_helpbook  �� *j+   ascr  ��ޭ