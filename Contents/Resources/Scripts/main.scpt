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
msng �  � � � j    �� ��� 0 _prefer_posix   � n    � � � I    �������� 0 is_posix  ��  ��   � o    ���� 0 	path_info   �  ��� � j     �� ��� 0 _is_symlink   � m    ��
�� 
msng��   �  ��� � L     � � o    ���� 0 xfile XFile��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@group Make a New Instance with Changing Contents of an Instance

Making a new XFile instance with changing a part of the exisiting instance.    � � � �  ! @ g r o u p   M a k e   a   N e w   I n s t a n c e   w i t h   C h a n g i n g   C o n t e n t s   o f   a n   I n s t a n c e  
 
 M a k i n g   a   n e w   X F i l e   i n s t a n c e   w i t h   c h a n g i n g   a   p a r t   o f   t h e   e x i s i t i n g   i n s t a n c e .  �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstructMake a new instance with changing file name of the instance@param a_name (Unicode text or string) : a file name@result script object : a new instance of XFile    � � � �X ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f i l e   n a m e   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :   a   f i l e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   D G � � � I      �� ���� 0 change_name   �  ��~ � o      �}�} 
0 a_name  �~  �   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �| ��{�| 0 change_name   �  ��z � o    �y�y 
0 a_name  �z  �{   � o    �x�x 0 	_pathinfo 	_pathInfo �  f      � o      �w�w 0 	path_info   �  ��v � L     � � I    �u ��t�u 0 make_with_pathinfo   �  ��s � o    �r�r 0 	path_info  �s  �t  �v   �  � � � l     �q�p�o�q  �p  �o   �  � � � l      �n � ��n   � � �!@abstructMake a new instance with changing folder of the instance@param a_name (alias, Unicode text, file URL, file specification) : a reference to folder@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f o l d e r   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( a l i a s ,   U n i c o d e   t e x t ,   f i l e   U R L ,   f i l e   s p e c i f i c a t i o n )   :   a   r e f e r e n c e   t o   f o l d e r  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   H K � � � I      �m ��l�m 0 change_folder   �  ��k � o      �j�j 0 
folder_ref  �k  �l   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �i ��h�i 0 change_folder   �  ��g � o    �f�f 0 
folder_ref  �g  �h   � o    �e�e 0 	_pathinfo 	_pathInfo �  f      � o      �d�d 0 	path_info   �  ��c � L     � � I    �b ��a�b 0 make_with_pathinfo   �  ��` � o    �_�_ 0 	path_info  �`  �a  �c   �  � � � l     �^�]�\�^  �]  �\   �  � � � l      �[ � ��[   � � �!@abstructMake a new instance with changing path extension of the instance@param a_name (Unicode text or string) :a path extension, should not start with a dot ".".<!-- end locale -->@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   p a t h   e x t e n s i o n   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   : a   p a t h   e x t e n s i o n ,   s h o u l d   n o t   s t a r t   w i t h   a   d o t   " . " .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �    i   L O I      �Z�Y�Z 0 change_path_extension   �X o      �W�W 0 a_suffix  �X  �Y   L      I     �V�U�V 0 make_with_pathinfo   �T n   		
	 n   	 I    	�S�R�S 0 change_path_extension   �Q o    �P�P 0 a_suffix  �Q  �R   o    �O�O 0 	_pathinfo 	_pathInfo
  f    �T  �U    l     �N�M�L�N  �M  �L    l      �K�K   q k!@group Getting a File Reference form an Instance

Obtain a reference to a file which XFile reference to.    � � ! @ g r o u p   G e t t i n g   a   F i l e   R e f e r e n c e   f o r m   a n   I n s t a n c e  
 
 O b t a i n   a   r e f e r e n c e   t o   a   f i l e   w h i c h   X F i l e   r e f e r e n c e   t o .   l     �J�I�H�J  �I  �H    l      �G�G   � �!@abstructObtain a reference to a file as alias class@descriptionAn error raise, If a file or a folder does not exists.@result alias    � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   a l i a s   c l a s s  @ d e s c r i p t i o n  A n   e r r o r   r a i s e ,   I f   a   f i l e   o r   a   f o l d e r   d o e s   n o t   e x i s t s .  @ r e s u l t   a l i a s   i   P S  I      �F�E�D�F 0 as_alias  �E  �D    k     !! "#" I     �C�B�A�C !0 check_existance_raising_error  �B  �A  # $�@$ L    %% n   &'& n   ()( I   	 �?�>�=�? 0 as_alias  �>  �=  ) o    	�<�< 0 	_pathinfo 	_pathInfo'  f    �@   *+* l     �;�:�9�;  �:  �9  + ,-, l      �8./�8  . Q K!@abstructObtain a reference to a file as File URL class@result File URL   / �00 � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   F i l e   U R L   c l a s s  @ r e s u l t   F i l e   U R L - 121 i   T W343 I      �7�6�5�7 0 as_furl  �6  �5  4 L     55 n    676 n   898 I    �4�3�2�4 0 as_furl  �3  �2  9 o    �1�1 0 	_pathinfo 	_pathInfo7  f     2 :;: l     �0�/�.�0  �/  �.  ; <=< l      �->?�-  > / )!@abstruct Obtain HFS path@result text   ? �@@ R ! @ a b s t r u c t    O b t a i n   H F S   p a t h  @ r e s u l t   t e x t = ABA i   X [CDC I      �,�+�*�, 0 hfs_path  �+  �*  D L     EE n    FGF n   HIH I    �)�(�'�) 0 hfs_path  �(  �'  I o    �&�& 0 	_pathinfo 	_pathInfoG  f     B JKJ l     �%�$�#�%  �$  �#  K LML l      �"NO�"  N 1 +!@abstruct Obtain POSIX path@result text   O �PP V ! @ a b s t r u c t    O b t a i n   P O S I X   p a t h  @ r e s u l t   t e x t M QRQ i   \ _STS I      �!� ��! 0 
posix_path  �   �  T L     UU n    VWV n   XYX I    ���� 0 
posix_path  �  �  Y o    �� 0 	_pathinfo 	_pathInfoW  f     R Z[Z l     ����  �  �  [ \]\ l      �^_�  ^ M G!@abstruct
Obtain POSIX path which does not end with "/".
@result text   _ �`` � ! @ a b s t r u c t 
 O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 @ r e s u l t   t e x t ] aba i   ` ccdc I      ���� 0 normalized_posix_path  �  �  d L     ee n    fgf n   hih I    ���� 0 normalized_posix_path  �  �  i o    �� 0 	_pathinfo 	_pathInfog  f     b jkj l     ����  �  �  k lml i   d gnon I      ���
� 0 quoted_path  �  �
  o L     pp n    
qrq n   	sts 1    	�	
�	 
strqt n   uvu I    ���� 0 
posix_path  �  �  v o    �� 0 	_pathinfo 	_pathInfor  f     m wxw l     ����  �  �  x yzy l      �{|�  { &  !@group Working with Attributes    | �}} @ ! @ g r o u p   W o r k i n g   w i t h   A t t r i b u t e s  z ~~ l     � �����   ��  ��   ��� l      ������  � P J!@abstruct
Obtain uniform type identifier (UTI) of the item 
@result text
   � ��� � ! @ a b s t r u c t 
 O b t a i n   u n i f o r m   t y p e   i d e n t i f i e r   ( U T I )   o f   t h e   i t e m   
 @ r e s u l t   t e x t 
� ��� i   h k��� I      �������� 0 type_identifier  ��  ��  � O     ��� L    �� c    ��� l   ������ n   ��� I    ������� &0 typeoffile_error_ typeOfFile_error_� ��� l   ������ n   ��� I    �������� 0 
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
is_package  ��  ��  � k     
�� ��� L     �� l    ������ =    ��� m     �� ��� " c o m . a p p l e . p a c k a g e� I    �������� 0 type_identifier  ��  ��  ��  ��  � ���� l   	 	������  � C =	set info_rec to info()	return package folder of info_rec
	   � ��� z  	 s e t   i n f o _ r e c   t o   i n f o ( )  	 r e t u r n   p a c k a g e   f o l d e r   o f   i n f o _ r e c 
 	��  � ��� l     ��������  ��  ��  � ��� l      ������  � v p!@abstructCheck whether the item is an alias file or not.@result boolean : true if the item is an alias file.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . � ��� i   t w��� I      �������� 0 is_alias  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� m   	 ��
�� 
alis� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � z t!@abstructCheck whether the item is a symbolic link or not.@result boolean : true if the item is a symbolic link.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k . � ��� i   x {   I      �������� 0 
is_symlink  ��  ��   k     3  Z     -���� =     n    	
	 o    ���� 0 _is_symlink  
  f      m    ��
�� 
msng Q    ) k      I   ����
�� .sysoexecTEXT���     TEXT b     m     �  t e s t   - L   I    �������� 0 quoted_path  ��  ��  ��   �� r     m    ��
�� boovtrue n      o    ���� 0 _is_symlink    f    ��   R      ������
�� .ascrerr ****      � ****��  ��   r   $ ) m   $ %��
�� boovfals n      o   & (���� 0 _is_symlink    f   % &��  ��   �� L   . 3   n  . 2!"! o   / 1���� 0 _is_symlink  "  f   . /��  � #$# l     ��������  ��  ��  $ %&% l      ��'(��  ' j d!@abstructCheck whether the item is visible or not.@result boolean : true if the item is visible.   ( �)) � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e . & *+* i   | ,-, I      �������� 0 
is_visible  ��  ��  - k     .. /0/ r     121 I     �������� 0 info  ��  ��  2 o      ���� 0 info_rec  0 3��3 L    44 n    565 1   	 ��
�� 
pvis6 o    	���� 0 info_rec  ��  + 787 l     ��������  ��  ��  8 9:9 l      ��;<��  ; � �!@abstructSet creator code and type code to the item.@param creator_code (text) : creator code which consists of 4 characters<!-- end locale -->@param type_code (text) : type code which consists of 4 characters   < �==� ! @ a b s t r u c t  S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m .  @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s : >?> i   � �@A@ I      ��B���� 0 	set_types  B CDC o      ���� 0 creator_code  D E��E o      ���� 0 	type_code  ��  ��  A Z     +FG��~F H     HH I     �}�|�{�} 0 	is_folder  �|  �{  G k   	 'II JKJ r   	 LML I   	 �z�y�x�z 0 as_alias  �y  �x  M o      �w�w 
0 a_file  K NON O    !PQP k     RR STS r    UVU o    �v�v 0 creator_code  V n      WXW 1    �u
�u 
fcrtX o    �t�t 
0 a_file  T Y�sY r     Z[Z o    �r�r 0 	type_code  [ n      \]\ 1    �q
�q 
asty] o    �p�p 
0 a_file  �s  Q m    ^^�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  O _�o_ r   " '`a` m   " #�n
�n 
msnga n     bcb o   $ &�m�m 0 _inforecord _infoRecordc  f   # $�o  �  �~  ? ded l     �l�k�j�l  �k  �j  e fgf l      �ihi�i  h!@abstructObtain file information.@descriptionDo &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().The size of the target will not be included.@result file infomation(record) : a result of info for command.   i �jj( ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) .  T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . g klk i   � �mnm I      �h�g�f�h 0 info  �g  �f  n k     'oo pqp Z     !rs�e�dr =    tut n    vwv o    �c�c 0 _inforecord _infoRecordw  f     u m    �b
�b 
msngs k    xx yzy I    �a�`�_�a !0 check_existance_raising_error  �`  �_  z {�^{ r    |}| I   �]~
�] .sysonfo4asfe        file~ I    �\�[�Z�\ 0 as_furl  �[  �Z   �Y��X
�Y 
ptsz� m    �W
�W boovfals�X  } n     ��� o    �V�V 0 _inforecord _infoRecord�  f    �^  �e  �d  q ��U� L   " '�� n  " &��� o   # %�T�T 0 _inforecord _infoRecord�  f   " #�U  l ��� l     �S�R�Q�S  �R  �Q  � ��� l      �P���P  �82!@abstructObtain file information including its size.@descriptionDo &quot;info for&quot; command for the item with &quot;size&quot; option. The result is cached and same value is returned at next calling info_with_size() or ((<info>))().@result file infomation(record) : a result of info for command.   � ���d ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   i n c l u d i n g   i t s   s i z e .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m   w i t h   & q u o t ; s i z e & q u o t ;   o p t i o n .    T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o _ w i t h _ s i z e ( )   o r   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   � ���� I      �O�N�M�O 0 info_with_size  �N  �M  � k     C�� ��� Z     =����L� =    ��� n    ��� o    �K�K 0 _inforecord _infoRecord�  f     � m    �J
�J 
msng� k    �� ��� I    �I�H�G�I !0 check_existance_raising_error  �H  �G  � ��F� r    ��� I   �E��
�E .sysonfo4asfe        file� I    �D�C�B�D 0 as_furl  �C  �B  � �A��@
�A 
ptsz� m    �?
�? boovtrue�@  � n     ��� o    �>�> 0 _inforecord _infoRecord�  f    �F  � ��� =    '��� n     %��� 1   # %�=
�= 
ptsz� n    #��� o   ! #�<�< 0 _inforecord _infoRecord�  f     !� m   % &�;
�; 
msng� ��:� r   * 9��� I  * 5�9��
�9 .sysonfo4asfe        file� I   * /�8�7�6�8 0 as_furl  �7  �6  � �5��4
�5 
ptsz� m   0 1�3
�3 boovtrue�4  � n     ��� o   6 8�2�2 0 _inforecord _infoRecord�  f   5 6�:  �L  � ��1� L   > C�� n  > B��� o   ? A�0�0 0 _inforecord _infoRecord�  f   > ?�1  � ��� l     �/�.�-�/  �.  �-  � ��� l      �,���,  � � �!@abstructObtain file information again.@descriptionDo "info for" command for the item and reset the cache of ((<info>))().@result file infomation(record) : a result of info for command.   � ���~ ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   a g a i n .  @ d e s c r i p t i o n  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   � ���� I      �+�*�)�+ 0 re_info  �*  �)  � k     ;�� ��� Z     5���(�� F     ��� l    ��'�&� >    ��� n    ��� o    �%�% 0 _inforecord _infoRecord�  f     � m    �$
�$ 
msng�'  �&  � l 	  ��#�"� l   ��!� � >   ��� n    ��� 1    �
� 
ptsz� n   ��� o   	 �� 0 _inforecord _infoRecord�  f    	� m    �
� 
msng�!  �   �#  �"  � r    #��� I   ���
� .sysonfo4asfe        file� I    ���� 0 as_furl  �  �  � ���
� 
ptsz� m    �
� boovtrue�  � n     ��� o     "�� 0 _inforecord _infoRecord�  f     �(  � r   & 5��� I  & 1���
� .sysonfo4asfe        file� I   & +���� 0 as_furl  �  �  � ���
� 
ptsz� m   , -�
� boovfals�  � n     ��� o   2 4�� 0 _inforecord _infoRecord�  f   1 2� ��� L   6 ;�� n  6 :��� o   7 9�� 0 _inforecord _infoRecord�  f   6 7�  � ��� l     �
�	��
  �	  �  � ��� l      ����  � % !@group Obtain Path Infomation    � ��� > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  � ��� l     ����  �  �  � ��� l      ����  � W Q!@abstruct Obtain the name of the item referenced by the instance @result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e    @ r e s u l t   t e x t � ��� i   � ���� I      ��� � 0 	item_name  �  �   � L     �� n       n    I    �������� 0 	item_name  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f     �  l     ��������  ��  ��    l      ��	��   � �!@abstruct Obtain the base name (a name which does not include path extension) of the item referenced by the instance.@result text   	 �


 ! @ a b s t r u c t    O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t   i   � � I      �������� 0 basename  ��  ��   L      n     n    I    �������� 0 basename  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f       l     ��������  ��  ��    l      ����   � �!@abstruct Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.@result text    �� ! @ a b s t r u c t    O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t   i   � � I      �������� 0 path_extension  ��  ��   L      n     !  n   "#" I    �������� 0 path_extension  ��  ��  # o    ���� 0 	_pathinfo 	_pathInfo!  f      $%$ l     ��������  ��  ��  % &'& l      ��()��  ( ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text   ) �** � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t ' +,+ i   � �-.- I      �������� 0 volume_name  ��  ��  . L     // n    010 n   232 I    �������� 0 volume_name  ��  ��  3 o    ���� 0 	_pathinfo 	_pathInfo1  f     , 454 l     ��������  ��  ��  5 676 l      ��89��  8 $ !@group Working with a Bundle    9 �:: < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e  7 ;<; l     ��������  ��  ��  < =>= l      ��?@��  ? � �!@abstructObtain an item which is in the bundle resource folder.@descriptionThis method can be call to a bundle.@param resource_name (text) : a resource name@result script object : a XFile instance   @ �AA� ! @ a b s t r u c t  O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r .  @ d e s c r i p t i o n  T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e .  @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e > BCB i   � �DED I      ��F���� 0 bundle_resource  F G��G o      ���� 0 resource_name  ��  ��  E L     HH I     ��I���� 0 	make_with  I J��J I   ��KL
�� .sysorpthalis        TEXTK o    ���� 0 resource_name  L ��M��
�� 
in BM l   N����N I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��  C OPO l     ��������  ��  ��  P QRQ l      ��ST��  S j d!@abstructObtain a reference to Info.plist of the bundle.@result script object : a XFile instance   T �UU � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e R VWV i   � �XYX I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  Y L     ZZ I     ��[���� 0 child_posix  [ \��\ m    ]] �^^ & C o n t e n t s / I n f o . p l i s t��  ��  W _`_ l     ��������  ��  ��  ` aba i   � �cdc I      �������� 0 bundle_resources_folder  ��  ��  d L     ee I     ��f���� 0 child_posix  f g��g m    hh �ii & C o n t e n t s / R e s o u r c e s /��  ��  b jkj l     ��������  ��  ��  k lml l      ��no��  n ! !@group File Manipulations    o �pp 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  m qrq l     ��������  ��  ��  r sts l      ��uv��  u/)!@abstructCheck whether the item referenced by the instance exists or not.@descriptionA file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.@result boolean : true if the item exists.   v �wwR ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . t xyx i   � �z{z I      �������� 0 item_exists  ��  ��  { L     || n    }~} n   � I    �������� 0 item_exists  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo~  f     y ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstructCheck whether the item referenced by the instance exists or not.@descriptionThe internal file reference will not be changed unlike ((<item_exists>)).@result boolean : true if the item exists.   � ���� ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . � ��� i   � ���� I      �������� 0 item_exists_without_update  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstructSynonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.@result boolean : true if the item exists.   � ���* ! @ a b s t r u c t  S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . � ��� i   � ���� I     ������
�� .coredoexbool       obj ��  ��  � L     �� I     �������� 0 item_exists  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � l f!@abstructRename an item which referenced by the XFile instance.@result boolean : true if succeded.   � ��� � ! @ a b s t r u c t  R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e d e d . � ��� i   � ���� I      ������� 0 	rename_to  � ���� o      ���� 0 new_name  ��  ��  � k     "�� ��� O     ��� r    ��� o    ���� 0 new_name  � n      ��� 1    ��
�� 
pnam� n   ��� n   ��� I    ������� 0 as_alias_without_update  ��  �  � o    �~�~ 0 	_pathinfo 	_pathInfo�  f    � m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� r    ��� m    �}
�} 
msng� n     ��� o    �|�| 0 _inforecord _infoRecord�  f    � ��� n   ��� n   ��� I    �{��z�{ 0 set_name  � ��y� o    �x�x 0 new_name  �y  �z  � o    �w�w 0 	_pathinfo 	_pathInfo�  f    � ��v� L     "�� m     !�u
�u boovtrue�v  � ��� l     �t�s�r�t  �s  �r  � ��� l      �q���q  �*$!@abstruct Copy the item to specified location@descriptionSame name item in the destination is replaced.@param a_destination (script object or text) : a XFile instance referencing the copy destination or a relative path.@result script object : a XFile instance referencing copied item.   � ���H ! @ a b s t r u c t    C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n  @ d e s c r i p t i o n  S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :    a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �p��o�p 0 copy_to  � ��n� o      �m�m 0 a_destination  �n  �o  � L     �� I     �l��k�l 0 copy_with_opts  � ��� o    �j�j 0 a_destination  � ��i� m    �h
�h 
msng�i  �k  � ��� l     �g�f�e�g  �f  �e  � ��� l      �d���d  �71!
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
 @ p a r a m   o p t s   (   r e c o r d ) :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �c��b�c 0 copy_with_opts  � ��� o      �a�a 0 a_destination  � ��`� o      �_�_ 0 opts  �`  �b  � k    8�� ��� l     �^���^  � \ V cp : if source and destination are folders and the path of the source ends with "/",    � ��� �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  � ��� l     �]���]  � ^ X         cp command contents of the source copy under the destination folder like ditto.   � ��� �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .� ��� l     �\���\  � U O        The endding "/" of the source path should be removed for stable result.   � ��� �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .� ��� l     �[���[  � 5 /        Is the support  of ditto not required ?   � ��� ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?� ��� r        m     �Z
�Z boovtrue o      �Y�Y 0 w_replacing  �  r     m    �X
�X boovfals o      �W�W 0 w_admin    r    	 m    	�V
�V boovfals	 o      �U�U 0 
w_removing   

 l    r     m     �  c p o      �T�T 0 command     or "ditto"    �    o r   " d i t t o "  l   �S�R�Q�S  �R  �Q    Z    l�P�O =    n     m    �N
�N 
pcls o    �M�M 0 opts   m    �L
�L 
reco k    h   Q    )!"�K! r     #$# n    %&% o    �J�J 0 with_replacing  & o    �I�I 0 opts  $ o      �H�H 0 w_replacing  " R      �G�F�E
�G .ascrerr ****      � ****�F  �E  �K    '(' Q   * ;)*�D) r   - 2+,+ n   - 0-.- o   . 0�C�C 0 
with_admin  . o   - .�B�B 0 opts  , o      �A�A 0 w_admin  * R      �@�?�>
�@ .ascrerr ****      � ****�?  �>  �D  ( /0/ Q   < M12�=1 r   ? D343 n   ? B565 o   @ B�<�< 0 with_removing  6 o   ? @�;�; 0 opts  4 o      �:�: 0 
w_removing  2 R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  �=  0 7�67 Q   N h89�58 Z   Q _:;�4�3: n   Q U<=< o   R T�2�2 	0 ditto  = o   Q R�1�1 0 opts  ; r   X [>?> m   X Y@@ �AA 
 d i t t o? o      �0�0 0 command  �4  �3  9 R      �/�.�-
�/ .ascrerr ****      � ****�.  �-  �5  �6  �P  �O   BCB l  m m�,�+�*�,  �+  �*  C DED Z   m �FG�)�(F E  m vHIH J   m rJJ KLK m   m n�'
�' 
ctxtL MNM m   n o�&
�& 
utxtN O�%O m   o p�$
�$ 
TEXT�%  I n   r uPQP m   s u�#
�# 
pclsQ o   r s�"�" 0 a_destination  G r   y �RSR n  y �TUT I   ~ ��!V� �! 	0 child  V W�W o   ~ �� 0 a_destination  �  �   U I   y ~���� 0 parent_folder  �  �  S o      �� 0 a_destination  �)  �(  E XYX l  � �����  �  �  Y Z[Z Z   � �\]^�\ =  � �_`_ o   � ��� 0 command  ` m   � �aa �bb  c p] k   � �cc ded r   � �fgf m   � �hh �ii  - R pg o      �� 0 com_opts  e j�j Z   � �kl��k o   � ��� 0 w_replacing  l r   � �mnm b   � �opo o   � ��� 0 com_opts  p m   � �qq �rr  fn o      �� 0 com_opts  �  �  �  ^ sts =  � �uvu o   � ��� 0 command  v m   � �ww �xx 
 d i t t ot y�y r   � �z{z m   � �|| �}}  - - r s r c{ o      �� 0 com_opts  �  �  [ ~~ r   � ���� m   � ��

�
 boovfals� o      �	�	 0 is_folder_to   ��� Z   � ������ n  � ���� I   � ����� 0 item_exists  �  �  � o   � ��� 0 a_destination  � Z   � ������ l  � ���� � o   � ����� 0 
w_removing  �  �   � n  � ���� I   � ��������� 
0 remove  ��  ��  � o   � ����� 0 a_destination  �  � Z   � �������� =  � ���� o   � ����� 0 command  � m   � ��� ���  c p� r   � ���� n  � ���� I   � ��������� 0 	is_folder  ��  ��  � o   � ����� 0 a_destination  � o      ���� 0 is_folder_to  ��  ��  �  �  � ��� l  � ���������  ��  ��  � ��� r   � ���� n   � ���� 1   � ���
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
ascr� E ? use this for debuggingm, because the log command is overrided.   � ��� ~   u s e   t h i s   f o r   d e b u g g i n g m ,   b e c a u s e   t h e   l o g   c o m m a n d   i s   o v e r r i d e d .� � � l     ��������  ��  ��     l      ����  ("!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, moving an item will fail.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.    �D ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   m o v i n g   a n   i t e m   w i l l   f a i l .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s .   i   � �	 I      ��
���� 0 move_to  
 �� o      ���� 0 a_destination  ��  ��  	 k     _  l     ����   ' ! my_log("start move_to in XFile")    � B   m y _ l o g ( " s t a r t   m o v e _ t o   i n   X F i l e " )  l     I     �������� 0 item_exists  ��  ��   G A even if the item exists, broken symbolic file will return false.    � �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .  r     n    I    �������� 0 quoted_path  ��  ��   o    ���� 0 a_destination   o      ���� 0 destination_path    r     !  I    �������� 0 quoted_path  ��  ��  ! o      ���� 0 source_path   "#" Q    5$%&$ I   $��'��
�� .sysoexecTEXT���     TEXT' b     ()( b    *+* b    ,-, m    .. �//  m v  - o    ���� 0 source_path  + 1    ��
�� 
spac) o    ���� 0 destination_path  ��  % R      ��0��
�� .ascrerr ****      � ****0 o      ���� 0 msg  ��  & k   , 511 232 I   , 2��4���� 
0 my_log  4 5��5 o   - .�� 0 msg  ��  ��  3 6�~6 L   3 577 m   3 4�}
�} boovfals�~  # 898 l  6 6�|:;�|  : T N update internal reference, because alias does not follow moved item in 10.14.   ; �<< �   u p d a t e   i n t e r n a l   r e f e r e n c e ,   b e c a u s e   a l i a s   d o e s   n o t   f o l l o w   m o v e d   i t e m   i n   1 0 . 1 4 .9 =>= Z   6 \?@�{A? n  6 ;BCB I   7 ;�z�y�x�z 0 	is_folder  �y  �x  C o   6 7�w�w 0 a_destination  @ k   > ODD EFE l  > >�vGH�v  G / ) my_log("destination is folder, updated")   H �II R   m y _ l o g ( " d e s t i n a t i o n   i s   f o l d e r ,   u p d a t e d " )F J�uJ I   > O�tK�s�t 0 change_pathinfo  K L�rL n  ? KMNM n  @ KOPO I   B K�qQ�p�q 0 change_folder  Q R�oR n  B GSTS I   C G�n�m�l�n 0 item_ref  �m  �l  T o   B C�k�k 0 a_destination  �o  �p  P o   @ B�j�j 0 	_pathinfo 	_pathInfoN  f   ? @�r  �s  �u  �{  A I   R \�iU�h�i 0 
change_ref  U V�gV n  S XWXW I   T X�f�e�d�f 0 item_ref  �e  �d  X o   S T�c�c 0 a_destination  �g  �h  > Y�bY L   ] _ZZ m   ] ^�a
�a boovtrue�b   [\[ l     �`�_�^�`  �_  �^  \ ]^] l      �]_`�]  _>8!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, the item will be replaced with the target item.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.   ` �aap ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . ^ bcb i   � �ded I      �\f�[�\ 0 move_with_replacing  f g�Zg o      �Y�Y 0 a_destination  �Z  �[  e k     <hh iji l    klmk I     �X�W�V�X 0 item_exists  �W  �V  l G A even if the item exists, broken symbolic file will return false.   m �nn �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .j opo r    qrq n   sts I    �U�T�S�U 0 quoted_path  �T  �S  t o    �R�R 0 a_destination  r o      �Q�Q 0 destination_path  p uvu r    wxw I    �P�O�N�P 0 quoted_path  �O  �N  x o      �M�M 0 source_path  v yzy Q    9{|}{ I   $�L~�K
�L .sysoexecTEXT���     TEXT~ b     � b    ��� b    ��� m    �� ���  m v   - f  � o    �J�J 0 source_path  � 1    �I
�I 
spac� o    �H�H 0 destination_path  �K  | R      �G��F
�G .ascrerr ****      � ****� o      �E�E 0 msg  �F  } k   , 9�� ��� O  , 6��� I  0 5�D��C
�D .ascrcmnt****      � ****� o   0 1�B�B 0 msg  �C  � 1   , -�A
�A 
ascr� ��@� L   7 9�� m   7 8�?
�? boovfals�@  z ��>� L   : <�� m   : ;�=
�= boovtrue�>  c ��� l     �<�;�:�<  �;  �:  � ��� l      �9���9  �!@abstructResolving original item of a alias file.@descriptionIf the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.@result script object or missing value   � ���
 ! @ a b s t r u c t  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  @ d e s c r i p t i o n  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e � ��� i   � ���� I      �8�7�6�8 0 resolve_alias  �7  �6  � k     ^�� ��� Z     #���5�4� I     �3�2�1�3 0 
is_symlink  �2  �1  � k    �� ��� r    ��� I    �0�/�.�0 0 	deep_copy  �/  �.  � o      �-�- 0 
x_original  � ��,� Z    ���+�� n   ��� I    �*�)�(�* 0 item_exists  �)  �(  � o    �'�' 0 
x_original  � L    �� o    �&�& 0 
x_original  �+  � L    �� m    �%
�% 
msng�,  �5  �4  � ��� l  $ $�$�#�"�$  �#  �"  � ��� r   $ +��� I   $ )�!� ��! 0 info  �   �  � o      �� 0 info_rec  � ��� Z   , ^����� n   , 0��� m   - /�
� 
alis� o   , -�� 0 info_rec  � k   3 X�� ��� Q   3 P���� O   6 F��� r   : E��� c   : C��� l  : A���� n   : A��� 1   ? A�
� 
orig� l  : ?���� n  : ?��� I   ; ?���� 0 as_alias  �  �  �  f   : ;�  �  �  �  � m   A B�
� 
alis� o      �� 0 original_item  � m   6 7���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � R      ���
� .ascrerr ****      � ****� o      �� 
0 errmsg  �  � L   N P�� m   N O�
� 
msng� ��� L   Q X�� I   Q W�
��	�
 0 	make_with  � ��� o   R S�� 0 original_item  �  �	  �  �  � L   [ ^�� N   [ ]��  f   [ \�  � ��� l     ����  �  �  � ��� l      ����  � ! !@abstructPut into trash.   � ��� 6 ! @ a b s t r u c t  P u t   i n t o   t r a s h . � ��� i   � ���� I      ��� � 0 
into_trash  �  �   � k     $�� ��� r     ��� I     �������� 0 as_alias  ��  ��  � o      ���� 
0 a_file  � ��� O    ��� I   �����
�� .coredelonull���     obj � o    ���� 
0 a_file  ��  � m    	���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� I    $������� 0 change_pathinfo  � ���� n    ��� n    ��� I     ������� 0 change_folder  � ���� I   �����
�� .earsffdralis        afdr� m    ��
�� afdmtrsh��  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � c ]!@abstructRemove the item referd from the target XFile instance.@result script object : me   � ��� � ! @ a b s t r u c t  R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   m e � ��� i   � �� � I      �������� 
0 remove  ��  ��    k     *  r      I     �������� 0 quoted_path  ��  ��   o      ���� 
0 a_file    r    	 n   

 n  	  I    �������� 0 as_text  ��  ��   o   	 ���� 0 	_pathinfo 	_pathInfo  f    		 o      ���� 
0 a_path    I   ����
�� .sysoexecTEXT���     TEXT b     m     �  r m   - r   o    ���� 
0 a_file  ��    r    ! o    ���� 
0 a_path   n      n     o     ���� 0 	_item_ref   o    ���� 0 	_pathinfo 	_pathInfo  f      r   " '  m   " #��
�� 
msng  n     !"! o   $ &���� 0 _inforecord _infoRecord"  f   # $ #��# L   ( *$$  f   ( )��  � %&% l     ��������  ��  ��  & '(' l      ��)*��  )   !@group Making subfolders    * �++ 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  ( ,-, l     ��������  ��  ��  - ./. l      ��01��  0 � �!@abstructMake a sub folder.@descriptionmissing value will be returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.@result script object or missing value : a XFile instance of newly created folder.   1 �22� ! @ a b s t r u c t  M a k e   a   s u b   f o l d e r .  @ d e s c r i p t i o n  m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . / 343 i   � �565 I      ��7���� 0 make_folder  7 8��8 o      ���� 0 folder_name  ��  ��  6 k     !99 :;: Z     <=����< H     >> l    ?����? I     �������� 0 item_exists  ��  ��  ��  ��  = L   	 @@ m   	 
��
�� 
msng��  ��  ; ABA l   ��������  ��  ��  B CDC r    EFE I    ��G���� 	0 child  G H��H o    ���� 0 folder_name  ��  ��  F o      ���� 0 
new_folder  D I��I L    !JJ n    KLK I     ��M���� 0 	make_path  M N��N J    ����  ��  ��  L o    ���� 0 
new_folder  ��  4 OPO l     ��������  ��  ��  P QRQ l      ��ST��  S��!@abstructMake folders which indicating the path of the XFile instance.@descriptionUsing a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.@result script object or missing value : a XFile instance of newly created folder.   T �UU ! @ a b s t r u c t  M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e .  @ d e s c r i p t i o n  U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . R VWV i   � �XYX I      ��Z���� 0 	make_path  Z [��[ o      ���� 0 opts  ��  ��  Y k     R\\ ]^] r     _`_ m     ��
�� boovfals` o      ���� 0 w_admin  ^ aba Z    cd����c =   	efe n    ghg m    ��
�� 
pclsh o    ���� 0 opts  f m    ��
�� 
recod r    iji n    klk o    ���� 0 
with_admin  l o    ���� 0 opts  j o      ���� 0 w_admin  ��  ��  b mnm Z    0op����o I    �������� 0 item_exists  ��  ��  p Z    ,qr��sq I    #�������� 0 	is_folder  ��  ��  r L   & (tt  f   & '��  s m   + ,��
�� 
msng��  ��  n uvu I  1 @��wx
�� .sysoexecTEXT���     TEXTw b   1 :yzy m   1 2{{ �||  m k d i r   - p  z l  2 9}����} n   2 9~~ 1   7 9��
�� 
strq I   2 7�������� 0 
posix_path  ��  ��  ��  ��  x �����
�� 
badm� o   ; <���� 0 w_admin  ��  v ��� Z  A O������� I   A F�������� 0 item_exists  ��  ��  � L   I K��  f   I J��  ��  � ���� L   P R�� m   P Q��
�� 
msng��  W ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ����  � 0 *!@group Reading and Writing File Contents    � ��� T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  � ��� l     �~�}�|�~  �}  �|  � ��� l      �{���{  � X R!@abstructRead file contents as UTF-8 encoded text.@result Unicode text (UTF-8)   � ��� � ! @ a b s t r u c t  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) � ��� i   � ���� I      �z�y�x�z 0 read_as_utf8  �y  �x  � k     �� ��� I     �w�v�u�w !0 check_existance_raising_error  �v  �u  � ��t� L    �� I   �s��
�s .rdwrread****        ****� l   ��r�q� I    �p�o�n�p 0 as_alias  �o  �n  �r  �q  � �m��l
�m 
as  � m    �k
�k 
utf8�l  �t  � ��� l     �j�i�h�j  �i  �h  � ��� l      �g���g  � u o!@abstructWrite data into the file as UTF-8 encoded text.@param a_data (text) : data to write into the file.   � ��� � ! @ a b s t r u c t  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . � ��� i   � ���� I      �f��e�f 0 write_as_utf8  � ��d� o      �c�c 
0 a_data  �d  �e  � k     %�� ��� r     ��� I    �b��
�b .rdwropenshor       file� I     �a�`�_�a 0 as_furl  �`  �_  � �^��]
�^ 
perm� m    �\
�\ boovtrue�]  � o      �[�[ 
0 output  � ��� I   �Z��
�Z .rdwrseofnull���     ****� o    �Y�Y 
0 output  � �X��W
�X 
set2� m    �V�V  �W  � ��� I   �U��
�U .rdwrwritnull���     ****� o    �T�T 
0 a_data  � �S��
�S 
refn� o    �R�R 
0 output  � �Q��P
�Q 
as  � m    �O
�O 
utf8�P  � ��N� I    %�M��L
�M .rdwrclosnull���     ****� o     !�K�K 
0 output  �L  �N  � ��� l     �J�I�H�J  �I  �H  � ��� l      �G���G  � " !@group Parent and Children    � ��� 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  � ��� l     �F�E�D�F  �E  �D  � ��� l      �C���C  � � �!@abstructObtain a folder containing the item referenced by the XFile instance.@result script object : a XFile instance of the parent folder.   � ���  ! @ a b s t r u c t  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . � ��� i   � ���� I      �B�A�@�B 0 parent_folder  �A  �@  � L     �� I     �?��>�? 0 make_with_pathinfo  � ��=� n   ��� n   ��� I    �<�;�:�< 0 parent_folder  �;  �:  � o    �9�9 0 	_pathinfo 	_pathInfo�  f    �=  �>  � ��� l     �8�7�6�8  �7  �6  � ��� l      �5���5  �!@abstructObtain an item in the folder with specifying a sub path from the target.@descriptionIf this methods is sent to non exsisting folder, missing value is returend.@param suppath(text) :a sub path to obtain.@result script object or missing value : a XFile instance   � ���& ! @ a b s t r u c t  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  @ d e s c r i p t i o n  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e � ��� i   � ���� I      �4��3�4 	0 child  � ��2� o      �1�1 0 subpath  �2  �3  � Z     ���0�� I     �/�.�-�/ 0 item_exists_without_update  �.  �-  � L    �� I    �,��+�, 0 make_with_pathinfo  � ��*� n  	 ��� n  
 ��� I    �)��(�) 	0 child  � ��'� o    �&�& 0 subpath  �'  �(  � o   
 �%�% 0 	_pathinfo 	_pathInfo�  f   	 
�*  �+  �0  � L    �� m    �$
�$ 
msng� ��� l     �#�"�!�#  �"  �!  � ��� i   � �� � I      � ��  0 child_posix   � o      �� 0 subpath  �  �    Z     "� I     ���� 0 item_exists  �  �   k      r    	
	 I    ���� 0 
posix_path  �  �  
 o      �� 
0 a_path    r     b     o    �� 
0 a_path   o    �� 0 subpath   o      �� 
0 a_path   � L     I    ��� 0 	make_with   � o    �� 
0 a_path  �  �  �  �   L     " m     !�
� 
msng�  l     ��
�	�  �
  �	    l     ����  �  �    l      ��  ��!@abstructObtain a XFile instance reference unique name item in the folder.@descriptionIf the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.@param a_candidate(text or list) :A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.@result script object : a XFile instance    �T ! @ a b s t r u c t  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  @ d e s c r i p t i o n  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   :  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e    i   � �!"! I      �#�� 0 unique_child  # $�$ o      �� 0 a_candidate  �  �  " k     w%% &'& Z     ()� ��( H     ** I     �������� 0 	is_folder  ��  ��  ) L   	 ++ m   	 
��
�� 
msng�   ��  ' ,-, r    )./. n   010 I    ��2���� 0 
split_name  2 3��3 o    ���� 0 a_candidate  ��  ��  1 o    ���� 0 pathinfo PathInfo/ J      44 565 o      ���� 0 
a_basename  6 7��7 o      ���� 0 a_suffix  ��  - 898 Z   * ;:;��<: =  * -=>= o   * +���� 0 a_suffix  > m   + ,��
�� 
msng; r   0 3?@? m   0 1AA �BB  @ o      ���� 0 a_suffix  ��  < r   6 ;CDC b   6 9EFE m   6 7GG �HH  .F o   7 8���� 0 a_suffix  D o      ���� 0 a_suffix  9 IJI r   < ?KLK m   < =���� L o      ���� 0 i  J MNM r   @ COPO m   @ AQQ �RR  P o      ���� 0 escape_suffix  N STS T   D tUU k   I oVV WXW r   I UYZY I   I S��[���� 	0 child  [ \��\ b   J O]^] b   J M_`_ o   J K���� 0 
a_basename  ` o   K L���� 0 escape_suffix  ^ o   M N���� 0 a_suffix  ��  ��  Z o      ���� 0 a_child  X a��a Z   V obc��db n  V [efe I   W [�������� 0 item_exists  ��  ��  f o   V W���� 0 a_child  c k   ^ kgg hih r   ^ ejkj b   ^ clml 1   ^ _��
�� 
spacm l  _ bn����n c   _ bopo o   _ `���� 0 i  p m   ` a��
�� 
utxt��  ��  k o      ���� 0 escape_suffix  i q��q r   f krsr [   f itut o   f g���� 0 i  u m   g h���� s o      ���� 0 i  ��  ��  d  S   n o��  T v��v L   u www o   u v���� 0 a_child  ��    xyx l     ��������  ��  ��  y z{z i   |}| I      �������� 0 list_children  ��  ��  } L     
~~ I    	����
�� .earslfdrutxt  @    file I     �������� 0 as_furl  ��  ��  ��  { ��� l     ��������  ��  ��  � ��� l      ������  �<6!@abstruct
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
� ��� i  ��� I      ������� 0 each  � ���� o      ���� 0 a_script  ��  ��  � k     @�� ��� r     ��� I     �������� 0 list_children  ��  ��  � o      ���� 
0 a_list  � ��� h    ����� 0 listwrapper ListWrapper� j     ���
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
0 a_list  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � * $!@group Working with Shell Commands    � ��� H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  � ��� l     ��������  ��  ��  � ��� l      ������  �	!@abstruct
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
� ��� i  ��� I      ���~� 0 
shell_test  � ��}� o      �|�| 
0 option  �}  �~  � k     �� ��� Q     ���� I   �{��z
�{ .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� m    �� ��� 
 t e s t  � o    �y�y 
0 option  � 1    �x
�x 
spac� I    �w�v�u�w 0 quoted_path  �v  �u  �z  � R      �t�s�r
�t .ascrerr ****      � ****�s  �r  � L    �� m    �q
�q boovfals� ��p� L    �� m    �o
�o boovtrue�p  � ��� l     �n�m�l�n  �m  �l  �    l      �k�k    == private *    �  = =   p r i v a t e   *  l     �j�i�h�j  �i  �h    i  	
	 I      �g�f�e�g 0 	deep_copy  �f  �e  
 L      I     �d�c�d 0 make_with_pathinfo   �b n    n    I    �a�`�_�a 	0 clone  �`  �_   o    �^�^ 0 	_pathinfo 	_pathInfo  f    �b  �c    l     �]�\�[�]  �\  �[    i   I      �Z�Y�X�Z 0 item_ref  �Y  �X   L      n     n    I    �W�V�U�W 0 item_ref  �V  �U   o    �T�T 0 	_pathinfo 	_pathInfo  f       l     �S�R�Q�S  �R  �Q     i  !"! I      �P�O�N�P !0 check_existance_raising_error  �O  �N  " k     !## $%$ l     �M&'�M  & 4 . my_log("start check_existance_raising_error")   ' �(( \   m y _ l o g ( " s t a r t   c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r " )% )�L) Z     !*+�K�J* H     ,, l    -�I�H- n    ./. n   010 I    �G�F�E�G 0 item_exists_without_update  �F  �E  1 o    �D�D 0 	_pathinfo 	_pathInfo/  f     �I  �H  + R    �C23
�C .ascrerr ****      � ****2 b    454 b    676 m    88 �99 
 i t e m  7 n    :;: 1    �B
�B 
strq; l   <�A�@< n   =>= n   ?@? I    �?�>�=�? 0 as_text  �>  �=  @ o    �<�< 0 	_pathinfo 	_pathInfo>  f    �A  �@  5 m    AA �BB     d o e s   n o t   e x i s t .3 �;C�:
�; 
errnC m    �9�9F�:  �K  �J  �L    DED l     �8�7�6�8  �7  �6  E FGF i  HIH I      �5�4�3�5 0 update_pathinfo  �4  �3  I k     $JJ KLK r     MNM n    OPO I    �2Q�1�2 0 make_with_opts  Q RSR n   TUT n   VWV I    �0�/�.�0 0 item_ref  �/  �.  W o    �-�- 0 	_pathinfo 	_pathInfoU  f    S X�,X K    YY �+Z�*�+ 0 prefering_posix  Z n   [\[ n   ]^] I    �)�(�'�) 0 is_posix  �(  �'  ^ o    �&�& 0 	_pathinfo 	_pathInfo\  f    �*  �,  �1  P o     �%�% 0 pathinfo PathInfoN n     _`_ o    �$�$ 0 	_pathinfo 	_pathInfo`  f    L a�#a L    $bb n   #cdc o     "�"�" 0 	_pathinfo 	_pathInfod  f     �#  G efe l     �!� ��!  �   �  f ghg i   #iji I      �k�� 0 change_pathinfo  k l�l o      �� 0 
a_pathinfo  �  �  j k      mm non r     pqp o     �� 0 
a_pathinfo  q n     rsr o    �� 0 	_pathinfo 	_pathInfos  f    o tut r    vwv m    �
� 
msngw n     xyx o    
�� 0 _inforecord _infoRecordy  f    u z{z r    |}| n   ~~ n   ��� I    ���� 0 is_posix  �  �  � o    �� 0 	_pathinfo 	_pathInfo  f    } n     ��� o    �� 0 _prefer_posix  �  f    { ��� r    ��� m    �
� 
msng� n     ��� o    �� 0 _is_symlink  �  f    � ��� L     ��  f    �  h ��� l     ����  �  �  � ��� i  $'��� I      ���
� 0 
change_ref  � ��	� o      �� 0 file_ref  �	  �
  � L     �� I     ���� 0 change_pathinfo  � ��� n   ��� I    ���� 0 	make_with  � ��� o    �� 0 file_ref  �  �  � o    � �  0 pathinfo PathInfo�  �  � ��� l     ��������  ��  ��  � ��� i  (+��� I      �������� 0 dump  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 as_text  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� i  ,/��� I     ������
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
�� .sysodisAaleR        TEXT� l  # (������ b   # (��� b   # &�	 � o   # $���� 0 msg  	  o   $ %��
�� 
ret � o   & '���� 	0 errno  ��  ��  ��  ��  � 			 l     ��������  ��  ��  	 			 i  8;			 I     ������
�� .aevtoappnull  �   � ****��  ��  	 k     		 				 l     ��	
	��  	
  return debug()   	 �		  r e t u r n   d e b u g ( )		 	��	 I     �������� 0 open_helpbook  ��  ��  ��  	 	��	 l     ��������  ��  ��  ��       H��				 $��														 	!	"	#	$	%	&	'	(	)	*	+	,	-	.	/	0	1	2	3	4	5	6	7	8	9	:	;	<	=	>	?	@	A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S��  	 F������������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T
�� 
pimr�� 0 pathinfo PathInfo�� 0 nsworkspace NSWorkspace
�� 
pnam�� 0 _prefer_posix  �� 0 prefer_posix  �� 0 	make_with  �� 0 make_with_pathinfo  �� 0 change_name  �� 0 change_folder  �� 0 change_path_extension  �� 0 as_alias  �� 0 as_furl  �� 0 hfs_path  �� 0 
posix_path  �� 0 normalized_posix_path  �� 0 quoted_path  �� 0 type_identifier  �� 0 	is_folder  �� 0 
is_package  �� 0 is_alias  �� 0 
is_symlink  �� 0 
is_visible  �� 0 	set_types  �� 0 info  �� 0 info_with_size  � 0 re_info  �~ 0 	item_name  �} 0 basename  �| 0 path_extension  �{ 0 volume_name  �z 0 bundle_resource  �y $0 bundle_infoplist bundle_InfoPlist�x 0 bundle_resources_folder  �w 0 item_exists  �v 0 item_exists_without_update  
�u .coredoexbool       obj �t 0 	rename_to  �s 0 copy_to  �r 0 copy_with_opts  �q 0 finder_copy_to  �p 
0 my_log  �o 0 move_to  �n 0 move_with_replacing  �m 0 resolve_alias  �l 0 
into_trash  �k 
0 remove  �j 0 make_folder  �i 0 	make_path  �h 0 read_as_utf8  �g 0 write_as_utf8  �f 0 parent_folder  �e 	0 child  �d 0 child_posix  �c 0 unique_child  �b 0 list_children  �a 0 each  �` 0 perform_shell  �_ 0 
shell_test  �^ 0 	deep_copy  �] 0 item_ref  �\ !0 check_existance_raising_error  �[ 0 update_pathinfo  �Z 0 change_pathinfo  �Y 0 
change_ref  �X 0 dump  
�W .ascrcmnt****      � ****�V 	0 debug  �U 0 open_helpbook  
�T .aevtoappnull  �   � ****	 �S	T�S 	T  	U	V	W	U �R	X�Q
�R 
cobj	X 	Y	Y   �P 
�P 
scpt�Q  	V �O	Z�N
�O 
cobj	Z 	[	[   �M
�M 
osax�N  	W �L	\�K
�L 
cobj	\ 	]	]   �J 
�J 
frmk�K  	 	^	^   �I 
�I 
scpt	 	_	_ �H�G	`
�H misccura
�G 
pcls	` �	a	a  N S W o r k s p a c e
�� boovtrue	 �F 7�E�D	b	c�C�F 0 prefer_posix  �E �B	d�B 	d  �A�A 0 bool  �D  	b �@�@ 0 bool  	c �?�? 0 _prefer_posix  �C �)�,F	 �> O�=�<	e	f�;�> 0 	make_with  �= �:	g�: 	g  �9�9 0 file_ref  �<  	e �8�7�6�8 0 file_ref  �7 
0 is_hfs  �6 0 	path_info  	f 	�5�4�3�2 k�1�0�/�.
�5 
ctxt
�4 
utxt
�3 
TEXT
�2 
pcls�1 0 make_with_hfs  �0 0 _prefer_posix  �/ 0 make_with_posix  �. 0 make_with_pathinfo  �; YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ 	 �- ��,�+	h	i�*�- 0 make_with_pathinfo  �, �)	j�) 	j  �(�( 0 	path_info  �+  	h �'�&�%�' 0 	path_info  �& 0 a_parent  �% 0 xfile XFile	i �$ �	k�$ 0 xfile XFile	k �#	l�"�!	m	n� 
�# .ascrinit****      � ****	l k      	o	o  �	p	p  �	q	q  �	r	r  �	s	s  ���  �"  �!  	m �����
� 
pare� 0 	_pathinfo 	_pathInfo� 0 _inforecord _infoRecord� 0 _prefer_posix  � 0 _is_symlink  	n �������
� 
pare� 0 	_pathinfo 	_pathInfo
� 
msng� 0 _inforecord _infoRecord� 0 is_posix  � 0 _prefer_posix  � 0 _is_symlink  �  !b  N  Ob   �O�Ob   j+ �O��* )E�O��K S�O�	 � ���	t	u�� 0 change_name  � �	v� 	v  �� 
0 a_name  �  	t ��� 
0 a_name  � 0 	path_info  	u �
�	��
 0 	_pathinfo 	_pathInfo�	 0 change_name  � 0 make_with_pathinfo  � )�,�k+ E�O*�k+ 	 � ���	w	x�� 0 change_folder  � �	y� 	y  �� 0 
