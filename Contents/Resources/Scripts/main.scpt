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
pcls ( m   A B ) ) � * *  N S F i l e M a n a g e r &  + , + j   F L�� -�� 0 nsurl NSURL - 4   F K�� .
�� 
pcls . m   H I / / � 0 0 
 N S U R L ,  1 2 1 l     ��������  ��  ��   2  3 4 3 j   M Q�� 5
�� 
pnam 5 m   M P 6 6 � 7 7 
 X F i l e 4  8 9 8 l     ��������  ��  ��   9  : ; : l      �� < =��   <	'	!!@referencesPathInfo || help:openbook='net.script-factory.PathInfo.help'
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
use XFile : script "XFile"use scripting additions(* Make a New Instance *)set a_xfile to XFile's make_with("/Users")set home_folder to XFile's make_with(path to home folder)(* Obtain File Infomation *)log a_xfile's type_identifier() -- "public.folder"log a_xfile's is_folder() -- truelog a_xfile's is_package() -- falselog a_xfile's item_name() -- "Users"(* Obtain Parent and Child *)log home_folder's parent_folder()'s posix_path()-- "/Users"log home_folder's child("Documents")'s posix_path()-- "/Users/yourhome/Documents"log home_folder's child("Library/Scripts")'s posix_path()-- "/Users/yourhome/Library/Scripts"log home_folder's unique_child("Documents")'s posix_path()--"/Users/yourhome/Documents 2"(* Read and Write *)set test_file to home_folder's child("testfile")test_file's write_as_utf8("new data")log test_file's read_as_utf8() -- "new data"(* File Manipulations *)log test_file's item_exists() --trueset test_file2 to test_file's copy_to(home_folder's child("testfile2"))log test_file2's posix_path() -- "/Users/yourhome/testfile2"test_file2's move_to(home_folder's child("Documents"))log test_file2's posix_path() -- "/Users/yourhome/Documents/testfile2"test_file2's into_trash()log test_file2's posix_path() -- "/Users/yourhome/.Trash/testfile2"test_file's into_trash()(* Working with Shell Commands *)log test_file's perform_shell("cat %s") -- "new data"    = � > >B ! @ r e f e r e n c e s  P a t h I n f o   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . P a t h I n f o . h e l p ' 
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
 u s e   X F i l e   :   s c r i p t   " X F i l e "  u s e   s c r i p t i n g   a d d i t i o n s   ( *   M a k e   a   N e w   I n s t a n c e   * )  s e t   a _ x f i l e   t o   X F i l e ' s   m a k e _ w i t h ( " / U s e r s " )  s e t   h o m e _ f o l d e r   t o   X F i l e ' s   m a k e _ w i t h ( p a t h   t o   h o m e   f o l d e r )   ( *   O b t a i n   F i l e   I n f o m a t i o n   * )  l o g   a _ x f i l e ' s   t y p e _ i d e n t i f i e r ( )   - -   " p u b l i c . f o l d e r "  l o g   a _ x f i l e ' s   i s _ f o l d e r ( )   - -   t r u e  l o g   a _ x f i l e ' s   i s _ p a c k a g e ( )   - -   f a l s e  l o g   a _ x f i l e ' s   i t e m _ n a m e ( )   - -   " U s e r s "   ( *   O b t a i n   P a r e n t   a n d   C h i l d   * )  l o g   h o m e _ f o l d e r ' s   p a r e n t _ f o l d e r ( ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / D o c u m e n t s "  l o g   h o m e _ f o l d e r ' s   c h i l d ( " L i b r a r y / S c r i p t s " ) ' s   p o s i x _ p a t h ( )  - -   " / U s e r s / y o u r h o m e / L i b r a r y / S c r i p t s "  l o g   h o m e _ f o l d e r ' s   u n i q u e _ c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( )  - - " / U s e r s / y o u r h o m e / D o c u m e n t s   2 "   ( *   R e a d   a n d   W r i t e   * )  s e t   t e s t _ f i l e   t o   h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e " )  t e s t _ f i l e ' s   w r i t e _ a s _ u t f 8 ( " n e w   d a t a " )  l o g   t e s t _ f i l e ' s   r e a d _ a s _ u t f 8 ( )   - -   " n e w   d a t a "   ( *   F i l e   M a n i p u l a t i o n s   * )  l o g   t e s t _ f i l e ' s   i t e m _ e x i s t s ( )   - - t r u e   s e t   t e s t _ f i l e 2   t o   t e s t _ f i l e ' s   c o p y _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e 2 " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   m o v e _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / D o c u m e n t s / t e s t f i l e 2 "   t e s t _ f i l e 2 ' s   i n t o _ t r a s h ( )  l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / . T r a s h / t e s t f i l e 2 "  t e s t _ f i l e ' s   i n t o _ t r a s h ( )   ( *   W o r k i n g   w i t h   S h e l l   C o m m a n d s   * )  l o g   t e s t _ f i l e ' s   p e r f o r m _ s h e l l ( " c a t   % s " )   - -   " n e w   d a t a "   ;  ? @ ? l     ��������  ��  ��   @  A B A j   R T�� C�� 0 _prefer_posix   C m   R S��
�� boovtrue B  D E D l     ��������  ��  ��   E  F G F i   U X H I H I      �� J���� 0 prefer_posix   J  K�� K o      ���� 0 bool  ��  ��   I r      L M L o     ���� 0 bool   M n      N O N o    ���� 0 _prefer_posix   O  f     G  P Q P l     ��������  ��  ��   Q  R S R l      �� T U��   T c ]!@group ConstractorsMaking a new instance with a reference to a file from the class object.    U � V V � ! @ g r o u p   C o n s t r a c t o r s  M a k i n g   a   n e w   i n s t a n c e   w i t h   a   r e f e r e n c e   t o   a   f i l e   f r o m   t h e   c l a s s   o b j e c t .  S  W X W l     ��������  ��  ��   X  Y Z Y l      �� [ \��   [!@abstruct Make a XFile instance with a file reference@descriptionHFS/POSIX path, alias and file URL can be accepted as file specification.@param file_ref (alias or Unicode text) : a HFS/POSIX path, alias or File URL@result script object : a new instance of XFile    \ � ] ] ! @ a b s t r u c t    M a k e   a   X F i l e   i n s t a n c e   w i t h   a   f i l e   r e f e r e n c e  @ d e s c r i p t i o n  H F S / P O S I X   p a t h ,   a l i a s   a n d   f i l e   U R L   c a n   b e   a c c e p t e d   a s   f i l e   s p e c i f i c a t i o n .  @ p a r a m   f i l e _ r e f   ( a l i a s   o r   U n i c o d e   t e x t )   :   a   H F S / P O S I X   p a t h ,   a l i a s   o r   F i l e   U R L  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  Z  ^ _ ^ i   Y \ ` a ` I      �� b���� 0 	make_with   b  c�� c o      ���� 0 file_ref  ��  ��   a k     X d d  e f e r      g h g m     ��
�� boovfals h o      ���� 
0 is_hfs   f  i j i Z     k l���� k E    m n m J    	 o o  p q p m    ��
�� 
ctxt q  r s r m    ��
�� 
utxt s  t�� t m    ��
�� 
TEXT��   n n   	  u v u m   
 ��
