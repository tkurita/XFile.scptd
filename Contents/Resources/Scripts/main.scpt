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
 X F i l e "  & ' & l     ��������  ��  ��   '  ( ) ( l      �� * +��   *		!@referencesPathInfo || help:openbook='net.script-factory.PathInfo.help'
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
log a_xfile's UTI()log a_xfile's is_folder() -- truelog a_xfile's is_package() -- falselog a_xfile's item_name() -- "Users"(* Obtain Parent and Child *)log home_folder's parent_folder()'s posix_path()-- "/Users"log home_folder's child("Documents")'s posix_path()-- "/Users/yourhome/Documents"log home_folder's child("Library/Scripts")'s posix_path()-- "/Users/yourhome/Library/Scripts"log home_folder's unique_child("Documents")'s posix_path()--"/Users/yourhome/Documents 2"(* Read and Write *)set test_file to home_folder's child("testfile")test_file's write_as_utf8("new data")log test_file's read_as_utf8() -- "new data"(* File Manipulations *)log test_file's item_exists() --trueset test_file2 to test_file's copy_to(home_folder's child("testfile2"))log test_file2's posix_path() -- "/Users/yourhome/testfile2"test_file2's move_to(home_folder's child("Documents"))log test_file2's posix_path() -- "/Users/yourhome/Documents/testfile2"test_file2's into_trash()log test_file2's posix_path() -- "/Users/yourhome/.Trash/testfile2"test_file's into_trash()(* Working with Shell Commands *)log test_file's perform_shell("cat %s") -- "new data"    + � , , ! @ r e f e r e n c e s  P a t h I n f o   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . P a t h I n f o . h e l p ' 
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
 l o g   a _ x f i l e ' s   U T I ( )  l o g   a _ x f i l e ' s   i s _ f o l d e r ( )   - -   t r u e  l o g   a _ x f i l e ' s   i s _ p a c k a g e ( )   - -   f a l s e  l o g   a _ x f i l e ' s   i t e m _ n a m e ( )   - -   " U s e r s "   ( *   O b t a i n   P a r e n t   a n d   C h i l d   * )  l o g   h o m e _ f o l d e r ' s   p a r e n t _ f o l d e r ( ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / D o c u m e n t s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " L i b r a r y / S c r i p t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / L i b r a r y / S c r i p t s "  l o g   h o m e _ f o l d e r ' s   u n i q u e _ c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - - " / U s e r s / y o u r h o m e / D o c u m e n t s   2 "   ( *   R e a d   a n d   W r i t e   * )  s e t   t e s t _ f i l e   t o   h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e " )  t e s t _ f i l e ' s   w r i t e _ a s _ u t f 8 ( " n e w   d a t a " )  l o g   t e s t _ f i l e ' s   r e a d _ a s _ u t f 8 ( )   - -   " n e w   d a t a "   ( *   F i l e   M a n i p u l a t i o n s   * )  l o g   t e s t _ f i l e ' s   i t e m _ e x i s t s ( )   - - t r u e   s e t   t e s t _ f i l e 2   t o   t e s t _ f i l e ' s   c o p y _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e 2 " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   m o v e _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / D o c u m e n t s / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   i n t o _ t r a s h ( )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / . T r a s h / t e s t f i l e 2 "  t e s t _ f i l e ' s   i n t o _ t r a s h ( )   ( *   W o r k i n g   w i t h   S h e l l   C o m m a n d s   * )  l o g   t e s t _ f i l e ' s   p e r f o r m _ s h e l l ( " c a t   % s " )   - -   " n e w   d a t a "  )  - . - l     ��������  ��  ��   .  / 0 / j   5 7�� 1�� 0 _prefer_posix   1 m   5 6��
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
is_package  ��  ��  � L     �� l    ������ =    ��� m     �� ��� " c o m . a p p l e . p a c k a g e� I    �������� 0 type_identifier  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � v p!@abstructCheck whether the item is an alias file or not.@result boolean : true if the item is an alias file.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . � ��� i   t w��� I      �������� 0 is_alias  ��  ��  � L     �� l    ������ =    ��� m     �� ��� ( c o m . a p p l e . a l i a s - f i l e� I    �������� 0 type_identifier  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � z t!@abstructCheck whether the item is a symbolic link or not.@result boolean : true if the item is a symbolic link.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k . � ��� i   x {��� I      �������� 0 
is_symlink  ��  ��  � L     �� l    ������ =    ��� m     �� ���  p u b l i c . s y m l i n k� I    �������� 0 type_identifier  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ��� ��  � j d!@abstructCheck whether the item is visible or not.@result boolean : true if the item is visible.     � � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e . �  i   |  I      �������� 0 
is_visible  ��  ��   k       r     	
	 I     �������� 0 info  ��  ��  
 o      ���� 0 info_rec   �� L     n     1   	 ��
�� 
pvis o    	���� 0 info_rec  ��    l     ��������  ��  ��    l      ����   � �!@abstructSet creator code and type code to the item.@param creator_code (text) : creator code which consists of 4 characters<!-- end locale -->@param type_code (text) : type code which consists of 4 characters    �� ! @ a b s t r u c t  S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m .  @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s   i   � � I      ������ 0 	set_types    o      ���� 0 creator_code   �� o      ���� 0 	type_code  ��  ��   Z     +���� H        I     �������� 0 	is_folder  ��  ��   k   	 '!! "#" r   	 $%$ I   	 �������� 0 as_alias  ��  ��  % o      ���� 
0 a_file  # &'& O    !()( k     ** +,+ r    -.- o    ���� 0 creator_code  . n      /0/ 1    ��
�� 
fcrt0 o    ���� 
0 a_file  , 1��1 r     232 o    ���� 0 	type_code  3 n      454 1    ��
�� 
asty5 o    ���� 
0 a_file  ��  ) m    66�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ' 7��7 r   " '898 m   " #��
�� 
msng9 n     :;: o   $ &���� 0 _inforecord _infoRecord;  f   # $��  ��  ��   <=< l     ����~��  �  �~  = >?> l      �}@A�}  @!@abstructObtain file information.@descriptionDo &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().The size of the target will not be included.@result file infomation(record) : a result of info for command.   A �BB( ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) .  T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . ? CDC i   � �EFE I      �|�{�z�| 0 info  �{  �z  F k     'GG HIH Z     !JK�y�xJ =    LML n    NON o    �w�w 0 _inforecord _infoRecordO  f     M m    �v
�v 
msngK k    PP QRQ I    �u�t�s�u !0 check_existance_raising_error  �t  �s  R S�rS r    TUT I   �qVW
�q .sysonfo4asfe        fileV I    �p�o�n�p 0 as_furl  �o  �n  W �mX�l
�m 
ptszX m    �k
�k boovfals�l  U n     YZY o    �j�j 0 _inforecord _infoRecordZ  f    �r  �y  �x  I [�i[ L   " '\\ n  " &]^] o   # %�h�h 0 _inforecord _infoRecord^  f   " #�i  D _`_ l     �g�f�e�g  �f  �e  ` aba l      �dcd�d  c82!@abstructObtain file information including its size.@descriptionDo &quot;info for&quot; command for the item with &quot;size&quot; option. The result is cached and same value is returned at next calling info_with_size() or ((<info>))().@result file infomation(record) : a result of info for command.   d �eed ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   i n c l u d i n g   i t s   s i z e .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m   w i t h   & q u o t ; s i z e & q u o t ;   o p t i o n .    T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o _ w i t h _ s i z e ( )   o r   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . b fgf i   � �hih I      �c�b�a�c 0 info_with_size  �b  �a  i k     Cjj klk Z     =mno�`m =    pqp n    rsr o    �_�_ 0 _inforecord _infoRecords  f     q m    �^
�^ 
msngn k    tt uvu I    �]�\�[�] !0 check_existance_raising_error  �\  �[  v w�Zw r    xyx I   �Yz{
�Y .sysonfo4asfe        filez I    �X�W�V�X 0 as_furl  �W  �V  { �U|�T
�U 
ptsz| m    �S
�S boovtrue�T  y n     }~} o    �R�R 0 _inforecord _infoRecord~  f    �Z  o � =    '��� n     %��� 1   # %�Q
�Q 
ptsz� n    #��� o   ! #�P�P 0 _inforecord _infoRecord�  f     !� m   % &�O
�O 
msng� ��N� r   * 9��� I  * 5�M��
�M .sysonfo4asfe        file� I   * /�L�K�J�L 0 as_furl  �K  �J  � �I��H
�I 
ptsz� m   0 1�G
�G boovtrue�H  � n     ��� o   6 8�F�F 0 _inforecord _infoRecord�  f   5 6�N  �`  l ��E� L   > C�� n  > B��� o   ? A�D�D 0 _inforecord _infoRecord�  f   > ?�E  g ��� l     �C�B�A�C  �B  �A  � ��� l      �@���@  � � �!@abstructObtain file information again.@descriptionDo "info for" command for the item and reset the cache of ((<info>))().@result file infomation(record) : a result of info for command.   � ���~ ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   a g a i n .  @ d e s c r i p t i o n  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   � ���� I      �?�>�=�? 0 re_info  �>  �=  � k     ;�� ��� Z     5���<�� F     ��� l    ��;�:� >    ��� n    ��� o    �9�9 0 _inforecord _infoRecord�  f     � m    �8
�8 
msng�;  �:  � l 	  ��7�6� l   ��5�4� >   ��� n    ��� 1    �3
�3 
ptsz� n   ��� o   	 �2�2 0 _inforecord _infoRecord�  f    	� m    �1
�1 
msng�5  �4  �7  �6  � r    #��� I   �0��
�0 .sysonfo4asfe        file� I    �/�.�-�/ 0 as_furl  �.  �-  � �,��+
�, 
ptsz� m    �*
�* boovtrue�+  � n     ��� o     "�)�) 0 _inforecord _infoRecord�  f     �<  � r   & 5��� I  & 1�(��
�( .sysonfo4asfe        file� I   & +�'�&�%�' 0 as_furl  �&  �%  � �$��#
�$ 
ptsz� m   , -�"
�" boovfals�#  � n     ��� o   2 4�!�! 0 _inforecord _infoRecord�  f   1 2� �� � L   6 ;�� n  6 :��� o   7 9�� 0 _inforecord _infoRecord�  f   6 7�   � ��� l     ����  �  �  � ��� l      ����  � % !@group Obtain Path Infomation    � ��� > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  � ��� l     ����  �  �  � ��� l      ����  � W Q!@abstruct Obtain the name of the item referenced by the instance @result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e    @ r e s u l t   t e x t � ��� i   � ���� I      ���� 0 	item_name  �  �  � L     �� n    ��� n   ��� I    ���� 0 	item_name  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct Obtain the base name (a name which does not include path extension) of the item referenced by the instance.@result text   � ���
 ! @ a b s t r u c t    O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   � ���� I      ��
�	� 0 basename  �
  �	  � L     �� n    ��� n   ��� I    ���� 0 basename  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.@result text   � ���� ! @ a b s t r u c t    O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t � ��� i   � ���� I      � �����  0 path_extension  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 path_extension  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      �� ��    ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text    � � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t �  i   � � I      �������� 0 volume_name  ��  ��   L      n    	 n   

 I    �������� 0 volume_name  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo	  f       l     ��������  ��  ��    l      ����   $ !@group Working with a Bundle     � < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e    l     ��������  ��  ��    l      ����   � �!@abstructObtain an item which is in the bundle resource folder.@descriptionThis method can be call to a bundle.@param resource_name (text) : a resource name@result script object : a XFile instance    �� ! @ a b s t r u c t  O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r .  @ d e s c r i p t i o n  T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e .  @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   i   � � I      ������ 0 bundle_resource   �� o      ���� 0 resource_name  ��  ��   L        I     ��!���� 0 	make_with  ! "��" I   ��#$
�� .sysorpthalis        TEXT# o    ���� 0 resource_name  $ ��%��
�� 
in B% l   &����& I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��   '(' l     ��������  ��  ��  ( )*) l      ��+,��  + j d!@abstructObtain a reference to Info.plist of the bundle.@result script object : a XFile instance   , �-- � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e * ./. i   � �010 I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  1 L     22 I     ��3���� 0 child_posix  3 4��4 m    55 �66 & C o n t e n t s / I n f o . p l i s t��  ��  / 787 l     ��������  ��  ��  8 9:9 i   � �;<; I      �������� 0 bundle_resources_folder  ��  ��  < L     == I     ��>���� 0 child_posix  > ?��? m    @@ �AA & C o n t e n t s / R e s o u r c e s /��  ��  : BCB l     ��������  ��  ��  C DED l      ��FG��  F ! !@group File Manipulations    G �HH 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  E IJI l     ��������  ��  ��  J KLK l      ��MN��  M/)!@abstructCheck whether the item referenced by the instance exists or not.@descriptionA file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.@result boolean : true if the item exists.   N �OOR ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . L PQP i   � �RSR I      �������� 0 item_exists  ��  ��  S L     TT n    UVU n   WXW I    �������� 0 item_exists  ��  ��  X o    ���� 0 	_pathinfo 	_pathInfoV  f     Q YZY l     ��������  ��  ��  Z [\[ l      ��]^��  ] � �!@abstructCheck whether the item referenced by the instance exists or not.@descriptionThe internal file reference will not be changed unlike ((<item_exists>)).@result boolean : true if the item exists.   ^ �__� ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . \ `a` i   � �bcb I      �������� 0 item_exists_without_update  ��  ��  c L     dd n    efe n   ghg I    �������� 0 item_exists_without_update  ��  ��  h o    ���� 0 	_pathinfo 	_pathInfof  f     a iji l     ��������  ��  ��  j klk l      ��mn��  m � �!@abstructSynonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.@result boolean : true if the item exists.   n �oo* ! @ a b s t r u c t  S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . l pqp i   � �rsr I     ������
�� .coredoexbool       obj ��  ��  s L     tt I     �������� 0 item_exists  ��  ��  q uvu l     ��������  ��  ��  v wxw l      ��yz��  y l f!@abstructRename an item which referenced by the XFile instance.@result boolean : true if succeded.   z �{{ � ! @ a b s t r u c t  R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e d e d . x |}| i   � �~~ I      ������� 0 	rename_to  � ���� o      ���� 0 new_name  ��  ��   k     "�� ��� O     ��� r    ��� o    ���� 0 new_name  � n      ��� 1    ��
�� 
pnam� n   ��� n   ��� I    �������� 0 as_alias_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    � m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� r    ��� m    ��
�� 
msng� n     ��� o    ���� 0 _inforecord _infoRecord�  f    � ��� n   ��� n   ��� I    ������� 0 set_name  � ���� o    ���� 0 new_name  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    � ���� L     "�� m     !��
�� boovtrue��  } ��� l     ��������  ��  ��  � ��� l      ������  �*$!@abstruct Copy the item to specified location@descriptionSame name item in the destination is replaced.@param a_destination (script object or text) : a XFile instance referencing the copy destination or a relative path.@result script object : a XFile instance referencing copied item.   � ���H ! @ a b s t r u c t    C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n  @ d e s c r i p t i o n  S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :    a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      ������� 0 copy_to  � ���� o      ���� 0 a_destination  ��  ��  � L     �� I     ������ 0 copy_with_opts  � ��� o    �~�~ 0 a_destination  � ��}� m    �|
�| 
msng�}  �  � ��� l     �{�z�y�{  �z  �y  � ��� l      �x���x  �71!
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
 @ p a r a m   o p t s   (   r e c o r d ) :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �w��v�w 0 copy_with_opts  � ��� o      �u�u 0 a_destination  � ��t� o      �s�s 0 opts  �t  �v  � k    8�� ��� l     �r���r  � \ V cp : if source and destination are folders and the path of the source ends with "/",    � ��� �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  � ��� l     �q���q  � ^ X         cp command contents of the source copy under the destination folder like ditto.   � ��� �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .� ��� l     �p���p  � U O        The endding "/" of the source path should be removed for stable result.   � ��� �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .� ��� l     �o���o  � 5 /        Is the support  of ditto not required ?   � ��� ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?� ��� r     ��� m     �n
�n boovtrue� o      �m�m 0 w_replacing  � ��� r    ��� m    �l
�l boovfals� o      �k�k 0 w_admin  � ��� r    ��� m    	�j
�j boovfals� o      �i�i 0 
w_removing  � ��� l   ���� r    ��� m    �� ���  c p� o      �h�h 0 command  �   or "ditto"   � ���    o r   " d i t t o "� ��� l   �g�f�e�g  �f  �e  � ��� Z    l���d�c� =   ��� n    ��� m    �b
�b 
pcls� o    �a�a 0 opts  � m    �`
�` 
reco� k    h�� ��� Q    )���_� r     ��� n    ��� o    �^�^ 0 with_replacing  � o    �]�] 0 opts  � o      �\�\ 0 w_replacing  � R      �[�Z�Y
�[ .ascrerr ****      � ****�Z  �Y  �_  � � � Q   * ;�X r   - 2 n   - 0 o   . 0�W�W 0 
with_admin   o   - .�V�V 0 opts   o      �U�U 0 w_admin   R      �T�S�R
�T .ascrerr ****      � ****�S  �R  �X     Q   < M	
�Q	 r   ? D n   ? B o   @ B�P�P 0 with_removing   o   ? @�O�O 0 opts   o      �N�N 0 
w_removing  
 R      �M�L�K
�M .ascrerr ****      � ****�L  �K  �Q   �J Q   N h�I Z   Q _�H�G n   Q U o   R T�F�F 	0 ditto   o   Q R�E�E 0 opts   r   X [ m   X Y � 
 d i t t o o      �D�D 0 command  �H  �G   R      �C�B�A
�C .ascrerr ****      � ****�B  �A  �I  �J  �d  �c  �  l  m m�@�?�>�@  �?  �>    Z   m ��=�< E  m v !  J   m r"" #$# m   m n�;
�; 
ctxt$ %&% m   n o�:
�: 
utxt& '�9' m   o p�8
�8 
TEXT�9  ! n   r u()( m   s u�7
�7 
pcls) o   r s�6�6 0 a_destination   r   y �*+* n  y �,-, I   ~ ��5.�4�5 	0 child  . /�3/ o   ~ �2�2 0 a_destination  �3  �4  - I   y ~�1�0�/�1 0 parent_folder  �0  �/  + o      �.�. 0 a_destination  �=  �<   010 l  � ��-�,�+�-  �,  �+  1 232 Z   � �456�*4 =  � �787 o   � ��)�) 0 command  8 m   � �99 �::  c p5 k   � �;; <=< r   � �>?> m   � �@@ �AA  - R p? o      �(�( 0 com_opts  = B�'B Z   � �CD�&�%C o   � ��$�$ 0 w_replacing  D r   � �EFE b   � �GHG o   � ��#�# 0 com_opts  H m   � �II �JJ  fF o      �"�" 0 com_opts  �&  �%  �'  6 KLK =  � �MNM o   � ��!�! 0 command  N m   � �OO �PP 
 d i t t oL Q� Q r   � �RSR m   � �TT �UU  - - r s r cS o      �� 0 com_opts  �   �*  3 VWV r   � �XYX m   � ��
� boovfalsY o      �� 0 is_folder_to  W Z[Z Z   � �\]��\ n  � �^_^ I   � ����� 0 item_exists  �  �  _ o   � ��� 0 a_destination  ] Z   � �`a�b` l  � �c��c o   � ��� 0 
w_removing  �  �  a n  � �ded I   � ����� 
0 remove  �  �  e o   � ��� 0 a_destination  �  b Z   � �fg��f =  � �hih o   � ��� 0 command  i m   � �jj �kk  c pg r   � �lml n  � �non I   � ���
�	� 0 	is_folder  �
  �	  o o   � ��� 0 a_destination  m o      �� 0 is_folder_to  �  �  �  �  [ pqp l  � �����  �  �  q rsr r   � �tut n   � �vwv 1   � ��
� 
strqw n  � �xyx I   � ���� � 0 normalized_posix_path  �  �   y o   � ����� 0 a_destination  u o      ���� 0 destination_path  s z{z r   �|}| n   � �~~ 1   � ���
�� 
strq I   � ��������� 0 normalized_posix_path  ��  ��  } o      ���� 0 source_path  { ��� r  ��� b  ��� b  ��� b  ��� b  ��� b  	��� b  ��� o  ���� 0 command  � 1  ��
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
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   m o v i n g   a n   i t e m   w i l l   f a i l .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . � ��� i   � ���� I      ������� 0 move_to  � ���� o      ���� 0 a_destination  ��  ��  � k     _�� ��� l     ������  � ' ! my_log("start move_to in XFile")   � ��� B   m y _ l o g ( " s t a r t   m o v e _ t o   i n   X F i l e " )� ��� l    ���� I     �������� 0 item_exists  ��  ��  � G A even if the item exists, broken symbolic file will return false.   � ��� �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .� ��� r    ��� n   ��� I    �������� 0 quoted_path  ��  ��  � o    ���� 0 a_destination  � o      ���� 0 destination_path  � ��� r    ��� I    �������� 0 quoted_path  ��  ��  � o      ���� 0 source_path  � ��� Q    5���� I   $�����
�� .sysoexecTEXT���     TEXT� b        b     b     m     �  m v   o    ���� 0 source_path   1    ��
�� 
spac o    ���� 0 destination_path  ��  � R      ����
�� .ascrerr ****      � **** o      ���� 0 msg  ��  � k   , 5		 

 I   , 2������ 
0 my_log   �� o   - .���� 0 msg  ��  ��   �� L   3 5 m   3 4��
�� boovfals��  �  l  6 6����   T N update internal reference, because alias does not follow moved item in 10.14.    � �   u p d a t e   i n t e r n a l   r e f e r e n c e ,   b e c a u s e   a l i a s   d o e s   n o t   f o l l o w   m o v e d   i t e m   i n   1 0 . 1 4 .  Z   6 \�� n  6 ; I   7 ;�������� 0 	is_folder  ��  ��   o   6 7���� 0 a_destination   k   > O  l  > >�� ��   / ) my_log("destination is folder, updated")     �!! R   m y _ l o g ( " d e s t i n a t i o n   i s   f o l d e r ,   u p d a t e d " ) "��" I   > O��#���� 0 change_pathinfo  # $��$ n  ? K%&% n  @ K'(' I   B K��)���� 0 change_folder  ) *��* n  B G+,+ I   C G�������� 0 item_ref  ��  ��  , o   B C�� 0 a_destination  ��  ��  ( o   @ B�~�~ 0 	_pathinfo 	_pathInfo&  f   ? @��  ��  ��  ��   I   R \�}-�|�} 0 
change_ref  - .�{. n  S X/0/ I   T X�z�y�x�z 0 item_ref  �y  �x  0 o   S T�w�w 0 a_destination  �{  �|   1�v1 L   ] _22 m   ] ^�u
�u boovtrue�v  � 343 l     �t�s�r�t  �s  �r  4 565 l      �q78�q  7>8!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, the item will be replaced with the target item.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.   8 �99p ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . 6 :;: i   � �<=< I      �p>�o�p 0 move_with_replacing  > ?�n? o      �m�m 0 a_destination  �n  �o  = k     <@@ ABA l    CDEC I     �l�k�j�l 0 item_exists  �k  �j  D G A even if the item exists, broken symbolic file will return false.   E �FF �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .B GHG r    IJI n   KLK I    �i�h�g�i 0 quoted_path  �h  �g  L o    �f�f 0 a_destination  J o      �e�e 0 destination_path  H MNM r    OPO I    �d�c�b�d 0 quoted_path  �c  �b  P o      �a�a 0 source_path  N QRQ Q    9STUS I   $�`V�_
�` .sysoexecTEXT���     TEXTV b     WXW b    YZY b    [\[ m    ]] �^^  m v   - f  \ o    �^�^ 0 source_path  Z 1    �]
�] 
spacX o    �\�\ 0 destination_path  �_  T R      �[_�Z
�[ .ascrerr ****      � ****_ o      �Y�Y 0 msg  �Z  U k   , 9`` aba O  , 6cdc I  0 5�Xe�W
�X .ascrcmnt****      � ****e o   0 1�V�V 0 msg  �W  d 1   , -�U
�U 
ascrb f�Tf L   7 9gg m   7 8�S
�S boovfals�T  R h�Rh L   : <ii m   : ;�Q
�Q boovtrue�R  ; jkj l     �P�O�N�P  �O  �N  k lml l      �Mno�M  n!@abstructResolving original item of a alias file.@descriptionIf the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.@result script object or missing value   o �pp
 ! @ a b s t r u c t  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  @ d e s c r i p t i o n  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e m qrq i   � �sts I      �L�K�J�L 0 resolve_alias  �K  �J  t k     ^uu vwv Z     #xy�I�Hx I     �G�F�E�G 0 
is_symlink  �F  �E  y k    zz {|{ r    }~} I    �D�C�B�D 0 	deep_copy  �C  �B  ~ o      �A�A 0 
x_original  | �@ Z    ���?�� n   ��� I    �>�=�<�> 0 item_exists  �=  �<  � o    �;�; 0 
x_original  � L    �� o    �:�: 0 
x_original  �?  � L    �� m    �9
�9 
msng�@  �I  �H  w ��� l  $ $�8�7�6�8  �7  �6  � ��� r   $ +��� I   $ )�5�4�3�5 0 info  �4  �3  � o      �2�2 0 info_rec  � ��1� Z   , ^���0�� n   , 0��� m   - /�/
�/ 
alis� o   , -�.�. 0 info_rec  � k   3 X�� ��� Q   3 P���� O   6 F��� r   : E��� c   : C��� l  : A��-�,� n   : A��� 1   ? A�+
�+ 
orig� l  : ?��*�)� n  : ?��� I   ; ?�(�'�&�( 0 as_alias  �'  �&  �  f   : ;�*  �)  �-  �,  � m   A B�%
�% 
alis� o      �$�$ 0 original_item  � m   6 7���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � R      �#��"
�# .ascrerr ****      � ****� o      �!�! 
0 errmsg  �"  � L   N P�� m   N O� 
�  
msng� ��� L   Q X�� I   Q W���� 0 	make_with  � ��� o   R S�� 0 original_item  �  �  �  �0  � L   [ ^�� N   [ ]��  f   [ \�1  r ��� l     ����  �  �  � ��� l      ����  � ! !@abstructPut into trash.   � ��� 6 ! @ a b s t r u c t  P u t   i n t o   t r a s h . � ��� i   � ���� I      ���� 0 
into_trash  �  �  � k     $�� ��� r     ��� I     ���� 0 as_alias  �  �  � o      �� 
0 a_file  � ��� O    ��� I   ���
� .coredelonull���     obj � o    �� 
0 a_file  �  � m    	���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� I    $���
� 0 change_pathinfo  � ��	� n    ��� n    ��� I     ���� 0 change_folder  � ��� I   ���
� .earsffdralis        afdr� m    �
� afdmtrsh�  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f    �	  �
  �  � ��� l     �� ���  �   ��  � ��� l      ������  � c ]!@abstructRemove the item referd from the target XFile instance.@result script object : me   � ��� � ! @ a b s t r u c t  R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   m e � ��� i   � ���� I      �������� 
0 remove  ��  ��  � k     *�� ��� r     ��� I     �������� 0 quoted_path  ��  ��  � o      ���� 
0 a_file  � ��� r    ��� n   ��� n  	 ��� I    �������� 0 as_text  ��  ��  � o   	 ���� 0 	_pathinfo 	_pathInfo�  f    	� o      ���� 
0 a_path  � ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  r m   - r  � o    ���� 
0 a_file  ��  � ��� r    !��� o    ���� 
0 a_path  � n     ��� n    ��� o     ���� 0 	_item_ref  � o    ���� 0 	_pathinfo 	_pathInfo�  f    � ��� r   " '��� m   " #��
�� 
msng� n     ��� o   $ &���� 0 _inforecord _infoRecord�  f   # $� ���� L   ( *��  f   ( )��  � ��� l     ��������  ��  ��  � � � l      ����     !@group Making subfolders     � 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s     l     ��������  ��  ��    l      ��	��   � �!@abstructMake a sub folder.@descriptionmissing value will be returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.@result script object or missing value : a XFile instance of newly created folder.   	 �

� ! @ a b s t r u c t  M a k e   a   s u b   f o l d e r .  @ d e s c r i p t i o n  m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r .   i   � � I      ������ 0 make_folder   �� o      ���� 0 folder_name  ��  ��   k     !  Z     ���� H      l    ���� I     �������� 0 item_exists  ��  ��  ��  ��   L   	  m   	 
��
�� 
msng��  ��    l   ��������  ��  ��    r     I    ������ 	0 child    ��  o    ���� 0 folder_name  ��  ��   o      ���� 0 
new_folder   !��! L    !"" n    #$# I     ��%���� 0 	make_path  % &��& J    ����  ��  ��  $ o    ���� 0 
new_folder  ��   '(' l     ��������  ��  ��  ( )*) l      ��+,��  +��!@abstructMake folders which indicating the path of the XFile instance.@descriptionUsing a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.@result script object or missing value : a XFile instance of newly created folder.   , �-- ! @ a b s t r u c t  M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e .  @ d e s c r i p t i o n  U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . * ./. i   � �010 I      ��2���� 0 	make_path  2 3��3 o      ���� 0 opts  ��  ��  1 k     R44 565 r     787 m     ��
�� boovfals8 o      ���� 0 w_admin  6 9:9 Z    ;<����; =   	=>= n    ?@? m    ��
�� 
pcls@ o    ���� 0 opts  > m    ��
�� 
reco< r    ABA n    CDC o    ���� 0 
with_admin  D o    ���� 0 opts  B o      ���� 0 w_admin  ��  ��  : EFE Z    0GH����G I    �������� 0 item_exists  ��  ��  H Z    ,IJ��KI I    #�������� 0 	is_folder  ��  ��  J L   & (LL  f   & '��  K m   + ,��
�� 
msng��  ��  F MNM I  1 @��OP
�� .sysoexecTEXT���     TEXTO b   1 :QRQ m   1 2SS �TT  m k d i r   - p  R l  2 9U����U n   2 9VWV 1   7 9��
�� 
strqW I   2 7�������� 0 
posix_path  ��  ��  ��  ��  P ��X��
�� 
badmX o   ; <���� 0 w_admin  ��  N YZY Z  A O[\����[ I   A F�������� 0 item_exists  ��  ��  \ L   I K]]  f   I J��  ��  Z ^��^ L   P R__ m   P Q��
�� 
msng��  / `a` l     ��������  ��  ��  a bcb l     ��������  ��  ��  c ded l      ��fg��  f 0 *!@group Reading and Writing File Contents    g �hh T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  e iji l     ��������  ��  ��  j klk l      ��mn��  m X R!@abstructRead file contents as UTF-8 encoded text.@result Unicode text (UTF-8)   n �oo � ! @ a b s t r u c t  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) l pqp i   � �rsr I      �������� 0 read_as_utf8  ��  ��  s k     tt uvu I     �������� !0 check_existance_raising_error  ��  ��  v w��w L    xx I   ��yz
�� .rdwrread****        ****y l   {����{ I    �������� 0 as_alias  ��  ��  ��  ��  z ��|��
�� 
as  | m    �
� 
utf8��  ��  q }~} l     �~�}�|�~  �}  �|  ~ � l      �{���{  � u o!@abstructWrite data into the file as UTF-8 encoded text.@param a_data (text) : data to write into the file.   � ��� � ! @ a b s t r u c t  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . � ��� i   � ���� I      �z��y�z 0 write_as_utf8  � ��x� o      �w�w 
0 a_data  �x  �y  � k     %�� ��� r     ��� I    �v��
�v .rdwropenshor       file� I     �u�t�s�u 0 as_furl  �t  �s  � �r��q
�r 
perm� m    �p
�p boovtrue�q  � o      �o�o 
0 output  � ��� I   �n��
�n .rdwrseofnull���     ****� o    �m�m 
0 output  � �l��k
�l 
set2� m    �j�j  �k  � ��� I   �i��
�i .rdwrwritnull���     ****� o    �h�h 
0 a_data  � �g��
�g 
refn� o    �f�f 
0 output  � �e��d
�e 
as  � m    �c
�c 
utf8�d  � ��b� I    %�a��`
�a .rdwrclosnull���     ****� o     !�_�_ 
0 output  �`  �b  � ��� l     �^�]�\�^  �]  �\  � ��� l      �[���[  � " !@group Parent and Children    � ��� 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  � ��� l     �Z�Y�X�Z  �Y  �X  � ��� l      �W���W  � � �!@abstructObtain a folder containing the item referenced by the XFile instance.@result script object : a XFile instance of the parent folder.   � ���  ! @ a b s t r u c t  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . � ��� i   � ���� I      �V�U�T�V 0 parent_folder  �U  �T  � L     �� I     �S��R�S 0 make_with_pathinfo  � ��Q� n   ��� n   ��� I    �P�O�N�P 0 parent_folder  �O  �N  � o    �M�M 0 	_pathinfo 	_pathInfo�  f    �Q  �R  � ��� l     �L�K�J�L  �K  �J  � ��� l      �I���I  �!@abstructObtain an item in the folder with specifying a sub path from the target.@descriptionIf this methods is sent to non exsisting folder, missing value is returend.@param suppath(text) :a sub path to obtain.@result script object or missing value : a XFile instance   � ���& ! @ a b s t r u c t  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  @ d e s c r i p t i o n  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e � ��� i   � ���� I      �H��G�H 	0 child  � ��F� o      �E�E 0 subpath  �F  �G  � Z     ���D�� I     �C�B�A�C 0 item_exists_without_update  �B  �A  � L    �� I    �@��?�@ 0 make_with_pathinfo  � ��>� n  	 ��� n  
 ��� I    �=��<�= 	0 child  � ��;� o    �:�: 0 subpath  �;  �<  � o   
 �9�9 0 	_pathinfo 	_pathInfo�  f   	 
�>  �?  �D  � L    �� m    �8
�8 
msng� ��� l     �7�6�5�7  �6  �5  � ��� i   � ���� I      �4��3�4 0 child_posix  � ��2� o      �1�1 0 subpath  �2  �3  � Z     "���0�� I     �/�.�-�/ 0 item_exists  �.  �-  � k    �� ��� r    ��� I    �,�+�*�, 0 
posix_path  �+  �*  � o      �)�) 
0 a_path  � ��� r    ��� b    ��� o    �(�( 
0 a_path  � o    �'�' 0 subpath  � o      �&�& 
0 a_path  � ��%� L    �� I    �$��#�$ 0 	make_with  � ��"� o    �!�! 
0 a_path  �"  �#  �%  �0  � L     "�� m     !� 
�  
msng� ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l      ����  ���!@abstructObtain a XFile instance reference unique name item in the folder.@descriptionIf the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.@param a_candidate(text or list) :A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.@result script object : a XFile instance   � ���T ! @ a b s t r u c t  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  @ d e s c r i p t i o n  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   :  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e � ��� i   � ���� I      ���� 0 unique_child  � ��� o      �� 0 a_candidate  �  �  � k     w�� ��� Z      ��  H      I     ���� 0 	is_folder  �  �   L   	  m   	 
�
� 
msng�  �  �  r    ) n   	 I    �
�� 0 
split_name  
 � o    �� 0 a_candidate  �  �  	 o    �
�
 0 pathinfo PathInfo J        o      �	�	 0 
a_basename   � o      �� 0 a_suffix  �    Z   * ;� =  * - o   * +�� 0 a_suffix   m   + ,�
� 
msng r   0 3 m   0 1 �   o      �� 0 a_suffix  �   r   6 ; b   6 9 m   6 7 �    . o   7 8�� 0 a_suffix   o      �� 0 a_suffix   !"! r   < ?#$# m   < =� �  $ o      ���� 0 i  " %&% r   @ C'(' m   @ A)) �**  ( o      ���� 0 escape_suffix  & +,+ T   D t-- k   I o.. /0/ r   I U121 I   I S��3���� 	0 child  3 4��4 b   J O565 b   J M787 o   J K���� 0 
a_basename  8 o   K L���� 0 escape_suffix  6 o   M N���� 0 a_suffix  ��  ��  2 o      ���� 0 a_child  0 9��9 Z   V o:;��<: n  V [=>= I   W [�������� 0 item_exists  ��  ��  > o   V W���� 0 a_child  ; k   ^ k?? @A@ r   ^ eBCB b   ^ cDED 1   ^ _��
�� 
spacE l  _ bF����F c   _ bGHG o   _ `���� 0 i  H m   ` a��
�� 
utxt��  ��  C o      ���� 0 escape_suffix  A I��I r   f kJKJ [   f iLML o   f g���� 0 i  M m   g h���� K o      ���� 0 i  ��  ��  <  S   n o��  , N��N L   u wOO o   u v���� 0 a_child  ��  � PQP l     ��������  ��  ��  Q RSR i   TUT I      �������� 0 list_children  ��  ��  U L     
VV I    	��W��
�� .earslfdrutxt  @    fileW I     �������� 0 as_furl  ��  ��  ��  S XYX l     ��������  ��  ��  Y Z[Z l      ��\]��  \<6!@abstruct
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. Each XFile instance in the target folder is passed to the &quot;do&quot; handler.The do handler must return true or false. When the do handler return false, the process is stoped immediately.@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
   ] �^^l ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .    E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r .  T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y .  @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
[ _`_ i  aba I      ��c���� 0 each  c d��d o      ���� 0 a_script  ��  ��  b k     @ee fgf r     hih I     �������� 0 list_children  ��  ��  i o      ���� 
0 a_list  g jkj h    ��l�� 0 listwrapper ListWrapperl j     ��m
�� 
pcntm o     ���� 
0 a_list  k non l   ��������  ��  ��  o p��p Y    @q��rs��q k    ;tt uvu r    +wxw I    )��y���� 	0 child  y z��z n    %{|{ 4   " %��}
�� 
cobj} o   # $���� 0 n  | n    "~~ 1     "��
�� 
pcnt o     ���� 0 listwrapper ListWrapper��  ��  x o      ���� 
0 x_item  v ���� Z   , ;������� H   , 3�� n  , 2��� I   - 2������� 0 do  � ���� o   - .���� 
0 x_item  ��  ��  � o   , -���� 0 a_script  �  S   6 7��  ��  ��  �� 0 n  r m    ���� s I   �����
�� .corecnte****       ****� o    ���� 
0 a_list  ��  ��  ��  ` ��� l     ��������  ��  ��  � ��� l      ������  � * $!@group Working with Shell Commands    � ��� H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  � ��� l     ��������  ��  ��  � ��� l      ������  �	!@abstruct
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
shell_test  � ���� o      ���� 
0 option  ��  ��  � k     �� ��� Q     ���� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� m    �� ��� 
 t e s t  � o    ���� 
0 option  � 1    ��
�� 
spac� I    �������� 0 quoted_path  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    ��
�� boovfals� ���� L    �� m    ��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l      ����  �  == private *   � ���  = =   p r i v a t e   *� ��� l     �~�}�|�~  �}  �|  � ��� i  ��� I      �{�z�y�{ 0 	deep_copy  �z  �y  � L     �� I     �x��w�x 0 make_with_pathinfo  � ��v� n   ��� n   ��� I    �u�t�s�u 	0 clone  �t  �s  � o    �r�r 0 	_pathinfo 	_pathInfo�  f    �v  �w  � ��� l     �q�p�o�q  �p  �o  � ��� i  ��� I      �n�m�l�n 0 item_ref  �m  �l  � L     �� n    ��� n   ��� I    �k�j�i�k 0 item_ref  �j  �i  � o    �h�h 0 	_pathinfo 	_pathInfo�  f     � ��� l     �g�f�e�g  �f  �e  � ��� i  ��� I      �d�c�b�d !0 check_existance_raising_error  �c  �b  � k     !�� ��� l     �a���a  � 4 . my_log("start check_existance_raising_error")   � �   \   m y _ l o g ( " s t a r t   c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r " )� �` Z     !�_�^ H      l    �]�\ n     n   	 I    �[�Z�Y�[ 0 item_exists_without_update  �Z  �Y  	 o    �X�X 0 	_pathinfo 	_pathInfo  f     �]  �\   R    �W

�W .ascrerr ****      � ****
 b     b     m     � 
 i t e m   n     1    �V
�V 
strq l   �U�T n    n    I    �S�R�Q�S 0 as_text  �R  �Q   o    �P�P 0 	_pathinfo 	_pathInfo  f    �U  �T   m     �     d o e s   n o t   e x i s t . �O�N
�O 
errn m    �M�MF�N  �_  �^  �`  �  l     �L�K�J�L  �K  �J    i   !  I      �I�H�G�I 0 update_pathinfo  �H  �G  ! k     $"" #$# r     %&% n    '(' I    �F)�E�F 0 make_with_opts  ) *+* n   ,-, n   ./. I    �D�C�B�D 0 item_ref  �C  �B  / o    �A�A 0 	_pathinfo 	_pathInfo-  f    + 0�@0 K    11 �?2�>�? 0 prefering_posix  2 n   343 n   565 I    �=�<�;�= 0 is_posix  �<  �;  6 o    �:�: 0 	_pathinfo 	_pathInfo4  f    �>  �@  �E  ( o     �9�9 0 pathinfo PathInfo& n     787 o    �8�8 0 	_pathinfo 	_pathInfo8  f    $ 9�79 L    $:: n   #;<; o     "�6�6 0 	_pathinfo 	_pathInfo<  f     �7   =>= l     �5�4�3�5  �4  �3  > ?@? i   #ABA I      �2C�1�2 0 change_pathinfo  C D�0D o      �/�/ 0 
a_pathinfo  �0  �1  B k     EE FGF r     HIH o     �.�. 0 
a_pathinfo  I n     JKJ o    �-�- 0 	_pathinfo 	_pathInfoK  f    G LML r    NON m    �,
�, 
msngO n     PQP o    
�+�+ 0 _inforecord _infoRecordQ  f    M RSR r    TUT n   VWV n   XYX I    �*�)�(�* 0 is_posix  �)  �(  Y o    �'�' 0 	_pathinfo 	_pathInfoW  f    U n     Z[Z o    �&�& 0 _prefer_posix  [  f    S \�%\ L    ]]  f    �%  @ ^_^ l     �$�#�"�$  �#  �"  _ `a` i  $'bcb I      �!d� �! 0 
change_ref  d e�e o      �� 0 file_ref  �  �   c L     ff I     �g�� 0 change_pathinfo  g h�h n   iji I    �k�� 0 	make_with  k l�l o    �� 0 file_ref  �  �  j o    �� 0 pathinfo PathInfo�  �  a mnm l     ����  �  �  n opo i  (+qrq I      ���� 0 dump  �  �  r L     ss n    tut n   vwv I    ���� 0 as_text  �  �  w o    �� 0 	_pathinfo 	_pathInfou  f     p xyx l     ��
�	�  �
  �	  y z{z i  ,/|}| I     ���
� .ascrcmnt****      � ****�  �  } M     ~~ I     ��
� .ascrcmnt****      � **** I    ���� 0 dump  �  �  �  { ��� l     � �����   ��  ��  � ��� l     ��������  ��  ��  � ��� i  03��� I      �������� 	0 debug  ��  ��  � k     /�� ��� n    	��� I    	������� 	0 setup  � ����  f    ��  ��  � 4     ���
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
�� .aevtoappnull  �   � ****��  ��  � k     �� ��� l     ������  �  return debug()   � ���  r e t u r n   d e b u g ( )� ���� I     �������� 0 open_helpbook  ��  ��  ��  � ���� l     ��������  ��  ��  ��       H������ $�����������������������������	 											
																						 	!	"	#	$	%��  � F��������������������������������������������������������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j
�� 
pimr�� 0 pathinfo PathInfo�� 0 nsworkspace NSWorkspace
�� 
pnam�� 0 _prefer_posix  �� 0 prefer_posix  �� 0 	make_with  �� 0 make_with_pathinfo  �� 0 change_name  �� 0 change_folder  �� 0 change_path_extension  �� 0 as_alias  �� 0 as_furl  �� 0 hfs_path  �� 0 
posix_path  �� 0 normalized_posix_path  �� 0 quoted_path  �� 0 type_identifier  �� 0 	is_folder  �� 0 
is_package  �� 0 is_alias  �� 0 
is_symlink  �� 0 
is_visible  �� 0 	set_types  �� 0 info  �� 0 info_with_size  �� 0 re_info  �� 0 	item_name  �� 0 basename  �� 0 path_extension  �� 0 volume_name  �� 0 bundle_resource  �� $0 bundle_infoplist bundle_InfoPlist�� 0 bundle_resources_folder  �� 0 item_exists  �� 0 item_exists_without_update  
�� .coredoexbool       obj �� 0 	rename_to  �� 0 copy_to  �� 0 copy_with_opts  �� 0 finder_copy_to  �� 
0 my_log  �� 0 move_to  �� 0 move_with_replacing  �� 0 resolve_alias  �� 0 
into_trash  �� 
0 remove  �� 0 make_folder  � 0 	make_path  �~ 0 read_as_utf8  �} 0 write_as_utf8  �| 0 parent_folder  �{ 	0 child  �z 0 child_posix  �y 0 unique_child  �x 0 list_children  �w 0 each  �v 0 perform_shell  �u 0 
shell_test  �t 0 	deep_copy  �s 0 item_ref  �r !0 check_existance_raising_error  �q 0 update_pathinfo  �p 0 change_pathinfo  �o 0 
change_ref  �n 0 dump  
�m .ascrcmnt****      � ****�l 	0 debug  �k 0 open_helpbook  
�j .aevtoappnull  �   � ****� �i	&�i 	&  	'	(	)	' �h	*�g
�h 
cobj	* 	+	+   �f 
�f 
scpt�g  	( �e	,�d
�e 
cobj	, 	-	-   �c
�c 
osax�d  	) �b	.�a
�b 
cobj	. 	/	/   �` 
�` 
frmk�a  � 	0	0   �_ 
�_ 
scpt� 	1	1 �^�]	2
�^ misccura
�] 
pcls	2 �	3	3  N S W o r k s p a c e
�� boovtrue� �\ 7�[�Z	4	5�Y�\ 0 prefer_posix  �[ �X	6�X 	6  �W�W 0 bool  �Z  	4 �V�V 0 bool  	5 �U�U 0 _prefer_posix  �Y �)�,F� �T O�S�R	7	8�Q�T 0 	make_with  �S �P	9�P 	9  �O�O 0 file_ref  �R  	7 �N�M�L�N 0 file_ref  �M 
0 is_hfs  �L 0 	path_info  	8 	�K�J�I�H k�G�F�E�D
�K 
ctxt
�J 
utxt
�I 
TEXT
�H 
pcls�G 0 make_with_hfs  �F 0 _prefer_posix  �E 0 make_with_posix  �D 0 make_with_pathinfo  �Q YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ � �C ��B�A	:	;�@�C 0 make_with_pathinfo  �B �?	<�? 	<  �>�> 0 	path_info  �A  	: �=�<�;�= 0 	path_info  �< 0 a_parent  �; 0 xfile XFile	; �: �	=�: 0 xfile XFile	= �9	>�8�7	?	@�6
�9 .ascrinit****      � ****	> k     	A	A  �	B	B  �	C	C  �	D	D  ��5�5  �8  �7  	? �4�3�2�1
�4 
pare�3 0 	_pathinfo 	_pathInfo�2 0 _inforecord _infoRecord�1 0 _prefer_posix  	@ �0�/�.�-�,�+
�0 
pare�/ 0 	_pathinfo 	_pathInfo
�. 
msng�- 0 _inforecord _infoRecord�, 0 is_posix  �+ 0 _prefer_posix  �6 b  N  Ob   �O�Ob   j+ ��@ )E�O��K S�O�� �* ��)�(	E	F�'�* 0 change_name  �) �&	G�& 	G  �%�% 
0 a_name  �(  	E �$�#�$ 
0 a_name  �# 0 	path_info  	F �"�!� �" 0 	_pathinfo 	_pathInfo�! 0 change_name  �  0 make_with_pathinfo  �' )�,�k+ E�O*�k+ � � ���	H	I�� 0 change_folder  � �	J� 	J  �� 0 
folder_ref  �  	H ��� 0 
folder_ref  � 0 	path_info  	I ���� 0 	_pathinfo 	_pathInfo� 0 change_folder  � 0 make_with_pathinfo  � )�,�k+ E�O*�k+ � � ��	K	L�� 0 change_path_extension  � �	M� 	M  �� 0 a_suffix  �  	K �� 0 a_suffix  	L ���� 0 	_pathinfo 	_pathInfo� 0 change_path_extension  � 0 make_with_pathinfo  � *)�,�k+ k+ � �
�	�	N	O��
 0 as_alias  �	  �  	N  	O ���� !0 check_existance_raising_error  � 0 	_pathinfo 	_pathInfo� 0 as_alias  � *j+  O)�,j+ � �1��	P	Q� � 0 as_furl  �  �  	P  	Q ������ 0 	_pathinfo 	_pathInfo�� 0 as_furl  �  	)�,j+ � ��A����	R	S���� 0 hfs_path  ��  ��  	R  	S ������ 0 	_pathinfo 	_pathInfo�� 0 hfs_path  �� 	)�,j+ � ��Q����	T	U���� 0 
posix_path  ��  ��  	T  	U ������ 0 	_pathinfo 	_pathInfo�� 0 
posix_path  �� 	)�,j+ � ��a����	V	W���� 0 normalized_posix_path  ��  ��  	V  	W ������ 0 	_pathinfo 	_pathInfo�� 0 normalized_posix_path  �� 	)�,j+ � ��l����	X	Y���� 0 quoted_path  ��  ��  	X  	Y �������� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
strq�� )�,j+ �,E� �������	Z	[���� 0 type_identifier  ��  ��  	Z  	[ ������������ "0 sharedworkspace sharedWorkspace�� 0 
posix_path  
�� 
msng�� &0 typeoffile_error_ typeOfFile_error_
�� 
ctxt�� b  j+   *)j+ �l+ �&U� �������	\	]���� 0 	is_folder  ��  ��  	\ ������ 
0 my_uti  �� 0 a_result  	] ���������� 0 type_identifier  �� "0 sharedworkspace sharedWorkspace�� ,0 type_conformstotype_ type_conformsToType_�� 0*j+  E�Ob  j+  ��  eE�Y *��l+ E�UO�OP� �������	^	_���� 0 
is_package  ��  ��  	^  	_ ����� 0 type_identifier  �� 	�*j+  � �������	`	a���� 0 is_alias  ��  ��  	`  	a ����� 0 type_identifier  �� 	�*j+  � �������	b	c���� 0 
is_symlink  ��  ��  	b  	c ����� 0 type_identifier  �� 	�*j+  � ������	d	e���� 0 
is_visible  ��  ��  	d ���� 0 info_rec  	e ������ 0 info  
�� 
pvis�� *j+  E�O��,E� ������	f	g���� 0 	set_types  �� ��	h�� 	h  ������ 0 creator_code  �� 0 	type_code  ��  	f �������� 0 creator_code  �� 0 	type_code  �� 
0 a_file  	g ����6���������� 0 	is_folder  �� 0 as_alias  
�� 
fcrt
�� 
asty
�� 
msng�� 0 _inforecord _infoRecord�� ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h� ��F����	i	j���� 0 info  ��  ��  	i  	j �������������� 0 _inforecord _infoRecord
�� 
msng�� !0 check_existance_raising_error  �� 0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file�� ()�,�  *j+ O*j+ �fl )�,FY hO)�,E� ��i����	k	l���� 0 info_with_size  ��  ��  	k  	l �������������� 0 _inforecord _infoRecord
�� 
msng�� !0 check_existance_raising_error  �� 0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file�� D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,E� �������	m	n���� 0 re_info  ��  ��  	m  	n �������������� 0 _inforecord _infoRecord
�� 
msng
�� 
ptsz
�� 
bool�� 0 as_furl  
�� .sysonfo4asfe        file�� <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,E� �������	o	p���� 0 	item_name  ��  ��  	o  	p ������ 0 	_pathinfo 	_pathInfo�� 0 	item_name  �� 	)�,j+ � �������	q	r���� 0 basename  ��  ��  	q  	r ������ 0 	_pathinfo 	_pathInfo�� 0 basename  �� 	)�,j+ � �������	s	t��� 0 path_extension  ��  ��  	s  	t �~�}�~ 0 	_pathinfo 	_pathInfo�} 0 path_extension  � 	)�,j+ � �|�{�z	u	v�y�| 0 volume_name  �{  �z  	u  	v �x�w�x 0 	_pathinfo 	_pathInfo�w 0 volume_name  �y 	)�,j+ � �v�u�t	w	x�s�v 0 bundle_resource  �u �r	y�r 	y  �q�q 0 resource_name  �t  	w �p�p 0 resource_name  	x �o�n�m�l
�o 
in B�n 0 as_alias  
�m .sysorpthalis        TEXT�l 0 	make_with  �s *��*j+ l k+ 	  �k1�j�i	z	{�h�k $0 bundle_infoplist bundle_InfoPlist�j  �i  	z  	{ 5�g�g 0 child_posix  �h *�k+ 	 �f<�e�d	|	}�c�f 0 bundle_resources_folder  �e  �d  	|  	} @�b�b 0 child_posix  �c *�k+ 	 �aS�`�_	~	�^�a 0 item_exists  �`  �_  	~  	 �]�\�] 0 	_pathinfo 	_pathInfo�\ 0 item_exists  �^ 	)�,j+ 	 �[c�Z�Y	�	��X�[ 0 item_exists_without_update  �Z  �Y  	�  	� �W�V�W 0 	_pathinfo 	_pathInfo�V 0 item_exists_without_update  �X 	)�,j+ 	 �Us�T�S	�	��R
�U .coredoexbool       obj �T  �S  	�  	� �Q�Q 0 item_exists  �R *j+  	 �P�O�N	�	��M�P 0 	rename_to  �O �L	��L 	�  �K�K 0 new_name  �N  	� �J�J 0 new_name  	� ��I�H�G�F�E�D�I 0 	_pathinfo 	_pathInfo�H 0 as_alias_without_update  
�G 
pnam
�F 
msng�E 0 _inforecord _infoRecord�D 0 set_name  �M #� �)�,j+ �,FUO�)�,FO)�,�k+ Oe	 �C��B�A	�	��@�C 0 copy_to  �B �?	��? 	�  �>�> 0 a_destination  �A  	� �=�= 0 a_destination  	� �<�;
�< 
msng�; 0 copy_with_opts  �@ 	*��l+ 	 �:��9�8	�	��7�: 0 copy_with_opts  �9 �6	��6 	�  �5�4�5 0 a_destination  �4 0 opts  �8  	� �3�2�1�0�/�.�-�,�+�*�)�3 0 a_destination  �2 0 opts  �1 0 w_replacing  �0 0 w_admin  �/ 0 
w_removing  �. 0 command  �- 0 com_opts  �, 0 is_folder_to  �+ 0 destination_path  �* 0 source_path  �) 0 	a_command  	� ��(�'�&�%�$�#�"�!� ����9@IOT��j�������
�( 
pcls
�' 
reco�& 0 with_replacing  �%  �$  �# 0 
with_admin  �" 0 with_removing  �! 	0 ditto  
�  
ctxt
� 
utxt
� 
TEXT� 0 parent_folder  � 	0 child  � 0 item_exists  � 
0 remove  � 0 	is_folder  � 0 normalized_posix_path  
� 
strq
� 
spac
� 
badm
� .sysoexecTEXT���     TEXT� 0 	item_name  �79eE�OfE�OfE�O�E�O��,�  U 
��,E�W X  hO 
��,E�W X  hO 
��,E�W X  hO ��,E �E�Y hW X  hY hO���mv��, *j+ �k+ E�Y hO��  a E�O� �a %E�Y hY �a   
a E�Y hOfE�O�j+  $� 
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�	 ����	�	��� 0 finder_copy_to  � �	�� 	�  ��� 0 a_destination  � 0 with_replacing  �  	� ��
�	��� 0 a_destination  �
 0 with_replacing  �	 0 destination  � 0 source_alias  � 0 new_item  	� �������� � 0 as_alias  
� 
insh
� 
alrp� 
� .coreclon****      � ****
� 
alis�  0 	make_with  � +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ 		 �������	�	����� 
0 my_log  �� ��	��� 	�  ���� 
0 a_text  ��  	� ���� 
0 a_text  	� ����
�� 
ascr
�� .ascrcmnt****      � ****�� � �j U	
 �������	�	����� 0 move_to  �� ��	��� 	�  ���� 0 a_destination  ��  	� ���������� 0 a_destination  �� 0 destination_path  �� 0 source_path  �� 0 msg  	� ���������������������������� 0 item_exists  �� 0 quoted_path  
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 msg  ��  �� 
0 my_log  �� 0 	is_folder  �� 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 change_folder  �� 0 change_pathinfo  �� 0 
change_ref  �� `*j+  O�j+ E�O*j+ E�O �%�%�%j W X  *�k+ OfO�j+  *)�,�j+ 
k+ k+ Y *�j+ 
k+ Oe	 ��=����	�	����� 0 move_with_replacing  �� ��	��� 	�  ���� 0 a_destination  ��  	� ���������� 0 a_destination  �� 0 destination_path  �� 0 source_path  �� 0 msg  	� 	����]�������������� 0 item_exists  �� 0 quoted_path  
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 msg  ��  
�� 
ascr
�� .ascrcmnt****      � ****�� =*j+  O�j+ E�O*j+ E�O �%�%�%j W X  � �j UOfOe	 ��t����	�	����� 0 resolve_alias  ��  ��  	� ���������� 0 
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
�O*�k+ Y )	 �������	�	����� 0 
into_trash  ��  ��  	� ���� 
0 a_file  	� ����������������� 0 as_alias  
�� .coredelonull���     obj �� 0 	_pathinfo 	_pathInfo
�� afdmtrsh
�� .earsffdralis        afdr�� 0 change_folder  �� 0 change_pathinfo  �� %*j+  E�O� �j UO*)�,�j k+ k+ 	 �������	�	����� 
0 remove  ��  ��  	� ������ 
0 a_file  �� 
0 a_path  	� ����������������� 0 quoted_path  �� 0 	_pathinfo 	_pathInfo�� 0 as_text  
�� .sysoexecTEXT���     TEXT�� 0 	_item_ref  
�� 
msng�� 0 _inforecord _infoRecord�� +*j+  E�O)�,j+ E�O�%j O�)�,�,FO�)�,FO)	 ������	�	����� 0 make_folder  �� ��	��� 	�  ���� 0 folder_name  ��  	� ������ 0 folder_name  �� 0 
new_folder  	� ���������� 0 item_exists  
�� 
msng�� 	0 child  �� 0 	make_path  �� "*j+   �Y hO*�k+ E�O�jvk+ 	 ��1����	�	����� 0 	make_path  �� ��	��� 	�  ���� 0 opts  ��  	� ������ 0 opts  �� 0 w_admin  	� ������������S��������
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
O*j+  )Y hO�	 ��s����	�	����� 0 read_as_utf8  ��  ��  	�  	� ��~�}�|�{� !0 check_existance_raising_error  �~ 0 as_alias  
�} 
as  
�| 
utf8
�{ .rdwrread****        ****�� *j+  O*j+ ��l 	 �z��y�x	�	��w�z 0 write_as_utf8  �y �v	��v 	�  �u�u 
0 a_data  �x  	� �t�s�t 
0 a_data  �s 
0 output  	� �r�q�p�o�n�m�l�k�j�i�h�r 0 as_furl  
�q 
perm
�p .rdwropenshor       file
�o 
set2
�n .rdwrseofnull���     ****
�m 
refn
�l 
as  
�k 
utf8�j 
�i .rdwrwritnull���     ****
�h .rdwrclosnull���     ****�w &*j+  �el E�O��jl O����� 	O�j 
	 �g��f�e	�	��d�g 0 parent_folder  �f  �e  	�  	� �c�b�a�c 0 	_pathinfo 	_pathInfo�b 0 parent_folder  �a 0 make_with_pathinfo  �d *)�,j+ k+ 	 �`��_�^	�	��]�` 	0 child  �_ �\	��\ 	�  �[�[ 0 subpath  �^  	� �Z�Z 0 subpath  	� �Y�X�W�V�U�Y 0 item_exists_without_update  �X 0 	_pathinfo 	_pathInfo�W 	0 child  �V 0 make_with_pathinfo  
�U 
msng�] *j+   *)�,�k+ k+ Y �	 �T��S�R	�	��Q�T 0 child_posix  �S �P	��P 	�  �O�O 0 subpath  �R  	� �N�M�N 0 subpath  �M 
0 a_path  	� �L�K�J�I�L 0 item_exists  �K 0 
posix_path  �J 0 	make_with  
�I 
msng�Q #*j+   *j+ E�O��%E�O*�k+ Y �	 �H��G�F	�	��E�H 0 unique_child  �G �D	��D 	�  �C�C 0 a_candidate  �F  	� �B�A�@�?�>�=�B 0 a_candidate  �A 0 
a_basename  �@ 0 a_suffix  �? 0 i  �> 0 escape_suffix  �= 0 a_child  	� �<�;�:�9)�8�7�6�5�< 0 	is_folder  
�; 
msng�: 0 
split_name  
�9 
cobj�8 	0 child  �7 0 item_exists  
�6 
spac
�5 
utxt�E x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�	 �4U�3�2	�	��1�4 0 list_children  �3  �2  	�  	� �0�/�0 0 as_furl  
�/ .earslfdrutxt  @    file�1 *j+  j 	 �.b�-�,	�	��+�. 0 each  �- �*	��* 	�  �)�) 0 a_script  �,  	� �(�'�&�%�$�( 0 a_script  �' 
0 a_list  �& 0 listwrapper ListWrapper�% 0 n  �$ 
0 x_item  	� 	�#�"l	��!� ����# 0 list_children  �" 0 listwrapper ListWrapper	� �	���	�	��
� .ascrinit****      � ****	� k     	�	� l��  �  �  	� �
� 
pcnt	� �
� 
pcnt� b  �
�! .corecnte****       ****
�  
pcnt
� 
cobj� 	0 child  � 0 do  �+ A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��	 ����	�	��� 0 perform_shell  � �	�� 	�  �� 0 	a_command  �  	� ��� 0 	a_command  � 
0 a_path  	� ������
� 0 normalized_posix_path  
� 
strq
� 
spac
�
 .sysoexecTEXT���     TEXT� *j+  �,�,E�O��,%�%�%�%j 	 �	���	�	���	 0 
shell_test  � �	�� 	�  �� 
0 option  �  	� �� 
0 option  	� ���� ����
� 
spac� 0 quoted_path  
�  .sysoexecTEXT���     TEXT��  ��  �   �%�%*j+ %j W 	X  fOe	 �������	�	����� 0 	deep_copy  ��  ��  	�  	� �������� 0 	_pathinfo 	_pathInfo�� 	0 clone  �� 0 make_with_pathinfo  �� *)�,j+ k+ 	 �������	�	����� 0 item_ref  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 	)�,j+ 	 �������	�	����� !0 check_existance_raising_error  ��  ��  	�  	� �������������� 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  
�� 
errn��F�� 0 as_text  
�� 
strq�� ")�,j+  )��l�)�,j+ �,%�%Y h	 ��!����	�	����� 0 update_pathinfo  ��  ��  	�  	� ������������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 prefering_posix  �� 0 is_posix  �� 0 make_with_opts  �� %b  )�,j+ �)�,j+ ll+ )�,FO)�,E	 ��B����	�	����� 0 change_pathinfo  �� ��	��� 	�  ���� 0 
a_pathinfo  ��  	� ���� 0 
a_pathinfo  	� ������������ 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� �)�,FO�)�,FO)�,j+ )�,FO)	  ��c����	�	����� 0 
change_ref  �� ��	��� 	�  ���� 0 file_ref  ��  	� ���� 0 file_ref  	� ������ 0 	make_with  �� 0 change_pathinfo  �� *b  �k+  k+ 	! ��r����	�	����� 0 dump  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 as_text  �� 	)�,j+ 	" ��}����	�	���
�� .ascrcmnt****      � ****��  ��  	�  	� ������ 0 dump  
�� .ascrcmnt****      � ****�� )jd*j+   	# �������	�	����� 	0 debug  ��  ��  	� �������� 
0 a_path  �� 0 a_xfile  �� 0 new_named_file  	� �������������������
�� 
scpt�� 	0 setup  
�� 
psxf�� 0 	make_with  �� 0 parent_folder  �� 0 unique_child  �� 0 	item_name  
�� .ascrcmnt****      � ****�� 0)��/)k+ O��&E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
	$ �������	�	����� 0 open_helpbook  ��  ��  	� ������ 0 msg  �� 	0 errno  	� 	���������	�������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  	� ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j 	% �������	�	���
�� .aevtoappnull  �   � ****��  ��  	�  	� ���� 0 open_helpbook  �� *j+   ascr  ��ޭ