folder_ref  �  	w �� � 0 
folder_ref  �  0 	path_info  	x �������� 0 	_pathinfo 	_pathInfo�� 0 change_folder  �� 0 make_with_pathinfo  � )�,�k+ E�O*�k+ 	 ������	z	{���� 0 change_path_extension  �� ��	|�� 	|  ���� 0 a_suffix  ��  	z ���� 0 a_suffix  	{ �������� 0 	_pathinfo 	_pathInfo�� 0 change_path_extension  �� 0 make_with_pathinfo  �� *)�,�k+ k+ 	 �� ����	}	~���� 0 as_alias  ��  ��  	}  	~ �������� !0 check_existance_raising_error  �� 0 	_pathinfo 	_pathInfo�� 0 as_alias  �� *j+  O)�,j+ 	 ��4����		����� 0 as_furl  ��  ��  	  	� ������ 0 	_pathinfo 	_pathInfo�� 0 as_furl  �� 	)�,j+ 	 ��D����	�	����� 0 hfs_path  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 hfs_path  �� 	)�,j+ 	 ��T����	�	����� 0 
posix_path  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 
posix_path  �� 	)�,j+ 	 ��d����	�	����� 0 normalized_posix_path  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 normalized_posix_path  �� 	)�,j+ 	 ��o����	�	����� 0 quoted_path  ��  ��  	�  	� �������� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
strq�� )�,j+ �,E	 �������	�	����� 0 type_identifier  ��  ��  	�  	� ������������ "0 sharedworkspace sharedWorkspace�� 0 
posix_path  
�� 
msng�� &0 typeoffile_error_ typeOfFile_error_
�� 
ctxt�� b  j+   *)j+ �l+ �&U	  �������	�	����� 0 	is_folder  ��  ��  	� ������ 
0 my_uti  �� 0 a_result  	� ���������� 0 type_identifier  �� "0 sharedworkspace sharedWorkspace�� ,0 type_conformstotype_ type_conformsToType_�� 0*j+  E�Ob  j+  ��  eE�Y *��l+ E�UO�OP	! �������	�	����� 0 
is_package  ��  ��  	�  	� ����� 0 type_identifier  �� �*j+  OP	" �������	�	����� 0 is_alias  ��  ��  	� ���� 0 info_rec  	� ������ 0 info  
�� 
alis�� *j+  E�O��,E	# ������	�	����� 0 
is_symlink  ��  ��  	�  	� �������������� 0 _is_symlink  
�� 
msng�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  �� 4)�,�  & �*j+ %j Oe)�,FW X  f)�,FY hO)�,E	$ ��-����	�	����� 0 
is_visible  ��  ��  	� ���� 0 info_rec  	� ������ 0 info  
�� 
pvis�� *j+  E�O��,E	% ��A����	�	����� 0 	set_types  �� ��	��� 	�  ������ 0 creator_code  �� 0 	type_code  ��  	� �������� 0 creator_code  �� 0 	type_code  �� 
0 a_file  	� ����^���������� 0 	is_folder  �� 0 as_alias  
�� 
fcrt
�� 
asty
�� 
msng�� 0 _inforecord _infoRecord�� ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h	& ��n����	�	����� 0 info  ��  ��  	�  	� �������������� 0 _inforecord _infoRecord
�� 
msng�� !0 check_existance_raising_error  �� 0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file�� ()�,�  *j+ O*j+ �fl )�,FY hO)�,E	' �������	�	����� 0 info_with_size  ��  ��  	�  	� ��~�}�|�{�z� 0 _inforecord _infoRecord
�~ 
msng�} !0 check_existance_raising_error  �| 0 as_furl  
�{ 
ptsz
�z .sysonfo4asfe        file�� D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,E	( �y��x�w	�	��v�y 0 re_info  �x  �w  	�  	� �u�t�s�r�q�p�u 0 _inforecord _infoRecord
�t 
msng
�s 
ptsz
�r 
bool�q 0 as_furl  
�p .sysonfo4asfe        file�v <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,E	) �o��n�m	�	��l�o 0 	item_name  �n  �m  	�  	� �k�j�k 0 	_pathinfo 	_pathInfo�j 0 	item_name  �l 	)�,j+ 	* �i�h�g	�	��f�i 0 basename  �h  �g  	�  	� �e�d�e 0 	_pathinfo 	_pathInfo�d 0 basename  �f 	)�,j+ 	+ �c�b�a	�	��`�c 0 path_extension  �b  �a  	�  	� �_�^�_ 0 	_pathinfo 	_pathInfo�^ 0 path_extension  �` 	)�,j+ 	, �].�\�[	�	��Z�] 0 volume_name  �\  �[  	�  	� �Y�X�Y 0 	_pathinfo 	_pathInfo�X 0 volume_name  �Z 	)�,j+ 	- �WE�V�U	�	��T�W 0 bundle_resource  �V �S	��S 	�  �R�R 0 resource_name  �U  	� �Q�Q 0 resource_name  	� �P�O�N�M
�P 
in B�O 0 as_alias  
�N .sysorpthalis        TEXT�M 0 	make_with  �T *��*j+ l k+ 	. �LY�K�J	�	��I�L $0 bundle_infoplist bundle_InfoPlist�K  �J  	�  	� ]�H�H 0 child_posix  �I *�k+ 	/ �Gd�F�E	�	��D�G 0 bundle_resources_folder  �F  �E  	�  	� h�C�C 0 child_posix  �D *�k+ 	0 �B{�A�@	�	��?�B 0 item_exists  �A  �@  	�  	� �>�=�> 0 	_pathinfo 	_pathInfo�= 0 item_exists  �? 	)�,j+ 	1 �<��;�:	�	��9�< 0 item_exists_without_update  �;  �:  	�  	� �8�7�8 0 	_pathinfo 	_pathInfo�7 0 item_exists_without_update  �9 	)�,j+ 	2 �6��5�4	�	��3
�6 .coredoexbool       obj �5  �4  	�  	� �2�2 0 item_exists  �3 *j+  	3 �1��0�/	�	��.�1 0 	rename_to  �0 �-	��- 	�  �,�, 0 new_name  �/  	� �+�+ 0 new_name  	� ��*�)�(�'�&�%�* 0 	_pathinfo 	_pathInfo�) 0 as_alias_without_update  
�( 
pnam
�' 
msng�& 0 _inforecord _infoRecord�% 0 set_name  �. #� �)�,j+ �,FUO�)�,FO)�,�k+ Oe	4 �$��#�"	�	��!�$ 0 copy_to  �# � 	��  	�  �� 0 a_destination  �"  	� �� 0 a_destination  	� ��
� 
msng� 0 copy_with_opts  �! 	*��l+ 	5 ����	�	��� 0 copy_with_opts  � �	�� 	�  ��� 0 a_destination  � 0 opts  �  	� �����������
� 0 a_destination  � 0 opts  � 0 w_replacing  � 0 w_admin  � 0 
w_removing  � 0 command  � 0 com_opts  � 0 is_folder_to  � 0 destination_path  � 0 source_path  �
 0 	a_command  	� �	�������@�� ������ahqw|�������������������
�	 
pcls
� 
reco� 0 with_replacing  �  �  � 0 
with_admin  � 0 with_removing  � 	0 ditto  
� 
ctxt
�  
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
�� .sysoexecTEXT���     TEXT�� 0 	item_name  �9eE�OfE�OfE�O�E�O��,�  U 
��,E�W X  hO 
��,E�W X  hO 
��,E�W X  hO ��,E �E�Y hW X  hY hO���mv��, *j+ �k+ E�Y hO��  a E�O� �a %E�Y hY �a   
a E�Y hOfE�O�j+  $� 
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�	6 �������	�	����� 0 finder_copy_to  �� ��	��� 	�  ������ 0 a_destination  �� 0 with_replacing  ��  	� ������������ 0 a_destination  �� 0 with_replacing  �� 0 destination  �� 0 source_alias  �� 0 new_item  	� ����������������� 0 as_alias  
�� 
insh
�� 
alrp�� 
�� .coreclon****      � ****
�� 
alis�� 0 	make_with  �� +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ 	7 �������	�	����� 
0 my_log  �� ��	��� 	�  ���� 
0 a_text  ��  	� ���� 
0 a_text  	� ����
�� 
ascr
�� .ascrcmnt****      � ****�� � �j U	8 ��	����	�	����� 0 move_to  �� ��	��� 	�  ���� 0 a_destination  ��  	� ���������� 0 a_destination  �� 0 destination_path  �� 0 source_path  �� 0 msg  	� ����.������������������������ 0 item_exists  �� 0 quoted_path  
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 msg  ��  �� 
0 my_log  �� 0 	is_folder  �� 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 change_folder  �� 0 change_pathinfo  �� 0 
change_ref  �� `*j+  O�j+ E�O*j+ E�O �%�%�%j W X  *�k+ OfO�j+  *)�,�j+ 
k+ k+ Y *�j+ 
k+ Oe	9 ��e����	�	����� 0 move_with_replacing  �� ��	��� 	�  ���� 0 a_destination  ��  	� ���������� 0 a_destination  �� 0 destination_path  �� 0 source_path  �� 0 msg  	� 	������������������� 0 item_exists  �� 0 quoted_path  
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 msg  ��  
�� 
ascr
�� .ascrcmnt****      � ****�� =*j+  O�j+ E�O*j+ E�O �%�%�%j W X  � �j UOfOe	: �������	�	����� 0 resolve_alias  ��  ��  	� ���������� 0 
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
�O*�k+ Y )	; �������	�	����� 0 
into_trash  ��  ��  	� ���� 
0 a_file  	� ����������������� 0 as_alias  
�� .coredelonull���     obj �� 0 	_pathinfo 	_pathInfo
�� afdmtrsh
�� .earsffdralis        afdr�� 0 change_folder  �� 0 change_pathinfo  �� %*j+  E�O� �j UO*)�,�j k+ k+ 	< �� ����	�	����� 
0 remove  ��  ��  	� ������ 
0 a_file  �� 
0 a_path  	� ���������������� 0 quoted_path  �� 0 	_pathinfo 	_pathInfo�� 0 as_text  
�� .sysoexecTEXT���     TEXT�� 0 	_item_ref  
�� 
msng�� 0 _inforecord _infoRecord�� +*j+  E�O)�,j+ E�O�%j O�)�,�,FO�)�,FO)	= ��6����	�	���� 0 make_folder  �� �~	��~ 	�  �}�} 0 folder_name  ��  	� �|�{�| 0 folder_name  �{ 0 
new_folder  	� �z�y�x�w�z 0 item_exists  
�y 
msng�x 	0 child  �w 0 	make_path  � "*j+   �Y hO*�k+ E�O�jvk+ 	> �vY�u�t	�	��s�v 0 	make_path  �u �r	��r 	�  �q�q 0 opts  �t  	� �p�o�p 0 opts  �o 0 w_admin  	� �n�m�l�k�j�i{�h�g�f�e
�n 
pcls
�m 
reco�l 0 
with_admin  �k 0 item_exists  �j 0 	is_folder  
�i 
msng�h 0 
posix_path  
�g 
strq
�f 
badm
�e .sysoexecTEXT���     TEXT�s SfE�O��,�  
��,E�Y hO*j+  *j+  )Y �Y hO�*j+ �,%�l 
O*j+  )Y hO�	? �d��c�b	�	��a�d 0 read_as_utf8  �c  �b  	�  	� �`�_�^�]�\�` !0 check_existance_raising_error  �_ 0 as_alias  
�^ 
as  
�] 
utf8
�\ .rdwrread****        ****�a *j+  O*j+ ��l 	@ �[��Z�Y	�	��X�[ 0 write_as_utf8  �Z �W	��W 	�  �V�V 
0 a_data  �Y  	� �U�T�U 
0 a_data  �T 
0 output  	� �S�R�Q�P�O�N�M�L�K�J�I�S 0 as_furl  
�R 
perm
�Q .rdwropenshor       file
�P 
set2
�O .rdwrseofnull���     ****
�N 
refn
�M 
as  
�L 
utf8�K 
�J .rdwrwritnull���     ****
�I .rdwrclosnull���     ****�X &*j+  �el E�O��jl O����� 	O�j 
	A �H��G�F	�	��E�H 0 parent_folder  �G  �F  	�  	� �D�C�B�D 0 	_pathinfo 	_pathInfo�C 0 parent_folder  �B 0 make_with_pathinfo  �E *)�,j+ k+ 	B �A��@�?	�	��>�A 	0 child  �@ �=	��= 	�  �<�< 0 subpath  �?  	� �;�; 0 subpath  	� �:�9�8�7�6�: 0 item_exists_without_update  �9 0 	_pathinfo 	_pathInfo�8 	0 child  �7 0 make_with_pathinfo  
�6 
msng�> *j+   *)�,�k+ k+ Y �	C �5 �4�3	�	��2�5 0 child_posix  �4 �1	��1 	�  �0�0 0 subpath  �3  	� �/�.�/ 0 subpath  �. 
0 a_path  	� �-�,�+�*�- 0 item_exists  �, 0 
posix_path  �+ 0 	make_with  
�* 
msng�2 #*j+   *j+ E�O��%E�O*�k+ Y �	D �)"�(�'	�	��&�) 0 unique_child  �( �%	��% 	�  �$�$ 0 a_candidate  �'  	� �#�"�!� ���# 0 a_candidate  �" 0 
a_basename  �! 0 a_suffix  �  0 i  � 0 escape_suffix  � 0 a_child  	� ����AGQ����� 0 	is_folder  
� 
msng� 0 
split_name  
� 
cobj� 	0 child  � 0 item_exists  
� 
spac
� 
utxt�& x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�	E �}��	�	��� 0 list_children  �  �  	�  	� ��� 0 as_furl  
� .earslfdrutxt  @    file� *j+  j 	F ����	�	��� 0 each  � �	�� 	�  �
�
 0 a_script  �  	� �	�����	 0 a_script  � 
0 a_list  � 0 listwrapper ListWrapper� 0 n  � 
0 x_item  	� 	���	���� ����� 0 list_children  � 0 listwrapper ListWrapper	� ��	�����	�	���
�� .ascrinit****      � ****	� k     	�	� �����  ��  ��  	� ��
�� 
pcnt	� ��
�� 
pcnt�� b  �
� .corecnte****       ****
� 
pcnt
�  
cobj�� 	0 child  �� 0 do  � A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��	G �������	�	����� 0 perform_shell  �� ��	��� 	�  ���� 0 	a_command  ��  	� ������ 0 	a_command  �� 
0 a_path  	� ������������ 0 normalized_posix_path  
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� *j+  �,�,E�O��,%�%�%�%j 	H �������	�	����� 0 
shell_test  �� ��	��� 	�  ���� 
0 option  ��  	� ���� 
0 option  	� �����������
�� 
spac�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  ��   �%�%*j+ %j W 	X  fOe	I ��
����	�	����� 0 	deep_copy  ��  ��  	�  	� �������� 0 	_pathinfo 	_pathInfo�� 	0 clone  �� 0 make_with_pathinfo  �� *)�,j+ k+ 	J ������	�	����� 0 item_ref  ��  ��  	�  	� ������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 	)�,j+ 	K ��"����	�	����� !0 check_existance_raising_error  ��  ��  	�  	� ��������8����A�� 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  
�� 
errn��F�� 0 as_text  
�� 
strq�� ")�,j+  )��l�)�,j+ �,%�%Y h	L ��I����	�	����� 0 update_pathinfo  ��  ��  	�  	� ������������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 prefering_posix  �� 0 is_posix  �� 0 make_with_opts  �� %b  )�,j+ �)�,j+ ll+ )�,FO)�,E	M ��j����	�	����� 0 change_pathinfo  �� ��	��� 	�  ���� 0 
a_pathinfo  ��  	� ���� 0 
a_pathinfo  	� �������������� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� 0 _is_symlink  �� !�)�,FO�)�,FO)�,j+ )�,FO�)�,FO)	N �������	�
 ���� 0 
change_ref  �� ��
�� 
  ���� 0 file_ref  ��  	� ���� 0 file_ref  
  ������ 0 	make_with  �� 0 change_pathinfo  �� *b  �k+  k+ 	O �������

���� 0 dump  ��  ��  
  
 ������ 0 	_pathinfo 	_pathInfo�� 0 as_text  �� 	)�,j+ 	P �������

��
�� .ascrcmnt****      � ****��  ��  
  
 ������ 0 dump  
�� .ascrcmnt****      � ****�� )jd*j+   	Q �������

���� 	0 debug  ��  ��  
 �������� 
0 a_path  �� 0 a_xfile  �� 0 new_named_file  
 �������������������
�� 
scpt�� 	0 setup  
�� 
psxf�� 0 	make_with  �� 0 parent_folder  �� 0 unique_child  �� 0 	item_name  
�� .ascrcmnt****      � ****�� 0)��/)k+ O��&E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
	R �������

	���� 0 open_helpbook  ��  ��  
 ������ 0 msg  �� 	0 errno  
	 	���������

������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  

 ����~
�� 
errn� 	0 errno  �~  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j 	S �}	�|�{

�z
�} .aevtoappnull  �   � ****�|  �{  
  
 �y�y 0 open_helpbook  �z *j+   ascr  ��ޭ