�� 
pcls v o   	 
���� 0 file_ref   l r     w x w l    y���� y H     z z C     { | { o    ���� 0 file_ref   | m     } } � ~ ~  /��  ��   x o      ���� 
0 is_hfs  ��  ��   j   �  Z    P � � � � � o    ���� 
0 is_hfs   � r    + � � � n   ) � � � I   $ )�� ����� 0 make_with_hfs   �  ��� � o   $ %���� 0 file_ref  ��  ��   � o    $���� 0 pathinfo PathInfo � o      ���� 0 	path_info   �  � � � n  . 2 � � � o   / 1���� 0 _prefer_posix   �  f   . / �  ��� � r   5 A � � � n  5 ? � � � I   : ?�� ����� 0 make_with_posix   �  ��� � o   : ;���� 0 file_ref  ��  ��   � o   5 :���� 0 pathinfo PathInfo � o      ���� 0 	path_info  ��   � r   D P � � � n  D N � � � I   I N�� ����� 0 make_with_hfs   �  ��� � o   I J���� 0 file_ref  ��  ��   � o   D I���� 0 pathinfo PathInfo � o      ���� 0 	path_info   �  � � � l  Q Q��������  ��  ��   �  ��� � L   Q X � � I   Q W�� ����� 0 make_with_pathinfo   �  ��� � o   R S���� 0 	path_info  ��  ��  ��   _  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstructMake a new instance with a ((<PathInfo>)) instance.@param path_info (script) : a ((<PathInfo>)) instance.@result script object : a new instance of XFile     � � � �N ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   a   ( ( < P a t h I n f o > ) )   i n s t a n c e .  @ p a r a m   p a t h _ i n f o   ( s c r i p t )   :   a   ( ( < P a t h I n f o > ) )   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e    �  � � � i   ] ` � � � I      �� ����� 0 make_with_pathinfo   �  ��� � o      ���� 0 	path_info  ��  ��   � k      � �  � � � r      � � �  f      � o      ���� 0 a_parent   �  � � � h    �� ��� 0 xfile XFile � k       � �  � � � j     �� �
�� 
pare � o     ���� 0 a_parent   �  � � � j   	 �� ��� 0 	_pathinfo 	_pathInfo � o   	 ���� 0 	path_info   �  � � � j    �� ��� 0 _inforecord _infoRecord � m    ��
�� 
msng �  ��� � j    �� ��� 0 _prefer_posix   � n    � � � I    �������� 0 is_posix  ��  ��   � o    ���� 0 	path_info  ��   �  ��� � L     � � o    ���� 0 xfile XFile��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@group Make a New Instance with Changing Contents of an Instance

Making a new XFile instance with changing a part of the exisiting instance.    � � � �  ! @ g r o u p   M a k e   a   N e w   I n s t a n c e   w i t h   C h a n g i n g   C o n t e n t s   o f   a n   I n s t a n c e  
 
 M a k i n g   a   n e w   X F i l e   i n s t a n c e   w i t h   c h a n g i n g   a   p a r t   o f   t h e   e x i s i t i n g   i n s t a n c e .  �  � � � l     ��~�}�  �~  �}   �  � � � l      �| � ��|   � � �!@abstructMake a new instance with changing file name of the instance@param a_name (Unicode text or string) : a file name@result script object : a new instance of XFile    � � � �X ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f i l e   n a m e   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :   a   f i l e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   a d � � � I      �{ ��z�{ 0 change_name   �  ��y � o      �x�x 
0 a_name  �y  �z   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �w ��v�w 0 change_name   �  ��u � o    �t�t 
0 a_name  �u  �v   � o    �s�s 0 	_pathinfo 	_pathInfo �  f      � o      �r�r 0 	path_info   �  ��q � L     � � I    �p ��o�p 0 make_with_pathinfo   �  ��n � o    �m�m 0 	path_info  �n  �o  �q   �  � � � l     �l�k�j�l  �k  �j   �  � � � l      �i � ��i   � � �!@abstructMake a new instance with changing folder of the instance@param a_name (alias, Unicode text, file URL, file specification) : a reference to folder@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f o l d e r   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( a l i a s ,   U n i c o d e   t e x t ,   f i l e   U R L ,   f i l e   s p e c i f i c a t i o n )   :   a   r e f e r e n c e   t o   f o l d e r  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   e h � � � I      �h ��g�h 0 change_folder   �  ��f � o      �e�e 0 
folder_ref  �f  �g   � k      � �  � � � r     
 � � � n     � � � n      I    �d�c�d 0 change_folder   �b o    �a�a 0 
folder_ref  �b  �c   o    �`�` 0 	_pathinfo 	_pathInfo �  f      � o      �_�_ 0 	path_info   � �^ L     I    �]�\�] 0 make_with_pathinfo   �[ o    �Z�Z 0 	path_info  �[  �\  �^   � 	 l     �Y�X�W�Y  �X  �W  	 

 l      �V�V   � �!@abstructMake a new instance with changing path extension of the instance@param a_name (Unicode text or string) :a path extension, should not start with a dot ".".<!-- end locale -->@result script object : a new instance of XFile    �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   p a t h   e x t e n s i o n   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   : a   p a t h   e x t e n s i o n ,   s h o u l d   n o t   s t a r t   w i t h   a   d o t   " . " .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e   i   i l I      �U�T�U 0 change_path_extension   �S o      �R�R 0 a_suffix  �S  �T   L      I     �Q�P�Q 0 make_with_pathinfo   �O n   	 n   	 I    	�N�M�N 0 change_path_extension   �L o    �K�K 0 a_suffix  �L  �M   o    �J�J 0 	_pathinfo 	_pathInfo  f    �O  �P    l     �I�H�G�I  �H  �G    !  l      �F"#�F  " q k!@group Getting a File Reference form an Instance

Obtain a reference to a file which XFile reference to.   # �$$ � ! @ g r o u p   G e t t i n g   a   F i l e   R e f e r e n c e   f o r m   a n   I n s t a n c e  
 
 O b t a i n   a   r e f e r e n c e   t o   a   f i l e   w h i c h   X F i l e   r e f e r e n c e   t o . ! %&% l     �E�D�C�E  �D  �C  & '(' l      �B)*�B  ) � �!@abstructObtain a reference to a file as alias class@descriptionAn error raise, If a file or a folder does not exists.@result alias   * �++ ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   a l i a s   c l a s s  @ d e s c r i p t i o n  A n   e r r o r   r a i s e ,   I f   a   f i l e   o r   a   f o l d e r   d o e s   n o t   e x i s t s .  @ r e s u l t   a l i a s ( ,-, i   m p./. I      �A�@�?�A 0 as_alias  �@  �?  / k     00 121 I     �>�=�<�> !0 check_existance_raising_error  �=  �<  2 3�;3 L    44 n   565 n   787 I   	 �:�9�8�: 0 as_alias  �9  �8  8 o    	�7�7 0 	_pathinfo 	_pathInfo6  f    �;  - 9:9 l     �6�5�4�6  �5  �4  : ;<; l      �3=>�3  = Q K!@abstructObtain a reference to a file as File URL class@result File URL   > �?? � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   F i l e   U R L   c l a s s  @ r e s u l t   F i l e   U R L < @A@ i   q tBCB I      �2�1�0�2 0 as_furl  �1  �0  C L     DD n    EFE n   GHG I    �/�.�-�/ 0 as_furl  �.  �-  H o    �,�, 0 	_pathinfo 	_pathInfoF  f     A IJI l     �+�*�)�+  �*  �)  J KLK l      �(MN�(  M / )!@abstruct Obtain HFS path@result text   N �OO R ! @ a b s t r u c t    O b t a i n   H F S   p a t h  @ r e s u l t   t e x t L PQP i   u xRSR I      �'�&�%�' 0 hfs_path  �&  �%  S L     TT n    UVU n   WXW I    �$�#�"�$ 0 hfs_path  �#  �"  X o    �!�! 0 	_pathinfo 	_pathInfoV  f     Q YZY l     � ���   �  �  Z [\[ l      �]^�  ] 1 +!@abstruct Obtain POSIX path@result text   ^ �__ V ! @ a b s t r u c t    O b t a i n   P O S I X   p a t h  @ r e s u l t   t e x t \ `a` i   y |bcb I      ���� 0 
posix_path  �  �  c L     dd n    efe n   ghg I    ���� 0 
posix_path  �  �  h o    �� 0 	_pathinfo 	_pathInfof  f     a iji l     ����  �  �  j klk l      �mn�  m M G!@abstruct
Obtain POSIX path which does not end with "/".
@result text   n �oo � ! @ a b s t r u c t 
 O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 @ r e s u l t   t e x t l pqp i   } �rsr I      ���� 0 normalized_posix_path  �  �  s L     tt n    uvu n   wxw I    ���� 0 normalized_posix_path  �  �  x o    �� 0 	_pathinfo 	_pathInfov  f     q yzy l     �
�	��
  �	  �  z {|{ i   � �}~} I      ���� 0 quoted_path  �  �  ~ L      n    
��� n   	��� 1    	�
� 
strq� n   ��� I    ���� 0 
posix_path  �  �  � o    � �  0 	_pathinfo 	_pathInfo�  f     | ��� l     ��������  ��  ��  � ��� l      ������  � &  !@group Working with Attributes    � ��� @ ! @ g r o u p   W o r k i n g   w i t h   A t t r i b u t e s  � ��� l     ��������  ��  ��  � ��� l      ������  � P J!@abstruct
Obtain uniform type identifier (UTI) of the item 
@result text
   � ��� � ! @ a b s t r u c t 
 O b t a i n   u n i f o r m   t y p e   i d e n t i f i e r   ( U T I )   o f   t h e   i t e m   
 @ r e s u l t   t e x t 
� ��� i   � ���� I      �������� 0 type_identifier  ��  ��  � O     ��� L    �� c    ��� l   ������ n   ��� I    ������� &0 typeoffile_error_ typeOfFile_error_� ��� l   ������ n   ��� I    �������� 0 
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
posix_path  ��  ��  �  f    ��  ��  ��  ��  �  g    � ���� l   ������  � P J return its type:(my type_identifier()) conformsToType:"com.apple.package"   � ��� �   r e t u r n   i t s   t y p e : ( m y   t y p e _ i d e n t i f i e r ( ) )   c o n f o r m s T o T y p e : " c o m . a p p l e . p a c k a g e "��  � n    	��� I    	�������� "0 sharedworkspace sharedWorkspace��  ��  � o     ���� 0 nsworkspace NSWorkspace� ��� l     ��������  ��  ��  � ��� l      ������  � v p!@abstructCheck whether the item is an alias file or not.@result boolean : true if the item is an alias file.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . � � � i   � � I      �������� 0 is_alias  ��  ��   L      l    ���� =     m      � ( c o m . a p p l e . a l i a s - f i l e I    �������� 0 type_identifier  ��  ��  ��  ��    	
	 l     ��������  ��  ��  
  l      ����   z t!@abstructCheck whether the item is a symbolic link or not.@result boolean : true if the item is a symbolic link.    � � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k .   i   � � I      �������� 0 
is_symlink  ��  ��   L      l    ���� =     m      �  p u b l i c . s y m l i n k I    �������� 0 type_identifier  ��  ��  ��  ��    l     ��������  ��  ��    l      ����   j d!@abstructCheck whether the item is visible or not.@result boolean : true if the item is visible.    �   � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e .  !"! i   � �#$# I      �������� 0 
is_visible  ��  ��  $ k     %% &'& r     ()( I     �������� 0 info  ��  ��  ) o      ���� 0 info_rec  ' *��* L    ++ n    ,-, 1   	 ��
�� 
pvis- o    	���� 0 info_rec  ��  " ./. l     ��������  ��  ��  / 010 l      ��23��  2 � �!@abstructSet creator code and type code to the item.@param creator_code (text) : creator code which consists of 4 characters@param type_code (text) : type code which consists of 4 characters   3 �44� ! @ a b s t r u c t  S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m .  @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s 1 565 i   � �787 I      ��9���� 0 	set_types  9 :;: o      ���� 0 creator_code  ; <��< o      ���� 0 	type_code  ��  ��  8 k     +== >?> l     ��@A��  @ V P difficult to implemented with NSFileManager's setAttributes:ofItemAtPath:error:   A �BB �   d i f f i c u l t   t o   i m p l e m e n t e d   w i t h   N S F i l e M a n a g e r ' s   s e t A t t r i b u t e s : o f I t e m A t P a t h : e r r o r :? C��C Z     +DE����D H     FF I     ��~�}� 0 	is_folder  �~  �}  E k   	 'GG HIH r   	 JKJ I   	 �|�{�z�| 0 as_alias  �{  �z  K o      �y�y 
0 a_file  I LML O    !NON k     PP QRQ r    STS o    �x�x 0 creator_code  T n      UVU 1    �w
�w 
fcrtV o    �v�v 
0 a_file  R W�uW r     XYX o    �t�t 0 	type_code  Y n      Z[Z 1    �s
�s 
asty[ o    �r�r 
0 a_file  �u  O m    \\�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  M ]�q] r   " '^_^ m   " #�p
�p 
msng_ n     `a` o   $ &�o�o 0 _inforecord _infoRecorda  f   # $�q  ��  ��  ��  6 bcb l     �n�m�l�n  �m  �l  c ded l      �kfg�k  f!@abstructObtain file information.@descriptionDo &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().The size of the target will not be included.@result file infomation(record) : a result of info for command.   g �hh( ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) .  T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . e iji i   � �klk I      �j�i�h�j 0 info  �i  �h  l k     'mm non Z     !pq�g�fp =    rsr n    tut o    �e�e 0 _inforecord _infoRecordu  f     s m    �d
�d 
msngq k    vv wxw I    �c�b�a�c !0 check_existance_raising_error  �b  �a  x y�`y r    z{z I   �_|}
�_ .sysonfo4asfe        file| I    �^�]�\�^ 0 as_furl  �]  �\  } �[~�Z
�[ 
ptsz~ m    �Y
�Y boovfals�Z  { n     � o    �X�X 0 _inforecord _infoRecord�  f    �`  �g  �f  o ��W� L   " '�� n  " &��� o   # %�V�V 0 _inforecord _infoRecord�  f   " #�W  j ��� l     �U�T�S�U  �T  �S  � ��� l      �R���R  �82!@abstructObtain file information including its size.@descriptionDo &quot;info for&quot; command for the item with &quot;size&quot; option. The result is cached and same value is returned at next calling info_with_size() or ((<info>))().@result file infomation(record) : a result of info for command.   � ���d ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   i n c l u d i n g   i t s   s i z e .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m   w i t h   & q u o t ; s i z e & q u o t ;   o p t i o n .    T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o _ w i t h _ s i z e ( )   o r   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   � ���� I      �Q�P�O�Q 0 info_with_size  �P  �O  � k     C�� ��� Z     =����N� =    ��� n    ��� o    �M�M 0 _inforecord _infoRecord�  f     � m    �L
�L 
msng� k    �� ��� I    �K�J�I�K !0 check_existance_raising_error  �J  �I  � ��H� r    ��� I   �G��
�G .sysonfo4asfe        file� I    �F�E�D�F 0 as_furl  �E  �D  � �C��B
�C 
ptsz� m    �A
�A boovtrue�B  � n     ��� o    �@�@ 0 _inforecord _infoRecord�  f    �H  � ��� =    '��� n     %��� 1   # %�?
�? 
ptsz� n    #��� o   ! #�>�> 0 _inforecord _infoRecord�  f     !� m   % &�=
�= 
msng� ��<� r   * 9��� I  * 5�;��
�; .sysonfo4asfe        file� I   * /�:�9�8�: 0 as_furl  �9  �8  � �7��6
�7 
ptsz� m   0 1�5
�5 boovtrue�6  � n     ��� o   6 8�4�4 0 _inforecord _infoRecord�  f   5 6�<  �N  � ��3� L   > C�� n  > B��� o   ? A�2�2 0 _inforecord _infoRecord�  f   > ?�3  � ��� l     �1�0�/�1  �0  �/  � ��� l      �.���.  � � �!@abstructObtain file information again.@descriptionDo "info for" command for the item and reset the cache of ((<info>))().@result file infomation(record) : a result of info for command.   � ���~ ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   a g a i n .  @ d e s c r i p t i o n  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   � ���� I      �-�,�+�- 0 re_info  �,  �+  � k     ;�� ��� Z     5���*�� F     ��� l    ��)�(� >    ��� n    ��� o    �'�' 0 _inforecord _infoRecord�  f     � m    �&
�& 
msng�)  �(  � l 	  ��%�$� l   ��#�"� >   ��� n    ��� 1    �!
�! 
ptsz� n   ��� o   	 � �  0 _inforecord _infoRecord�  f    	� m    �
� 
msng�#  �"  �%  �$  � r    #��� I   ���
� .sysonfo4asfe        file� I    ���� 0 as_furl  �  �  � ���
� 
ptsz� m    �
� boovtrue�  � n     ��� o     "�� 0 _inforecord _infoRecord�  f     �*  � r   & 5��� I  & 1���
� .sysonfo4asfe        file� I   & +���� 0 as_furl  �  �  � ���
� 
ptsz� m   , -�
� boovfals�  � n     ��� o   2 4�� 0 _inforecord _infoRecord�  f   1 2� ��� L   6 ;�� n  6 :��� o   7 9�� 0 _inforecord _infoRecord�  f   6 7�  � ��� l     ���
�  �  �
  � ��� l      �	���	  � % !@group Obtain Path Infomation    � ��� > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  � ��� l     ����  �  �  � ��� l      ����  � W Q!@abstruct Obtain the name of the item referenced by the instance @result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e    @ r e s u l t   t e x t � ��� i   � ���� I      ���� 0 	item_name  �  �  � L     �� n    ��� n      I    �� ��� 0 	item_name  �   ��   o    ���� 0 	_pathinfo 	_pathInfo�  f     �  l     ��������  ��  ��    l      ����   � �!@abstruct Obtain the base name (a name which does not include path extension) of the item referenced by the instance.@result text    �
 ! @ a b s t r u c t    O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t  	
	 i   � � I      �������� 0 basename  ��  ��   L      n     n    I    �������� 0 basename  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f     
  l     ��������  ��  ��    l      ����   � �!@abstruct Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.@result text    �� ! @ a b s t r u c t    O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t   i   � � I      �������� 0 path_extension  ��  ��   L      n     n    !  I    �������� 0 path_extension  ��  ��  ! o    ���� 0 	_pathinfo 	_pathInfo  f      "#" l     ��������  ��  ��  # $%$ l      ��&'��  & ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text   ' �(( � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t % )*) i   � �+,+ I      �������� 0 volume_name  ��  ��  , L     -- n    ./. n   010 I    �������� 0 volume_name  ��  ��  1 o    ���� 0 	_pathinfo 	_pathInfo/  f     * 232 l     ��������  ��  ��  3 454 l      ��67��  6 $ !@group Working with a Bundle    7 �88 < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e  5 9:9 l     ��������  ��  ��  : ;<; l      ��=>��  = � �!@abstructObtain an item which is in the bundle resource folder.@descriptionThis method can be call to a bundle.@param resource_name (text) : a resource name@result script object : a XFile instance   > �??� ! @ a b s t r u c t  O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r .  @ d e s c r i p t i o n  T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e .  @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e < @A@ i   � �BCB I      ��D���� 0 bundle_resource  D E��E o      ���� 0 resource_name  ��  ��  C L     FF I     ��G���� 0 	make_with  G H��H I   ��IJ
�� .sysorpthalis        TEXTI o    ���� 0 resource_name  J ��K��
�� 
in BK l   L����L I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��  A MNM l     ��������  ��  ��  N OPO l      ��QR��  Q j d!@abstructObtain a reference to Info.plist of the bundle.@result script object : a XFile instance   R �SS � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e P TUT i   � �VWV I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  W L     XX I     ��Y���� 0 child_posix  Y Z��Z m    [[ �\\ & C o n t e n t s / I n f o . p l i s t��  ��  U ]^] l     ��������  ��  ��  ^ _`_ i   � �aba I      �������� 0 bundle_resources_folder  ��  ��  b L     cc I     ��d���� 0 child_posix  d e��e m    ff �gg & C o n t e n t s / R e s o u r c e s /��  ��  ` hih l     ��������  ��  ��  i jkj l      ��lm��  l ! !@group File Manipulations    m �nn 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  k opo l     ��������  ��  ��  p qrq l      ��st��  s/)!@abstructCheck whether the item referenced by the instance exists or not.@descriptionA file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.@result boolean : true if the item exists.   t �uuR ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . r vwv i   � �xyx I      �������� 0 item_exists  ��  ��  y L     zz n    {|{ n   }~} I    �������� 0 item_exists  ��  ��  ~ o    ���� 0 	_pathinfo 	_pathInfo|  f     w � l     ��������  ��  ��  � ��� l      ������  � � �!@abstructCheck whether the item referenced by the instance exists or not.@descriptionThe internal file reference will not be changed unlike ((<item_exists>)).@result boolean : true if the item exists.   � ���� ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . � ��� i   � ���� I      �������� 0 item_exists_without_update  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstructSynonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.@result boolean : true if the item exists.   � ���* ! @ a b s t r u c t  S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . � ��� i   � ���� I     ������
�� .coredoexbool       obj ��  ��  � L     �� I     �������� 0 item_exists  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � l f!@abstructRename an item which referenced by the XFile instance.@result boolean : true if succeded.   � ��� � ! @ a b s t r u c t  R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e d e d . � ��� i   � ���� I      ������� 0 	rename_to  � ���� o      ���� 0 new_name  ��  ��  � k     C�� ��� r     
��� n    ��� n   ��� I    ������� 0 change_name  � ���� o    ���� 0 new_name  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � o      ���� 0 dest  � ��� O    ,��� r    +��� n   )��� I    )���~� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_� ��� l   ��}�|� n   ��� n   ��� I    �{�z�y�{ 0 
posix_path  �z  �y  � o    �x�x 0 	_pathinfo 	_pathInfo�  f    �}  �|  � ��� l   $��w�v� n   $��� I     $�u�t�s�u 0 
posix_path  �t  �s  � o     �r�r 0 dest  �w  �v  � ��q� l  $ %��p�o� m   $ %�n
�n 
msng�p  �o  �q  �~  �  g    � o      �m�m 0 a_result  � n   ��� I    �l�k�j�l  0 defaultmanager defaultManager�k  �j  � o    �i�i 0 nsfilemanager NSFileManager� ��� l  - -�h�g�f�h  �g  �f  � ��� Z   - @���e�d� o   - .�c�c 0 a_result  � k   1 <�� ��� r   1 6��� m   1 2�b
�b 
msng� n     ��� o   3 5�a�a 0 _inforecord _infoRecord�  f   2 3� ��`� r   7 <��� o   7 8�_�_ 0 dest  � n     ��� o   9 ;�^�^ 0 	_pathinfo 	_pathInfo�  f   8 9�`  �e  �d  � ��]� L   A C�� o   A B�\�\ 0 a_result  �]  � ��� l     �[�Z�Y�[  �Z  �Y  � ��� l      �X���X  �*$!@abstruct Copy the item to specified location@descriptionSame name item in the destination is replaced.@param a_destination (script object or text) : a XFile instance referencing the copy destination or a relative path.@result script object : a XFile instance referencing copied item.   � ���H ! @ a b s t r u c t    C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n  @ d e s c r i p t i o n  S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :    a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �W��V�W 0 copy_to  � ��U� o      �T�T 0 a_destination  �U  �V  � L     �� I     �S��R�S 0 copy_with_opts  � ��� o    �Q�Q 0 a_destination  � ��P� m    �O
�O 
msng�P  �R  � ��� l     �N�M�L�N  �M  �L  � ��� l      �K���K  �71!
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
 @ p a r a m   o p t s   (   r e c o r d ) :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �J��I�J 0 copy_with_opts  � ��� o      �H�H 0 a_destination  �  �G  o      �F�F 0 opts  �G  �I  � k    8  l     �E�E   \ V cp : if source and destination are folders and the path of the source ends with "/",     � �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,    l     �D	
�D  	 ^ X         cp command contents of the source copy under the destination folder like ditto.   
 � �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .  l     �C�C   U O        The endding "/" of the source path should be removed for stable result.    � �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .  l     �B�B   5 /        Is the support  of ditto not required ?    � ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?  r      m     �A
�A boovtrue o      �@�@ 0 w_replacing    r     m    �?
�? boovfals o      �>�> 0 w_admin    r     !  m    	�=
�= boovfals! o      �<�< 0 
w_removing   "#" l   $%&$ r    '(' m    )) �**  c p( o      �;�; 0 command  %   or "ditto"   & �++    o r   " d i t t o "# ,-, l   �:�9�8�:  �9  �8  - ./. Z    l01�7�60 =   232 n    454 m    �5
�5 
pcls5 o    �4�4 0 opts  3 m    �3
�3 
reco1 k    h66 787 Q    )9:�29 r     ;<; n    =>= o    �1�1 0 with_replacing  > o    �0�0 0 opts  < o      �/�/ 0 w_replacing  : R      �.�-�,
�. .ascrerr ****      � ****�-  �,  �2  8 ?@? Q   * ;AB�+A r   - 2CDC n   - 0EFE o   . 0�*�* 0 
with_admin  F o   - .�)�) 0 opts  D o      �(�( 0 w_admin  B R      �'�&�%
�' .ascrerr ****      � ****�&  �%  �+  @ GHG Q   < MIJ�$I r   ? DKLK n   ? BMNM o   @ B�#�# 0 with_removing  N o   ? @�"�" 0 opts  L o      �!�! 0 
w_removing  J R      � ��
�  .ascrerr ****      � ****�  �  �$  H O�O Q   N hPQ�P Z   Q _RS��R n   Q UTUT o   R T�� 	0 ditto  U o   Q R�� 0 opts  S r   X [VWV m   X YXX �YY 
 d i t t oW o      �� 0 command  �  �  Q R      ���
� .ascrerr ****      � ****�  �  �  �  �7  �6  / Z[Z l  m m����  �  �  [ \]\ Z   m �^_��^ E  m v`a` J   m rbb cdc m   m n�
� 
ctxtd efe m   n o�
� 
utxtf g�g m   o p�
� 
TEXT�  a n   r uhih m   s u�

�
 
pclsi o   r s�	�	 0 a_destination  _ r   y �jkj n  y �lml I   ~ ��n�� 	0 child  n o�o o   ~ �� 0 a_destination  �  �  m I   y ~���� 0 parent_folder  �  �  k o      �� 0 a_destination  �  �  ] pqp l  � �� �����   ��  ��  q rsr Z   � �tuv��t =  � �wxw o   � ����� 0 command  x m   � �yy �zz  c pu k   � �{{ |}| r   � �~~ m   � ��� ���  - R p o      ���� 0 com_opts  } ���� Z   � �������� o   � ����� 0 w_replacing  � r   � ���� b   � ���� o   � ����� 0 com_opts  � m   � ��� ���  f� o      ���� 0 com_opts  ��  ��  ��  v ��� =  � ���� o   � ����� 0 command  � m   � ��� ��� 
 d i t t o� ���� r   � ���� m   � ��� ���  - - r s r c� o      ���� 0 com_opts  ��  ��  s ��� r   � ���� m   � ���
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
�� .coreclon****      � ****� o    ���� 0 source_alias  � �� 
�� 
insh  o    ���� 0 destination   ����
�� 
alrp o    ���� 0 with_replacing  ��  ��  ��  � m    ��
�� 
alis� o      ���� 0 new_item  � m    �                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � �� L   # * I   # )������ 0 	make_with   �� o   $ %���� 0 new_item  ��  ��  ��  � 	 l     ��������  ��  ��  	 

 i   � � I      ������ 
0 my_log   �� o      ���� 
0 a_text  ��  ��   l    
 O    
 I   	����
�� .ascrcmnt****      � **** o    ���� 
0 a_text  ��   1     ��
�� 
ascr E ? use this for debuggingm, because the log command is overrided.    � ~   u s e   t h i s   f o r   d e b u g g i n g m ,   b e c a u s e   t h e   l o g   c o m m a n d   i s   o v e r r i d e d .  l     ��������  ��  ��    l      ����  ("!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, moving an item will fail.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.    �D ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   m o v i n g   a n   i t e m   w i l l   f a i l .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s .   i   � � !  I      ��"���� 0 move_to  " #��# o      �� 0 a_destination  ��  ��  ! k     c$$ %&% l     �~'(�~  '   log "start move_to"   ( �)) (   l o g   " s t a r t   m o v e _ t o "& *+* l    ,-., I     �}�|�{�} 0 item_exists  �|  �{  - G A even if the item exists, broken symbolic file will return false.   . �// �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .+ 010 Z    +23�z�y2 n   454 I    �x�w�v�x 0 item_exists  �w  �v  5 o    �u�u 0 a_destination  3 Z    '67�t86 n   9:9 I    �s�r�q�s 0 	is_folder  �r  �q  : o    �p�p 0 a_destination  7 r    ";<; n    =>= I     �o?�n�o 	0 child  ? @�m@ I    �l�k�j�l 0 	item_name  �k  �j  �m  �n  > o    �i�i 0 a_destination  < o      �h�h 0 a_destination  �t  8 L   % 'AA m   % &�g
�g boovfals�z  �y  1 BCB l  , ,�f�e�d�f  �e  �d  C DED O   , MFGF r   8 LHIH n  8 JJKJ I   9 J�cL�b�c <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_L MNM l  9 @O�a�`O n  9 @PQP n  : @RSR I   < @�_�^�]�_ 0 
posix_path  �^  �]  S o   : <�\�\ 0 	_pathinfo 	_pathInfoQ  f   9 :�a  �`  N TUT l  @ EV�[�ZV n  @ EWXW I   A E�Y�X�W�Y 0 
posix_path  �X  �W  X o   @ A�V�V 0 a_destination  �[  �Z  U Y�UY l  E FZ�T�SZ m   E F�R
�R 
msng�T  �S  �U  �b  K  g   8 9I o      �Q�Q 0 a_result  G n  , 5[\[ I   1 5�P�O�N�P  0 defaultmanager defaultManager�O  �N  \ o   , 1�M�M 0 nsfilemanager NSFileManagerE ]^] Z   N `_`�L�K_ o   N O�J�J 0 a_result  ` I   R \�Ia�H�I 0 
change_ref  a b�Gb n  S Xcdc I   T X�F�E�D�F 0 item_ref  �E  �D  d o   S T�C�C 0 a_destination  �G  �H  �L  �K  ^ e�Be L   a cff o   a b�A�A 0 a_result  �B   ghg l     �@�?�>�@  �?  �>  h iji l      �=kl�=  k>8!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, the item will be replaced with the target item.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.   l �mmp ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . j non i   � �pqp I      �<r�;�< 0 move_with_replacing  r s�:s o      �9�9 0 a_destination  �:  �;  q k     �tt uvu r     wxw m     �8
�8 
msngx o      �7�7 0 escaped_item  v yzy Z    Q{|�6�5{ n   	}~} I    	�4�3�2�4 0 item_exists_without_update  �3  �2  ~ o    �1�1 0 a_destination  | Z    M��0�/ H    �� n   ��� I    �.�-�,�. 0 	is_folder  �-  �,  � o    �+�+ 0 a_destination  � O    I��� k    H�� ��� r     ���  g    � o      �*�* 0 escaped_item  � ��� r   ! 1��� n  ! /��� n  " /��� I   & /�)��(�) 0 unique_child  � ��'� n  & +��� I   ' +�&�%�$�& 0 	item_name  �%  �$  � o   & '�#�# 0 a_destination  �'  �(  � I   " &�"�!� �" 0 parent_folder  �!  �   �  g   ! "� o      �� 
0 uchild  � ��� l  2 2����  �    log uchild's posix_path()   � ��� 4   l o g   u c h i l d ' s   p o s i x _ p a t h ( )� ��� Z   2 H����� H   2 9�� n  2 8��� I   3 8���� 0 move_to  � ��� o   3 4�� 
0 uchild  �  �  �  g   2 3� k   < D�� ��� I  < A���
� .ascrcmnt****      � ****� m   < =�� ��� @ F a i l e d   t o   e s c a p e   e x i s i t i n g   i t e m .�  � ��� L   B D�� m   B C�
� boovfals�  �  �  �  � n   ��� I    ���� 0 	deep_copy  �  �  � o    �� 0 a_destination  �0  �/  �6  �5  z ��� l  R R����  �  �  � ��� r   R Z��� I   R X���
� 0 move_to  � ��	� o   S T�� 0 a_destination  �	  �
  � o      �� 0 a_result  � ��� Z   [ ������ o   [ \�� 0 a_result  � Z   _ n����� >  _ b��� o   _ `�� 0 escaped_item  � m   ` a�
� 
msng� n  e j��� I   f j� �����  
0 remove  ��  ��  � o   e f���� 0 escaped_item  �  �  �  � Z   q �������� >  q t��� o   q r���� 0 escaped_item  � m   r s��
�� 
msng� n  w }��� I   x }������� 0 move_to  � ���� o   x y���� 0 s_destination  ��  ��  � o   w x���� 0 escaped_item  ��  ��  � ���� L   � ��� o   � ����� 0 a_result  ��  o ��� l     ��������  ��  ��  � ��� l      ������  �!@abstructResolving original item of a alias file.@descriptionIf the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.@result script object or missing value   � ���
 ! @ a b s t r u c t  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  @ d e s c r i p t i o n  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e � ��� i   � ���� I      �������� 0 resolve_alias  ��  ��  � k     c�� ��� Z     #������� I     �������� 0 
is_symlink  ��  ��  � k    �� ��� r    ��� I    �������� 0 	deep_copy  ��  ��  � o      ���� 0 
x_original  � ���� Z    ������ n   ��� I    �������� 0 item_exists  ��  ��  � o    ���� 0 
x_original  � L    �� o    ���� 0 
x_original  ��  � L    �� m    ��
�� 
msng��  ��  ��  � ��� l  $ $��������  ��  ��  � ��� Z   $ 3������� H   $ *�� I   $ )�������� 0 is_alias  ��  ��  � L   - /��  f   - .��  ��  � ��� l  4 4��������  ��  ��  � ��� r   4 H��� n  4 F��� I   9 F������� Z0 +urlbyresolvingaliasfileaturl_options_error_ +URLByResolvingAliasFileAtURL_options_error_� ��� l  9 @������ n  9 @��� n  : @��� I   < @�������� 0 as_nsurl as_NSURL��  ��  � o   : <���� 0 	_pathinfo 	_pathInfo�  f   9 :��  ��  �    m   @ A����   �� l  A B���� m   A B��
�� 
msng��  ��  ��  ��  � o   4 9���� 0 nsurl NSURL� o      ���� 0 original_url  �  Z   I U���� =  I L	 o   I J���� 0 original_url  	 m   J K��
�� 
msng L   O Q

 m   O P��
�� 
msng��  ��   �� L   V c I   V b������ 0 	make_with   �� c   W ^ n  W \ I   X \�������� 0 path  ��  ��   o   W X���� 0 original_url   m   \ ]��
�� 
ctxt��  ��  ��  �  l     ��������  ��  ��    l      ����   ! !@abstructPut into trash.    � 6 ! @ a b s t r u c t  P u t   i n t o   t r a s h .   i   � � I      �������� 0 
into_trash  ��  ��   k     ,   O     !"! n   #$# I    ��%���� @0 recycleurls_completionhandler_ recycleURLs_completionHandler_% &'& l   (����( n   )*) n   +,+ I    �������� 0 as_nsurl as_NSURL��  ��  , o    ���� 0 	_pathinfo 	_pathInfo*  f    ��  ��  ' -��- l   .����. m    ��
�� 
msng��  ��  ��  ��  $  g    " n    	/0/ I    	�������� "0 sharedworkspace sharedWorkspace��  ��  0 o     ���� 0 nsworkspace NSWorkspace  1��1 I    ,��2���� 0 change_pathinfo  2 3��3 n   (454 n   (676 I    (��8���� 0 change_folder  8 9��9 I   $��:��
�� .earsffdralis        afdr: m     ��
�� afdmtrsh��  ��  ��  7 o    ���� 0 	_pathinfo 	_pathInfo5  f    ��  ��  ��   ;<; l     ��������  ��  ��  < =>= l      ��?@��  ? X R!@abstructRemove the item referd from the target XFile instance.@result boolean   @ �AA � ! @ a b s t r u c t  R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e .  @ r e s u l t   b o o l e a n > BCB i   � �DED I      �������� 
0 remove  ��  ��  E k     =FF GHG r     	IJI n    KLK n   MNM I    �������� 0 as_text  ��  ��  N o    ���� 0 	_pathinfo 	_pathInfoL  f     J o      ���� 
0 a_path  H OPO O   
 $QRQ r    #STS n   !UVU I    !��W���� 20 removeitematpath_error_ removeItemAtPath_error_W XYX l   Z����Z n   [\[ I    ��~�}� 0 
posix_path  �~  �}  \  f    ��  ��  Y ]�|] l   ^�{�z^ m    �y
�y 
msng�{  �z  �|  ��  V  g    T o      �x�x 0 a_result  R n  
 _`_ I    �w�v�u�w  0 defaultmanager defaultManager�v  �u  ` o   
 �t�t 0 nsfilemanager NSFileManagerP aba Z   % :cd�s�rc o   % &�q�q 0 a_result  d k   ) 6ee fgf r   ) 0hih o   ) *�p�p 
0 a_path  i n     jkj n  + /lml o   - /�o�o 0 	_item_ref  m o   + -�n�n 0 	_pathinfo 	_pathInfok  f   * +g n�mn r   1 6opo m   1 2�l
�l 
msngp n     qrq o   3 5�k�k 0 _inforecord _infoRecordr  f   2 3�m  �s  �r  b s�js L   ; =tt o   ; <�i�i 0 a_result  �j  C uvu l     �h�g�f�h  �g  �f  v wxw l      �eyz�e  y   !@group Making subfolders    z �{{ 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  x |}| l     �d�c�b�d  �c  �b  } ~~ l      �a���a  � � �!@abstructMake a sub folder.@descriptionmissing value will be returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.@result script object or missing value : a XFile instance of newly created folder.   � ���� ! @ a b s t r u c t  M a k e   a   s u b   f o l d e r .  @ d e s c r i p t i o n  m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r .  ��� i   � ��� I      �`��_�` 0 make_folder  � ��^� o      �]�] 0 folder_name  �^  �_  � k     !�� ��� Z     ���\�[� H     �� l    ��Z�Y� I     �X�W�V�X 0 item_exists  �W  �V  �Z  �Y  � L   	 �� m   	 
�U
�U 
msng�\  �[  � ��� l   �T�S�R�T  �S  �R  � ��� r    ��� I    �Q��P�Q 	0 child  � ��O� o    �N�N 0 folder_name  �O  �P  � o      �M�M 0 
new_folder  � ��L� L    !�� n    ��� I     �K��J�K 0 	make_path  � ��I� J    �H�H  �I  �J  � o    �G�G 0 
new_folder  �L  � ��� l     �F�E�D�F  �E  �D  � ��� l      �C���C  ���!@abstructMake folders which indicating the path of the XFile instance.@descriptionUsing a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.@result script object or missing value : a XFile instance of newly created folder.   � ��� ! @ a b s t r u c t  M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e .  @ d e s c r i p t i o n  U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . � ��� i  ��� I      �B��A�B 0 	make_path  � ��@� o      �?�? 0 opts  �@  �A  � k     R�� ��� r     ��� m     �>
�> boovfals� o      �=�= 0 w_admin  � ��� Z    ���<�;� =   	��� n    ��� m    �:
�: 
pcls� o    �9�9 0 opts  � m    �8
�8 
reco� r    ��� n    ��� o    �7�7 0 
with_admin  � o    �6�6 0 opts  � o      �5�5 0 w_admin  �<  �;  � ��� Z    0���4�3� I    �2�1�0�2 0 item_exists  �1  �0  � Z    ,���/�� I    #�.�-�,�. 0 	is_folder  �-  �,  � L   & (��  f   & '�/  � m   + ,�+
�+ 
msng�4  �3  � ��� I  1 @�*��
�* .sysoexecTEXT���     TEXT� b   1 :��� m   1 2�� ���  m k d i r   - p  � l  2 9��)�(� n   2 9��� 1   7 9�'
�' 
strq� I   2 7�&�%�$�& 0 
posix_path  �%  �$  �)  �(  � �#��"
�# 
badm� o   ; <�!�! 0 w_admin  �"  � ��� Z  A O��� �� I   A F���� 0 item_exists  �  �  � L   I K��  f   I J�   �  � ��� L   P R�� m   P Q�
� 
msng�  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l      ����  � 0 *!@group Reading and Writing File Contents    � ��� T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  � ��� l     ����  �  �  � ��� l      ����  � X R!@abstructRead file contents as UTF-8 encoded text.@result Unicode text (UTF-8)   � ��� � ! @ a b s t r u c t  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) � ��� i  ��� I      ���� 0 read_as_utf8  �  �  � k     �� ��� I     ��
�	� !0 check_existance_raising_error  �
  �	  � ��� L    �� I   ���
� .rdwrread****        ****� l   ���� I    ���� 0 as_alias  �  �  �  �  � ��� 
� 
as  � m    ��
�� 
utf8�   �  � ��� l     ��������  ��  ��  � ��� l      ������  � u o!@abstructWrite data into the file as UTF-8 encoded text.@param a_data (text) : data to write into the file.   � ��� � ! @ a b s t r u c t  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . � ��� i  	��� I      �� ���� 0 write_as_utf8    �� o      ���� 
0 a_data  ��  ��  � k     %  r      I    ��
�� .rdwropenshor       file I     �������� 0 as_furl  ��  ��   ��	��
�� 
perm	 m    ��
�� boovtrue��   o      ���� 
0 output   

 I   ��
�� .rdwrseofnull���     **** o    ���� 
0 output   ����
�� 
set2 m    ����  ��    I   ��
�� .rdwrwritnull���     **** o    ���� 
0 a_data   ��
�� 
refn o    ���� 
0 output   ����
�� 
as   m    ��
�� 
utf8��   �� I    %����
�� .rdwrclosnull���     **** o     !���� 
0 output  ��  ��  �  l     ��������  ��  ��    l      ����   " !@group Parent and Children     � 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n     l     ��������  ��  ��    !"! l      ��#$��  # � �!@abstructObtain a folder containing the item referenced by the XFile instance.@result script object : a XFile instance of the parent folder.   $ �%%  ! @ a b s t r u c t  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . " &'& i  ()( I      �������� 0 parent_folder  ��  ��  ) L     ** I     ��+���� 0 make_with_pathinfo  + ,��, n   -.- n   /0/ I    �������� 0 parent_folder  ��  ��  0 o    ���� 0 	_pathinfo 	_pathInfo.  f    ��  ��  ' 121 l     ��������  ��  ��  2 343 l      ��56��  5!@abstructObtain an item in the folder with specifying a sub path from the target.@descriptionIf this methods is sent to non exsisting folder, missing value is returend.@param suppath(text) :a sub path to obtain.@result script object or missing value : a XFile instance   6 �77& ! @ a b s t r u c t  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  @ d e s c r i p t i o n  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e 4 898 i  :;: I      ��<���� 	0 child  < =��= o      ���� 0 subpath  ��  ��  ; Z     >?��@> I     �������� 0 item_exists_without_update  ��  ��  ? L    AA I    ��B���� 0 make_with_pathinfo  B C��C n  	 DED n  
 FGF I    ��H���� 	0 child  H I��I o    ���� 0 subpath  ��  ��  G o   
 ���� 0 	_pathinfo 	_pathInfoE  f   	 
��  ��  ��  @ L    JJ m    ��
�� 
msng9 KLK l     ��������  ��  ��  L MNM i  OPO I      ��Q���� 0 child_posix  Q R��R o      ���� 0 subpath  ��  ��  P Z     "ST��US I     �������� 0 item_exists  ��  ��  T k    VV WXW r    YZY I    �������� 0 
posix_path  ��  ��  Z o      ���� 
0 a_path  X [\[ r    ]^] b    _`_ o    ���� 
0 a_path  ` o    ���� 0 subpath  ^ o      ���� 
0 a_path  \ a��a L    bb I    ��c���� 0 	make_with  c d��d o    ���� 
0 a_path  ��  ��  ��  ��  U L     "ee m     !��
�� 
msngN fgf l     ��������  ��  ��  g hih l     ��������  ��  ��  i jkj l      ��lm��  l��!@abstructObtain a XFile instance reference unique name item in the folder.@descriptionIf the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.@param a_candidate(text or list) :A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.@result script object : a XFile instance   m �nnT ! @ a b s t r u c t  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  @ d e s c r i p t i o n  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   :  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e k opo i  qrq I      ��s���� 0 unique_child  s t��t o      ���� 0 a_candidate  ��  ��  r k     wuu vwv l     ��xy��  x   log "start unique_child"   y �zz 2   l o g   " s t a r t   u n i q u e _ c h i l d "w {|{ Z     }~����} H      I     �������� 0 	is_folder  ��  ��  ~ k   	 �� ��� l  	 	������  � ' ! log "not folder " & posix_path()   � ��� B   l o g   " n o t   f o l d e r   "   &   p o s i x _ p a t h ( )� ���� L   	 �� m   	 
��
�� 
msng��  ��  ��  | ��� r    )��� n   ��� I    ������� 0 
split_name  � ���� o    ���� 0 a_candidate  ��  ��  � o    ���� 0 pathinfo PathInfo� J      �� ��� o      ���� 0 
a_basename  � ���� o      ���� 0 a_suffix  ��  � ��� Z   * ;������ =  * -��� o   * +���� 0 a_suffix  � m   + ,��
�� 
msng� r   0 3��� m   0 1�� ���  � o      ���� 0 a_suffix  ��  � r   6 ;��� b   6 9��� m   6 7�� ���  .� o   7 8�� 0 a_suffix  � o      �~�~ 0 a_suffix  � ��� r   < ?��� m   < =�}�} � o      �|�| 0 i  � ��� r   @ C��� m   @ A�� ���  � o      �{�{ 0 escape_suffix  � ��� T   D t�� k   I o�� ��� r   I U��� I   I S�z��y�z 	0 child  � ��x� b   J O��� b   J M��� o   J K�w�w 0 
a_basename  � o   K L�v�v 0 escape_suffix  � o   M N�u�u 0 a_suffix  �x  �y  � o      �t�t 0 a_child  � ��s� Z   V o���r�� n  V [��� I   W [�q�p�o�q 0 item_exists  �p  �o  � o   V W�n�n 0 a_child  � k   ^ k�� ��� r   ^ e��� b   ^ c��� 1   ^ _�m
�m 
spac� l  _ b��l�k� c   _ b��� o   _ `�j�j 0 i  � m   ` a�i
�i 
utxt�l  �k  � o      �h�h 0 escape_suffix  � ��g� r   f k��� [   f i��� o   f g�f�f 0 i  � m   g h�e�e � o      �d�d 0 i  �g  �r  � k   n o�� ��� l  n n�c���c  � !  log a_child's posix_path()   � ��� 6   l o g   a _ c h i l d ' s   p o s i x _ p a t h ( )� ��b�  S   n o�b  �s  � ��a� L   u w�� o   u v�`�` 0 a_child  �a  p ��� l     �_�^�]�_  �^  �]  � ��� i   ��� I      �\�[�Z�\ 0 list_children  �[  �Z  � L     
�� I    	�Y��X
�Y .earslfdrutxt  @    file� I     �W�V�U�W 0 as_furl  �V  �U  �X  � ��� l     �T�S�R�T  �S  �R  � ��� l      �Q���Q  �<6!@abstruct
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
� ��� i  !$��� I      �P��O�P 0 each  � ��N� o      �M�M 0 a_script  �N  �O  � k     @�� ��� r     ��� I     �L�K�J�L 0 list_children  �K  �J  � o      �I�I 
0 a_list  � ��� h    �H��H 0 listwrapper ListWrapper� j     �G�
�G 
pcnt� o     �F�F 
0 a_list  � ��� l   �E�D�C�E  �D  �C  � ��B� Y    @��A���@� k    ;��    r    + I    )�?�>�? 	0 child   �= n    % 4   " %�<
�< 
cobj o   # $�;�; 0 n   n    "	
	 1     "�:
�: 
pcnt
 o     �9�9 0 listwrapper ListWrapper�=  �>   o      �8�8 
0 x_item   �7 Z   , ;�6�5 H   , 3 n  , 2 I   - 2�4�3�4 0 do   �2 o   - .�1�1 
0 x_item  �2  �3   o   , -�0�0 0 a_script    S   6 7�6  �5  �7  �A 0 n  � m    �/�/ � I   �.�-
�. .corecnte****       **** o    �,�, 
0 a_list  �-  �@  �B  �  l     �+�*�)�+  �*  �)    l      �(�(   * $!@group Working with Shell Commands     � H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s    l     �'�&�%�'  �&  �%    l      �$ �$  	!@abstruct
Run passed shell command taking the target as an argument.
@description
&quot;%s&quot; in the command will be replaced with the target's path.
@param a_command(text) : shell command including %s.
@result text : standard output of the shell command
     �!! ! @ a b s t r u c t 
 R u n   p a s s e d   s h e l l   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n 
 & q u o t ; % s & q u o t ;   i n   t h e   c o m m a n d   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t ' s   p a t h . 
 @ p a r a m   a _ c o m m a n d ( t e x t )   :   s h e l l   c o m m a n d   i n c l u d i n g   % s . 
 @ r e s u l t   t e x t   :   s t a n d a r d   o u t p u t   o f   t h e   s h e l l   c o m m a n d 
 "#" i  %($%$ I      �#&�"�# 0 perform_shell  & '�!' o      � �  0 	a_command  �!  �"  % k     (( )*) r     +,+ n    	-.- 1    	�
� 
strq. n    /0/ 1    �
� 
strq0 I     ���� 0 normalized_posix_path  �  �  , o      �� 
0 a_path  * 1�1 L    22 I   �3�
� .sysoexecTEXT���     TEXT3 b    454 b    676 b    898 b    :;: m    << �==  e v a l   $ ( p r i n t f  ; n   >?> 1    �
� 
strq? o    �� 0 	a_command  9 1    �
� 
spac7 o    �� 
0 a_path  5 m    @@ �AA  )�  �  # BCB l     ����  �  �  C DED l      �FG�  F � �!@abstruct
Run test command taking the target as an argument.
@param option(text) : 
An option to passed to the test command. See the man page of the test command.
@result boolean : true if test command successfully exits.
   G �HH� ! @ a b s t r u c t 
 R u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ p a r a m   o p t i o n ( t e x t )   :   
 A n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . 
E IJI i  ),KLK I      �M�� 0 
shell_test  M N�N o      �� 
0 option  �  �  L k     OO PQP Q     RSTR I   �
U�	
�
 .sysoexecTEXT���     TEXTU b    VWV b    XYX b    Z[Z m    \\ �]] 
 t e s t  [ o    �� 
0 option  Y 1    �
� 
spacW I    ���� 0 quoted_path  �  �  �	  S R      ���
� .ascrerr ****      � ****�  �  T L    ^^ m    � 
�  boovfalsQ _��_ L    `` m    ��
�� boovtrue��  J aba l     ��������  ��  ��  b cdc l      ��ef��  e  == private *   f �gg  = =   p r i v a t e   *d hih l     ��������  ��  ��  i jkj i  -0lml I      �������� 0 	deep_copy  ��  ��  m L     nn I     ��o���� 0 make_with_pathinfo  o p��p n   qrq n   sts I    �������� 	0 clone  ��  ��  t o    ���� 0 	_pathinfo 	_pathInfor  f    ��  ��  k uvu l     ��������  ��  ��  v wxw i  14yzy I      �������� 0 item_ref  ��  ��  z L     {{ n    |}| n   ~~ I    �������� 0 item_ref  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo}  f     x ��� l     ��������  ��  ��  � ��� i  58��� I      �������� !0 check_existance_raising_error  ��  ��  � k     !�� ��� l     ������  � 4 . my_log("start check_existance_raising_error")   � ��� \   m y _ l o g ( " s t a r t   c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r " )� ���� Z     !������� H     �� l    ������ n    ��� n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     ��  ��  � R    ����
�� .ascrerr ****      � ****� b    ��� b    ��� m    �� ��� 
 i t e m  � n    ��� 1    ��
�� 
strq� l   ������ n   ��� n   ��� I    �������� 0 as_text  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  � m    �� ���     d o e s   n o t   e x i s t .� �����
�� 
errn� m    ����F��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i  9<��� I      �������� 0 update_pathinfo  ��  ��  � k     $�� ��� r     ��� n    ��� I    ������� 0 make_with_opts  � ��� n   ��� n   ��� I    �������� 0 item_ref  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    � ���� K    �� ������� 0 prefering_posix  � n   ��� n   ��� I    �������� 0 is_posix  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  ��  � o     ���� 0 pathinfo PathInfo� n     ��� o    ���� 0 	_pathinfo 	_pathInfo�  f    � ���� L    $�� n   #��� o     "���� 0 	_pathinfo 	_pathInfo�  f     ��  � ��� l     ��������  ��  ��  � ��� i  =@��� I      ������� 0 change_pathinfo  � ���� o      ���� 0 
a_pathinfo  ��  ��  � k     �� ��� r     ��� o     ���� 0 
a_pathinfo  � n     ��� o    ���� 0 	_pathinfo 	_pathInfo�  f    � ��� r    ��� m    ��
�� 
msng� n     ��� o    
���� 0 _inforecord _infoRecord�  f    � ��� r    ��� n   ��� n   ��� I    �������� 0 is_posix  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    � n     ��� o    ���� 0 _prefer_posix  �  f    � ���� L    ��  f    ��  � ��� l     ��������  ��  ��  � ��� i  AD��� I      ������� 0 
change_ref  � ���� o      ���� 0 file_ref  ��  ��  � L     �� I     ������� 0 change_pathinfo  � ���� n   ��� I    ������� 0 	make_with  � ���� o    ���� 0 file_ref  ��  ��  � o    ���� 0 pathinfo PathInfo��  ��  � ��� l     ��������  ��  ��  � ��� i  EH��� I      �������� 0 dump  ��  ��  � L     �� n    �	 � n   			 I    �������� 0 as_text  ��  ��  	 o    ���� 0 	_pathinfo 	_pathInfo	   f     � 			 l     ��������  ��  ��  	 			 l      ��		��  	 C = -- too much side effecton log	continue log dump()end log   	 �				 z   - -   t o o   m u c h   s i d e   e f f e c t  o n   l o g  	 c o n t i n u e   l o g   d u m p ( )  e n d   l o g 	 	
		
 l     ��������  ��  ��  	 			 i  IL			 I      ��~�}� 	0 debug  �~  �}  	 k     /		 			 n    				 I    	�|	�{�| 	0 setup  	 	�z	  f    �z  �{  	 4     �y	
�y 
scpt	 m    		 �		  M o d u l e L o a d e r	 			 r   
 			 c   
 			 m   
 	 	  �	!	! F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d f	 m    �x
�x 
psxf	 o      �w�w 
0 a_path  	 	"	#	" r    	$	%	$ I    �v	&�u�v 0 	make_with  	& 	'�t	' o    �s�s 
0 a_path  �t  �u  	% o      �r�r 0 a_xfile  	# 	(	)	( l   �q	*	+�q  	* K Ereturn a_result's change_path_extension(missing value)'s posix_path()   	+ �	,	, � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )	) 	-	.	- r    %	/	0	/ n   #	1	2	1 I    #�p	3�o�p 0 unique_child  	3 	4�n	4 m    	5	5 �	6	6 : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f�n  �o  	2 n   	7	8	7 I    �m�l�k�m 0 parent_folder  �l  �k  	8 o    �j�j 0 a_xfile  	0 o      �i�i 0 new_named_file  	. 	9�h	9 I  & /�g	:�f
�g .ascrcmnt****      � ****	: n  & +	;	<	; I   ' +�e�d�c�e 0 	item_name  �d  �c  	< o   & '�b�b 0 new_named_file  �f  �h  	 	=	>	= l     �a�`�_�a  �`  �_  	> 	?	@	? i  MP	A	B	A I      �^�]�\�^ 0 open_helpbook  �]  �\  	B Q     ,	C	D	E	C O   	F	G	F I   
 �[	H�Z�[ 0 do  	H 	I�Y	I I   �X	J�W
�X .earsffdralis        afdr	J  f    �W  �Y  �Z  	G 4    �V	K
�V 
scpt	K m    	L	L �	M	M  O p e n H e l p B o o k	D R      �U	N	O
�U .ascrerr ****      � ****	N o      �T�T 0 msg  	O �S	P�R
�S 
errn	P o      �Q�Q 	0 errno  �R  	E k    ,	Q	Q 	R	S	R I   "�P�O�N
�P .miscactvnull��� ��� null�O  �N  	S 	T�M	T I  # ,�L	U�K
�L .sysodisAaleR        TEXT	U l  # (	V�J�I	V b   # (	W	X	W b   # &	Y	Z	Y o   # $�H�H 0 msg  	Z o   $ %�G
�G 
ret 	X o   & '�F�F 	0 errno  �J  �I  �K  �M  	@ 	[	\	[ l     �E�D�C�E  �D  �C  	\ 	]	^	] i  QT	_	`	_ I     �B�A�@
�B .aevtoappnull  �   � ****�A  �@  	` k     	a	a 	b	c	b l     �?	d	e�?  	d  return debug()   	e �	f	f  r e t u r n   d e b u g ( )	c 	g�>	g I     �=�<�;�= 0 open_helpbook  �<  �;  �>  	^ 	h�:	h l     �9�8�7�9  �8  �7  �:       I�6	i	j	k	l	m	n 6�5	o	p	q	r	s	t	u	v	w	x	y	z	{	|	}	~		�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	��6  	i G�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
�	��������� ������������������������������������
�4 
pimr�3 0 pathinfo PathInfo�2 0 nsworkspace NSWorkspace�1 0 nsfilemanager NSFileManager�0 0 nsurl NSURL
�/ 
pnam�. 0 _prefer_posix  �- 0 prefer_posix  �, 0 	make_with  �+ 0 make_with_pathinfo  �* 0 change_name  �) 0 change_folder  �( 0 change_path_extension  �' 0 as_alias  �& 0 as_furl  �% 0 hfs_path  �$ 0 
posix_path  �# 0 normalized_posix_path  �" 0 quoted_path  �! 0 type_identifier  �  0 	is_folder  � 0 
is_package  � 0 is_alias  � 0 
is_symlink  � 0 
is_visible  � 0 	set_types  � 0 info  � 0 info_with_size  � 0 re_info  � 0 	item_name  � 0 basename  � 0 path_extension  � 0 volume_name  � 0 bundle_resource  � $0 bundle_infoplist bundle_InfoPlist� 0 bundle_resources_folder  � 0 item_exists  � 0 item_exists_without_update  
� .coredoexbool       obj � 0 	rename_to  � 0 copy_to  � 0 copy_with_opts  �
 0 finder_copy_to  �	 
0 my_log  � 0 move_to  � 0 move_with_replacing  � 0 resolve_alias  � 0 
into_trash  � 
0 remove  � 0 make_folder  � 0 	make_path  � 0 read_as_utf8  �  0 write_as_utf8  �� 0 parent_folder  �� 	0 child  �� 0 child_posix  �� 0 unique_child  �� 0 list_children  �� 0 each  �� 0 perform_shell  �� 0 
shell_test  �� 0 	deep_copy  �� 0 item_ref  �� !0 check_existance_raising_error  �� 0 update_pathinfo  �� 0 change_pathinfo  �� 0 
change_ref  �� 0 dump  �� 	0 debug  �� 0 open_helpbook  
�� .aevtoappnull  �   � ****	j ��	��� 	�  	�	�	�	�	� ��	���
�� 
cobj	� 	�	�   �� 
�� 
scpt��  	� ��	���
�� 
cobj	� 	�	�   ��
�� 
osax��  	� ��	���
�� 
cobj	� 	�	�   �� 
�� 
frmk��  	� ��	���
�� 
cobj	� 	�	�   �� 
�� 
frmk��  	k 	�	�   �� 
�� 
scpt	l 	�	� ����	�
�� misccura
�� 
pcls	� �	�	�  N S W o r k s p a c e	m 	�	� ����	�
�� misccura
�� 
pcls	� �	�	�  N S F i l e M a n a g e r	n 	�	� ����	�
�� misccura
�� 
pcls	� �	�	� 
 N S U R L
�5 boovtrue	o �� I����	�	����� 0 prefer_posix  �� ��	��� 	�  ���� 0 bool  ��  	� ���� 0 bool  	� ���� 0 _prefer_posix  �� �)�,F	p �� a����	�	����� 0 	make_with  �� ��	��� 	�  ���� 0 file_ref  ��  	� �������� 0 file_ref  �� 
0 is_hfs  �� 0 	path_info  	� 	�������� }��������
�� 
ctxt
�� 
utxt
�� 
TEXT
�� 
pcls�� 0 make_with_hfs  �� 0 _prefer_posix  �� 0 make_with_posix  �� 0 make_with_pathinfo  �� YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ 	q �� �����	�	����� 0 make_with_pathinfo  �� ��	��� 	�  ���� 0 	path_info  ��  	� �������� 0 	path_info  �� 0 a_parent  �� 0 xfile XFile	� �� �	��� 0 xfile XFile	� ��	�����	�	���
�� .ascrinit****      � ****	� k     	�	�  �	�	�  �	�	�  �	�	�  �����  ��  ��  	� ��������
�� 
pare�� 0 	_pathinfo 	_pathInfo�� 0 _inforecord _infoRecord�� 0 _prefer_posix  	� ������������
�� 
pare�� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� b  N  Ob   �O�Ob   j+ ��� )E�O��K S�O�	r �� �����	�	����� 0 change_name  �� ��	��� 	�  ���� 
0 a_name  ��  	� ������ 
0 a_name  �� 0 	path_info  	� �������� 0 	_pathinfo 	_pathInfo�� 0 change_name  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ 	s �� �����	�	����� 0 change_folder  �� ��	��� 	�  ���� 0 
folder_ref  ��  	� ������ 0 
folder_ref  �� 0 	path_info  	� �������� 0 	_pathinfo 	_pathInfo�� 0 change_folder  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ 	t ������	�	����� 0 change_path_extension  �� ��	��� 	�  ���� 0 a_suffix  ��  	� ���� 0 a_suffix  	� �������� 0 	_pathinfo 	_pathInfo�� 0 change_path_extension  �� 0 make_with_pathinfo  �� *)�,�k+ k+ 	u ��/����	�	����� 0 as_alias  ��  ��  	�  	� �������� !0 check_existance_raising_error  �� 0 	_pathinfo 	_pathInfo�� 0 as_alias  �� *j+  O)�,j+ 	v ��C��~	�	��}�� 0 as_furl  �  �~  	�  	� �|�{�| 0 	_pathinfo 	_pathInfo�{ 0 as_furl  �} 	)�,j+ 	w �zS�y�x	�	��w�z 0 hfs_path  �y  �x  	�  	� �v�u�v 0 	_pathinfo 	_pathInfo�u 0 hfs_path  �w 	)�,j+ 	x �tc�s�r	�	��q�t 0 
posix_path  �s  �r  	�  	� �p�o�p 0 	_pathinfo 	_pathInfo�o 0 
posix_path  �q 	)�,j+ 	y �ns�m�l	�	��k�n 0 normalized_posix_path  �m  �l  	�  	� �j�i�j 0 	_pathinfo 	_pathInfo�i 0 normalized_posix_path  �k 	)�,j+ 	z �h~�g�f	�	��e�h 0 quoted_path  �g  �f  	�  	� �d�c�b�d 0 	_pathinfo 	_pathInfo�c 0 
posix_path  
�b 
strq�e )�,j+ �,E	{ �a��`�_	�	��^�a 0 type_identifier  �`  �_  	�  	� �]�\�[�Z�Y�] "0 sharedworkspace sharedWorkspace�\ 0 
posix_path  
�[ 
msng�Z &0 typeoffile_error_ typeOfFile_error_
�Y 
ctxt�^ b  j+   *)j+ �l+ �&U	| �X��W�V	�	��U�X 0 	is_folder  �W  �V  	� �T�S�T 
0 my_uti  �S 0 a_result  	� �R�Q���P�R 0 type_identifier  �Q "0 sharedworkspace sharedWorkspace�P ,0 type_conformstotype_ type_conformsToType_�U 0*j+  E�Ob  j+  ��  eE�Y *��l+ E�UO�OP	} �O��N�M	�	��L�O 0 
is_package  �N  �M  	�  	� �K�J�I�K "0 sharedworkspace sharedWorkspace�J 0 
posix_path  �I ,0 isfilepackageatpath_ isFilePackageAtPath_�L b  j+   *)j+ k+ OPU	~ �H�G�F	�	��E�H 0 is_alias  �G  �F  	�  	� �D�D 0 type_identifier  �E 	�*j+  	 �C�B�A	�	��@�C 0 
is_symlink  �B  �A  	�  	� �?�? 0 type_identifier  �@ 	�*j+  	� �>$�=�<	�	��;�> 0 
is_visible  �=  �<  	� �:�: 0 info_rec  	� �9�8�9 0 info  
�8 
pvis�; *j+  E�O��,E	� �78�6�5	�	��4�7 0 	set_types  �6 �3	��3 	�  �2�1�2 0 creator_code  �1 0 	type_code  �5  	� �0�/�.�0 0 creator_code  �/ 0 	type_code  �. 
0 a_file  	� �-�,\�+�*�)�(�- 0 	is_folder  �, 0 as_alias  
�+ 
fcrt
�* 
asty
�) 
msng�( 0 _inforecord _infoRecord�4 ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h	� �'l�&�%	�	��$�' 0 info  �&  �%  	�  	� �#�"�!� ���# 0 _inforecord _infoRecord
�" 
msng�! !0 check_existance_raising_error  �  0 as_furl  
� 
ptsz
� .sysonfo4asfe        file�$ ()�,�  *j+ O*j+ �fl )�,FY hO)�,E	� ����	�	��� 0 info_with_size  �  �  	�  	� ������� 0 _inforecord _infoRecord
� 
msng� !0 check_existance_raising_error  � 0 as_furl  
� 
ptsz
� .sysonfo4asfe        file� D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,E	� ����	�
 �� 0 re_info  �  �  	�  
  ������
� 0 _inforecord _infoRecord
� 
msng
� 
ptsz
� 
bool� 0 as_furl  
�
 .sysonfo4asfe        file� <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,E	� �	���

��	 0 	item_name  �  �  
  
 ��� 0 	_pathinfo 	_pathInfo� 0 	item_name  � 	)�,j+ 	� ���

� � 0 basename  �  �  
  
 ������ 0 	_pathinfo 	_pathInfo�� 0 basename  �  	)�,j+ 	� ������

���� 0 path_extension  ��  ��  
  
 ������ 0 	_pathinfo 	_pathInfo�� 0 path_extension  �� 	)�,j+ 	� ��,����

���� 0 volume_name  ��  ��  
  
 ������ 0 	_pathinfo 	_pathInfo�� 0 volume_name  �� 	)�,j+ 	� ��C����
	

���� 0 bundle_resource  �� ��
�� 
  ���� 0 resource_name  ��  
	 ���� 0 resource_name  

 ��������
�� 
in B�� 0 as_alias  
�� .sysorpthalis        TEXT�� 0 	make_with  �� *��*j+ l k+ 	� ��W����

���� $0 bundle_infoplist bundle_InfoPlist��  ��  
  
 [���� 0 child_posix  �� *�k+ 	� ��b����

���� 0 bundle_resources_folder  ��  ��  
  
 f���� 0 child_posix  �� *�k+ 	� ��y����

���� 0 item_exists  ��  ��  
  
 ������ 0 	_pathinfo 	_pathInfo�� 0 item_exists  �� 	)�,j+ 	� �������

���� 0 item_exists_without_update  ��  ��  
  
 ������ 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  �� 	)�,j+ 	� �������

��
�� .coredoexbool       obj ��  ��  
  
 ���� 0 item_exists  �� *j+  	� �������

���� 0 	rename_to  �� ��
�� 
  ���� 0 new_name  ��  
 �������� 0 new_name  �� 0 dest  �� 0 a_result  
 ���������������� 0 	_pathinfo 	_pathInfo�� 0 change_name  ��  0 defaultmanager defaultManager�� 0 
posix_path  
�� 
msng�� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_�� 0 _inforecord _infoRecord�� D)�,�k+ E�Ob  j+  *)�,j+ �j+ �m+ E�UO� �)�,FO�)�,FY hO�	� �������

���� 0 copy_to  �� ��
�� 
  ���� 0 a_destination  ��  
 ���� 0 a_destination  
 ����
�� 
msng�� 0 copy_with_opts  �� 	*��l+ 	� �������

���� 0 copy_with_opts  �� ��
�� 
  ������ 0 a_destination  �� 0 opts  ��  
 ������������������������ 0 a_destination  �� 0 opts  �� 0 w_replacing  �� 0 w_admin  �� 0 
w_removing  �� 0 command  �� 0 com_opts  �� 0 is_folder_to  �� 0 destination_path  �� 0 source_path  �� 0 	a_command  
 )����������������X����������y�����������������������
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
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�	� �������

 ���� 0 finder_copy_to  �� ��
!�� 
!  ������ 0 a_destination  �� 0 with_replacing  ��  
 ����������� 0 a_destination  �� 0 with_replacing  �� 0 destination  �� 0 source_alias  � 0 new_item  
  �~�}�|�{�z�y�x�~ 0 as_alias  
�} 
insh
�| 
alrp�{ 
�z .coreclon****      � ****
�y 
alis�x 0 	make_with  �� +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ 	� �w�v�u
"
#�t�w 
0 my_log  �v �s
$�s 
$  �r�r 
0 a_text  �u  
" �q�q 
0 a_text  
# �p�o
�p 
ascr
�o .ascrcmnt****      � ****�t � �j U	� �n!�m�l
%
&�k�n 0 move_to  �m �j
'�j 
'  �i�i 0 a_destination  �l  
% �h�g�h 0 a_destination  �g 0 a_result  
& �f�e�d�c�b�a�`�_�^�]�\�f 0 item_exists  �e 0 	is_folder  �d 0 	item_name  �c 	0 child  �b  0 defaultmanager defaultManager�a 0 	_pathinfo 	_pathInfo�` 0 
posix_path  
�_ 
msng�^ <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_�] 0 item_ref  �\ 0 
change_ref  �k d*j+  O�j+   �j+  �*j+ k+ E�Y fY hOb  j+  *)�,j+ �j+ �m+ E�UO� *�j+ 	k+ 
Y hO�	� �[q�Z�Y
(
)�X�[ 0 move_with_replacing  �Z �W
*�W 
*  �V�V 0 a_destination  �Y  
( �U�T�S�R�Q�U 0 a_destination  �T 0 escaped_item  �S 
0 uchild  �R 0 a_result  �Q 0 s_destination  
) �P�O�N�M�L�K�J�I��H�G
�P 
msng�O 0 item_exists_without_update  �N 0 	is_folder  �M 0 	deep_copy  �L 0 parent_folder  �K 0 	item_name  �J 0 unique_child  �I 0 move_to  
�H .ascrcmnt****      � ****�G 
0 remove  �X ��E�O�j+  F�j+  9�j+  -*E�O*j+ �j+ k+ E�O*�k+  �j 	OfY hUY hY hO*�k+ E�O� �� 
�j+ 
Y hY �� ��k+ Y hO�	� �F��E�D
+
,�C�F 0 resolve_alias  �E  �D  
+ �B�A�B 0 
x_original  �A 0 original_url  
, �@�?�>�=�<�;�:�9�8�7�6�@ 0 
is_symlink  �? 0 	deep_copy  �> 0 item_exists  
�= 
msng�< 0 is_alias  �; 0 	_pathinfo 	_pathInfo�: 0 as_nsurl as_NSURL�9 Z0 +urlbyresolvingaliasfileaturl_options_error_ +URLByResolvingAliasFileAtURL_options_error_�8 0 path  
�7 
ctxt�6 0 	make_with  �C d*j+   *j+ E�O�j+  �Y �Y hO*j+  )Y hOb  )�,j+ j�m+ E�O��  �Y hO*�j+ �&k+ 
	� �5�4�3
-
.�2�5 0 
into_trash  �4  �3  
-  
. 	�1�0�/�.�-�,�+�*�)�1 "0 sharedworkspace sharedWorkspace�0 0 	_pathinfo 	_pathInfo�/ 0 as_nsurl as_NSURL
�. 
msng�- @0 recycleurls_completionhandler_ recycleURLs_completionHandler_
�, afdmtrsh
�+ .earsffdralis        afdr�* 0 change_folder  �) 0 change_pathinfo  �2 -b  j+   *)�,j+ �l+ UO*)�,�j k+ k+ 	� �(E�'�&
/
0�%�( 
0 remove  �'  �&  
/ �$�#�$ 
0 a_path  �# 0 a_result  
0 �"�!� ������" 0 	_pathinfo 	_pathInfo�! 0 as_text  �   0 defaultmanager defaultManager� 0 
posix_path  
� 
msng� 20 removeitematpath_error_ removeItemAtPath_error_� 0 	_item_ref  � 0 _inforecord _infoRecord�% >)�,j+ E�Ob  j+  *)j+ �l+ E�UO� �)�,�,FO�)�,FY hO�	� ����
1
2�� 0 make_folder  � �
3� 
3  �� 0 folder_name  �  
1 ��� 0 folder_name  � 0 
new_folder  
2 ����� 0 item_exists  
� 
msng� 	0 child  � 0 	make_path  � "*j+   �Y hO*�k+ E�O�jvk+ 	� ����
4
5�� 0 	make_path  � �

6�
 
6  �	�	 0 opts  �  
4 ��� 0 opts  � 0 w_admin  
5 �������� ������
� 
pcls
� 
reco� 0 
with_admin  � 0 item_exists  � 0 	is_folder  
� 
msng�  0 
posix_path  
�� 
strq
�� 
badm
�� .sysoexecTEXT���     TEXT� SfE�O��,�  
��,E�Y hO*j+  *j+  )Y �Y hO�*j+ �,%�l 
O*j+  )Y hO�	� �������
7
8���� 0 read_as_utf8  ��  ��  
7  
8 ������������ !0 check_existance_raising_error  �� 0 as_alias  
�� 
as  
�� 
utf8
�� .rdwrread****        ****�� *j+  O*j+ ��l 	� �������
9
:���� 0 write_as_utf8  �� ��
;�� 
;  ���� 
0 a_data  ��  
9 ������ 
0 a_data  �� 
0 output  
: ������������������������ 0 as_furl  
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
	� ��)����
<
=���� 0 parent_folder  ��  ��  
<  
= �������� 0 	_pathinfo 	_pathInfo�� 0 parent_folder  �� 0 make_with_pathinfo  �� *)�,j+ k+ 	� ��;����
>
?���� 	0 child  �� ��
@�� 
@  ���� 0 subpath  ��  
> ���� 0 subpath  
? ������������ 0 item_exists_without_update  �� 0 	_pathinfo 	_pathInfo�� 	0 child  �� 0 make_with_pathinfo  
�� 
msng�� *j+   *)�,�k+ k+ Y �	� ��P����
A
B���� 0 child_posix  �� ��
C�� 
C  ���� 0 subpath  ��  
A ������ 0 subpath  �� 
0 a_path  
B ���������� 0 item_exists  �� 0 
posix_path  �� 0 	make_with  
�� 
msng�� #*j+   *j+ E�O��%E�O*�k+ Y �	� ��r����
D
E���� 0 unique_child  �� ��
F�� 
F  ���� 0 a_candidate  ��  
D �������������� 0 a_candidate  �� 0 
a_basename  �� 0 a_suffix  �� 0 i  �� 0 escape_suffix  �� 0 a_child  
E ��������������������� 0 	is_folder  
�� 
msng�� 0 
split_name  
�� 
cobj�� 	0 child  �� 0 item_exists  
�� 
spac
�� 
utxt�� x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�	� �������
G
H���� 0 list_children  ��  ��  
G  
H ������ 0 as_furl  
�� .earslfdrutxt  @    file�� *j+  j 	� �������
I
J���� 0 each  �� ��
K�� 
K  ���� 0 a_script  ��  
I ������������ 0 a_script  �� 
0 a_list  �� 0 listwrapper ListWrapper�� 0 n  �� 
0 x_item  
J 	�����
L������������ 0 list_children  �� 0 listwrapper ListWrapper
L ��
M����
N
O��
�� .ascrinit****      � ****
M k     
P
P �����  ��  ��  
N ��
�� 
pcnt
O ��
�� 
pcnt�� b  �
�� .corecnte****       ****
�� 
pcnt
�� 
cobj�� 	0 child  �� 0 do  �� A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��	� ��%����
Q
R���� 0 perform_shell  �� ��
S�� 
S  ���� 0 	a_command  ��  
Q ������ 0 	a_command  �� 
0 a_path  
R ����<��@���� 0 normalized_posix_path  
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� *j+  �,�,E�O��,%�%�%�%j 	� ��L����
T
U��� 0 
shell_test  �� �~
V�~ 
V  �}�} 
0 option  ��  
T �|�| 
0 option  
U \�{�z�y�x�w
�{ 
spac�z 0 quoted_path  
�y .sysoexecTEXT���     TEXT�x  �w  �   �%�%*j+ %j W 	X  fOe	� �vm�u�t
W
X�s�v 0 	deep_copy  �u  �t  
W  
X �r�q�p�r 0 	_pathinfo 	_pathInfo�q 	0 clone  �p 0 make_with_pathinfo  �s *)�,j+ k+ 	� �oz�n�m
Y
Z�l�o 0 item_ref  �n  �m  
Y  
Z �k�j�k 0 	_pathinfo 	_pathInfo�j 0 item_ref  �l 	)�,j+ 	� �i��h�g
[
\�f�i !0 check_existance_raising_error  �h  �g  
[  
\ �e�d�c�b��a�`��e 0 	_pathinfo 	_pathInfo�d 0 item_exists_without_update  
�c 
errn�bF�a 0 as_text  
�` 
strq�f ")�,j+  )��l�)�,j+ �,%�%Y h	� �_��^�]
]
^�\�_ 0 update_pathinfo  �^  �]  
]  
^ �[�Z�Y�X�W�[ 0 	_pathinfo 	_pathInfo�Z 0 item_ref  �Y 0 prefering_posix  �X 0 is_posix  �W 0 make_with_opts  �\ %b  )�,j+ �)�,j+ ll+ )�,FO)�,E	� �V��U�T
_
`�S�V 0 change_pathinfo  �U �R
a�R 
a  �Q�Q 0 
a_pathinfo  �T  
_ �P�P 0 
a_pathinfo  
` �O�N�M�L�K�O 0 	_pathinfo 	_pathInfo
�N 
msng�M 0 _inforecord _infoRecord�L 0 is_posix  �K 0 _prefer_posix  �S �)�,FO�)�,FO)�,j+ )�,FO)	� �J��I�H
b
c�G�J 0 
change_ref  �I �F
d�F 
d  �E�E 0 file_ref  �H  
b �D�D 0 file_ref  
c �C�B�C 0 	make_with  �B 0 change_pathinfo  �G *b  �k+  k+ 	� �A��@�?
e
f�>�A 0 dump  �@  �?  
e  
f �=�<�= 0 	_pathinfo 	_pathInfo�< 0 as_text  �> 	)�,j+ 	� �;	�:�9
g
h�8�; 	0 debug  �:  �9  
g �7�6�5�7 
0 a_path  �6 0 a_xfile  �5 0 new_named_file  
h �4	�3	 �2�1�0	5�/�.�-
�4 
scpt�3 	0 setup  
�2 
psxf�1 0 	make_with  �0 0 parent_folder  �/ 0 unique_child  �. 0 	item_name  
�- .ascrcmnt****      � ****�8 0)��/)k+ O��&E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
	� �,	B�+�*
i
j�)�, 0 open_helpbook  �+  �*  
i �(�'�( 0 msg  �' 	0 errno  
j 	�&	L�%�$�#
k�"�!� 
�& 
scpt
�% .earsffdralis        afdr�$ 0 do  �# 0 msg  
k ���
� 
errn� 	0 errno  �  
�" .miscactvnull��� ��� null
�! 
ret 
�  .sysodisAaleR        TEXT�) - )��/ *)j k+ UW X  *j O��%�%j 	� �	`��
l
m�
� .aevtoappnull  �   � ****�  �  
l  
m �� 0 open_helpbook  � *j+   ascr  ��ޭ