FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007-2020 Kurita Tetsuro

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	    C o p y r i g h t   ( C )   2 0 0 7 - 2 0 2 0   K u r i t a   T e t s u r o 
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
 x     ��  �� 0 pathinfo PathInfo  4    �� 
�� 
scpt  m       �    P a t h I n f o  �� ��
�� 
minv  m         �   
 1 . 3 . 1��        x     �� ����    2   ��
�� 
osax��        x     -�� ����    4   " &�� 
�� 
frmk  m   $ %   �    F o u n d a t i o n��        x   - :�� ����    4   / 3��  
�� 
frmk   m   1 2 ! ! � " "  A p p K i t��     # $ # j   : @�� %�� 0 nsworkspace NSWorkspace % 4   : ?�� &
�� 
pcls & m   < = ' ' � ( (  N S W o r k s p a c e $  ) * ) j   A G�� +�� 0 nsfilemanager NSFileManager + 4   A F�� ,
�� 
pcls , m   C D - - � . .  N S F i l e M a n a g e r *  / 0 / j   H P�� 1�� 0 nsurl NSURL 1 4   H O�� 2
�� 
pcls 2 m   J M 3 3 � 4 4 
 N S U R L 0  5 6 5 l     ��������  ��  ��   6  7 8 7 j   Q U�� 9
�� 
pnam 9 m   Q T : : � ; ; 
 X F i l e 8  < = < l     ��������  ��  ��   =  > ? > l      �� @ A��   @	5	/!@references
PathInfo || help:openbook='net.script-factory.PathInfo.help'
Home page || http://www.script-factory.net/XModules/XFile/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XFile/changelog.html
Repository || https://github.com/tkurita/XFile.scptd

@title XFile Reference
* Version : 1.8.4
* Author : Kurita Tetsuro ((<scriptfactory@mac.com>))
* Requirements : OS X 10.9 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

XFile provides unified object oriented interface to file operation (moving, removing, geting attributes and so on).
Functions of file operations of AppleScript world is given by Scripting Additions, Finder, System Events, shell commnads, AppleScriptObjC. 
It is cumbersome to find a proper way, because implemeted locations of functions are distributed.
XFile wraps these components and introduces a file object for unified object oriented interface.

== Example
@example
use XFile : script "XFile"
use scripting additions

(* Make a New Instance *)
set a_xfile to XFile's make_with("/Users")
set home_folder to XFile's make_with(path to home folder)

(* Obtain File Infomation *)
log a_xfile's type_identifier() -- "public.folder"
log a_xfile's is_folder() -- true
log a_xfile's is_package() -- false
log a_xfile's item_name() -- "Users"

(* Obtain Parent and Child *)
log home_folder's parent_folder()'s posix_path()
-- "/Users"
log home_folder's child("Documents")'s posix_path()
-- "/Users/yourhome/Documents"
log home_folder's child("Library/Scripts")'s posix_path()
-- "/Users/yourhome/Library/Scripts"
log home_folder's unique_child("Documents")'s posix_path()
--"/Users/yourhome/Documents 2"

(* Read and Write *)
set test_file to home_folder's child("testfile")
test_file's write_as_utf8("new data")
log test_file's read_as_utf8() -- "new data"

(* File Manipulations *)
log test_file's item_exists() --true

set test_file2 to test_file's copy_to(home_folder's child("testfile2"))
log test_file2's posix_path() -- "/Users/yourhome/testfile2"

test_file2's move_to(home_folder's child("Documents"))
log test_file2's posix_path() -- "/Users/yourhome/Documents/testfile2"

test_file2's into_trash()
log test_file2's posix_path() -- "/Users/yourhome/.Trash/testfile2"
test_file's into_trash()

(* Working with Shell Commands *)
log test_file's perform_shell("cat %s") -- "new data"

    A � B B^ ! @ r e f e r e n c e s 
 P a t h I n f o   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . P a t h I n f o . h e l p ' 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X F i l e / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X F i l e / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X F i l e . s c p t d 
 
 @ t i t l e   X F i l e   R e f e r e n c e 
 *   V e r s i o n   :   1 . 8 . 4 
 *   A u t h o r   :   K u r i t a   T e t s u r o   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   O S   X   1 0 . 9   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
 
 X F i l e   p r o v i d e s   u n i f i e d   o b j e c t   o r i e n t e d   i n t e r f a c e   t o   f i l e   o p e r a t i o n   ( m o v i n g ,   r e m o v i n g ,   g e t i n g   a t t r i b u t e s   a n d   s o   o n ) . 
 F u n c t i o n s   o f   f i l e   o p e r a t i o n s   o f   A p p l e S c r i p t   w o r l d   i s   g i v e n   b y   S c r i p t i n g   A d d i t i o n s ,   F i n d e r ,   S y s t e m   E v e n t s ,   s h e l l   c o m m n a d s ,   A p p l e S c r i p t O b j C .   
 I t   i s   c u m b e r s o m e   t o   f i n d   a   p r o p e r   w a y ,   b e c a u s e   i m p l e m e t e d   l o c a t i o n s   o f   f u n c t i o n s   a r e   d i s t r i b u t e d . 
 X F i l e   w r a p s   t h e s e   c o m p o n e n t s   a n d   i n t r o d u c e s   a   f i l e   o b j e c t   f o r   u n i f i e d   o b j e c t   o r i e n t e d   i n t e r f a c e . 
 
 = =   E x a m p l e 
 @ e x a m p l e 
 u s e   X F i l e   :   s c r i p t   " X F i l e " 
 u s e   s c r i p t i n g   a d d i t i o n s 
 
 ( *   M a k e   a   N e w   I n s t a n c e   * ) 
 s e t   a _ x f i l e   t o   X F i l e ' s   m a k e _ w i t h ( " / U s e r s " ) 
 s e t   h o m e _ f o l d e r   t o   X F i l e ' s   m a k e _ w i t h ( p a t h   t o   h o m e   f o l d e r ) 
 
 ( *   O b t a i n   F i l e   I n f o m a t i o n   * ) 
 l o g   a _ x f i l e ' s   t y p e _ i d e n t i f i e r ( )   - -   " p u b l i c . f o l d e r " 
 l o g   a _ x f i l e ' s   i s _ f o l d e r ( )   - -   t r u e 
 l o g   a _ x f i l e ' s   i s _ p a c k a g e ( )   - -   f a l s e 
 l o g   a _ x f i l e ' s   i t e m _ n a m e ( )   - -   " U s e r s " 
 
 ( *   O b t a i n   P a r e n t   a n d   C h i l d   * ) 
 l o g   h o m e _ f o l d e r ' s   p a r e n t _ f o l d e r ( ) ' s   p o s i x _ p a t h ( ) 
 - -   " / U s e r s " 
 l o g   h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( ) 
 - -   " / U s e r s / y o u r h o m e / D o c u m e n t s " 
 l o g   h o m e _ f o l d e r ' s   c h i l d ( " L i b r a r y / S c r i p t s " ) ' s   p o s i x _ p a t h ( ) 
 - -   " / U s e r s / y o u r h o m e / L i b r a r y / S c r i p t s " 
 l o g   h o m e _ f o l d e r ' s   u n i q u e _ c h i l d ( " D o c u m e n t s " ) ' s   p o s i x _ p a t h ( ) 
 - - " / U s e r s / y o u r h o m e / D o c u m e n t s   2 " 
 
 ( *   R e a d   a n d   W r i t e   * ) 
 s e t   t e s t _ f i l e   t o   h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e " ) 
 t e s t _ f i l e ' s   w r i t e _ a s _ u t f 8 ( " n e w   d a t a " ) 
 l o g   t e s t _ f i l e ' s   r e a d _ a s _ u t f 8 ( )   - -   " n e w   d a t a " 
 
 ( *   F i l e   M a n i p u l a t i o n s   * ) 
 l o g   t e s t _ f i l e ' s   i t e m _ e x i s t s ( )   - - t r u e 
 
 s e t   t e s t _ f i l e 2   t o   t e s t _ f i l e ' s   c o p y _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " t e s t f i l e 2 " ) ) 
 l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / t e s t f i l e 2 " 
 
 t e s t _ f i l e 2 ' s   m o v e _ t o ( h o m e _ f o l d e r ' s   c h i l d ( " D o c u m e n t s " ) ) 
 l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / D o c u m e n t s / t e s t f i l e 2 " 
 
 t e s t _ f i l e 2 ' s   i n t o _ t r a s h ( ) 
 l o g   t e s t _ f i l e 2 ' s   p o s i x _ p a t h ( )   - -   " / U s e r s / y o u r h o m e / . T r a s h / t e s t f i l e 2 " 
 t e s t _ f i l e ' s   i n t o _ t r a s h ( ) 
 
 ( *   W o r k i n g   w i t h   S h e l l   C o m m a n d s   * ) 
 l o g   t e s t _ f i l e ' s   p e r f o r m _ s h e l l ( " c a t   % s " )   - -   " n e w   d a t a " 
 
 ?  C D C l     ��������  ��  ��   D  E F E j   V X�� G�� 0 _prefer_posix   G m   V W��
�� boovtrue F  H I H l     ��������  ��  ��   I  J K J i   Y \ L M L I      �� N���� 0 prefer_posix   N  O�� O o      ���� 0 bool  ��  ��   M r      P Q P o     ���� 0 bool   Q n      R S R o    ���� 0 _prefer_posix   S  f     K  T U T l     ��������  ��  ��   U  V W V l      �� X Y��   X c ]!@group Constractors
Making a new instance with a reference to a file from the class object.
    Y � Z Z � ! @ g r o u p   C o n s t r a c t o r s 
 M a k i n g   a   n e w   i n s t a n c e   w i t h   a   r e f e r e n c e   t o   a   f i l e   f r o m   t h e   c l a s s   o b j e c t . 
 W  [ \ [ l     ��������  ��  ��   \  ] ^ ] l      �� _ `��   _!@abstruct 
Make a XFile instance with a file reference
@description
HFS/POSIX path, alias and file URL can be accepted as file specification.
@param file_ref (alias or Unicode text) : a HFS/POSIX path, alias or File URL
@result script object : a new instance of XFile
    ` � a a ! @ a b s t r u c t   
 M a k e   a   X F i l e   i n s t a n c e   w i t h   a   f i l e   r e f e r e n c e 
 @ d e s c r i p t i o n 
 H F S / P O S I X   p a t h ,   a l i a s   a n d   f i l e   U R L   c a n   b e   a c c e p t e d   a s   f i l e   s p e c i f i c a t i o n . 
 @ p a r a m   f i l e _ r e f   ( a l i a s   o r   U n i c o d e   t e x t )   :   a   H F S / P O S I X   p a t h ,   a l i a s   o r   F i l e   U R L 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e 
 ^  b c b i   ] ` d e d I      �� f���� 0 	make_with   f  g�� g o      ���� 0 file_ref  ��  ��   e k     X h h  i j i r      k l k m     ��
�� boovfals l o      ���� 
0 is_hfs   j  m n m Z     o p���� o E    q r q J    	 s s  t u t m    ��
�� 
ctxt u  v w v m    ��
�� 
utxt w  x�� x m    ��
�� 
TEXT��   r n   	  y z y m   
 ��
�� 
pcls z o   	 
���� 0 file_ref   p r     { | { l    }���� } H     ~ ~ C      �  o    ���� 0 file_ref   � m     � � � � �  /��  ��   | o      ���� 
0 is_hfs  ��  ��   n  � � � Z    P � � � � � o    ���� 
0 is_hfs   � r    + � � � n   ) � � � I   $ )�� ����� 0 make_with_hfs   �  ��� � o   $ %���� 0 file_ref  ��  ��   � o    $���� 0 pathinfo PathInfo � o      ���� 0 	path_info   �  � � � n  . 2 � � � o   / 1���� 0 _prefer_posix   �  f   . / �  ��� � r   5 A � � � n  5 ? � � � I   : ?�� ����� 0 make_with_posix   �  ��� � o   : ;���� 0 file_ref  ��  ��   � o   5 :���� 0 pathinfo PathInfo � o      ���� 0 	path_info  ��   � r   D P � � � n  D N � � � I   I N�� ����� 0 make_with_hfs   �  ��� � o   I J���� 0 file_ref  ��  ��   � o   D I���� 0 pathinfo PathInfo � o      ���� 0 	path_info   �  � � � l  Q Q��������  ��  ��   �  ��� � L   Q X � � I   Q W�� ����� 0 make_with_pathinfo   �  ��� � o   R S���� 0 	path_info  ��  ��  ��   c  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstruct
Make a new instance with a ((<PathInfo>)) instance.
@param path_info (script) : a ((<PathInfo>)) instance.
@result script object : a new instance of XFile
     � � � �N ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w i t h   a   ( ( < P a t h I n f o > ) )   i n s t a n c e . 
 @ p a r a m   p a t h _ i n f o   ( s c r i p t )   :   a   ( ( < P a t h I n f o > ) )   i n s t a n c e . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e 
   �  � � � i   a d � � � I      �� ����� 0 make_with_pathinfo   �  ��� � o      ���� 0 	path_info  ��  ��   � k      � �  � � � r      � � �  f      � o      ���� 0 a_parent   �  � � � h    �� ��� 0 xfile XFile � k       � �  � � � j     �� �
�� 
pare � o     ���� 0 a_parent   �  � � � j   	 �� ��� 0 	_pathinfo 	_pathInfo � o   	 ���� 0 	path_info   �  � � � j    �� ��� 0 _inforecord _infoRecord � m    ��
�� 
msng �  ��� � j    �� ��� 0 _prefer_posix   � n    � � � I    �������� 0 is_posix  ��  ��   � o    ���� 0 	path_info  ��   �  ��� � L     � � o    ���� 0 xfile XFile��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      � � ��   � � �!@group Make a New Instance with Changing Contents of an Instance

Making a new XFile instance with changing a part of the exisiting instance.
    � � � � ! @ g r o u p   M a k e   a   N e w   I n s t a n c e   w i t h   C h a n g i n g   C o n t e n t s   o f   a n   I n s t a n c e 
 
 M a k i n g   a   n e w   X F i l e   i n s t a n c e   w i t h   c h a n g i n g   a   p a r t   o f   t h e   e x i s i t i n g   i n s t a n c e . 
 �  � � � l     �~�}�|�~  �}  �|   �  � � � l      �{ � ��{   � � �!@abstruct
Make a new instance with changing file name of the instance
@param a_name (Unicode text or string) : a file name
@result script object : a new instance of XFile
    � � � �X ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f i l e   n a m e   o f   t h e   i n s t a n c e 
 @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :   a   f i l e   n a m e 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e 
 �  � � � i   e h � � � I      �z ��y�z 0 change_name   �  ��x � o      �w�w 
0 a_name  �x  �y   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �v ��u�v 0 change_name   �  ��t � o    �s�s 
0 a_name  �t  �u   � o    �r�r 0 	_pathinfo 	_pathInfo �  f      � o      �q�q 0 	path_info   �  ��p � L     � � I    �o ��n�o 0 make_with_pathinfo   �  ��m � o    �l�l 0 	path_info  �m  �n  �p   �  � � � l     �k�j�i�k  �j  �i   �  � � � l      �h � ��h   � � �!@abstruct
Make a new instance with changing folder of the instance
@param a_name (alias, Unicode text, file URL, file specification) : a reference to folder
@result script object : a new instance of XFile
    � � � �� ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f o l d e r   o f   t h e   i n s t a n c e 
 @ p a r a m   a _ n a m e   ( a l i a s ,   U n i c o d e   t e x t ,   f i l e   U R L ,   f i l e   s p e c i f i c a t i o n )   :   a   r e f e r e n c e   t o   f o l d e r 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e 
 �  � � � i   i l � � � I      �g ��f�g 0 change_folder   �  ��e � o      �d�d 0 
folder_ref  �e  �f   � k      � �  � � � r     
   n     n    I    �c�b�c 0 change_folder   �a o    �`�` 0 
folder_ref  �a  �b   o    �_�_ 0 	_pathinfo 	_pathInfo  f      o      �^�^ 0 	path_info   � �] L    		 I    �\
�[�\ 0 make_with_pathinfo  
 �Z o    �Y�Y 0 	path_info  �Z  �[  �]   �  l     �X�W�V�X  �W  �V    l      �U�U   � �!@abstruct
Make a new instance with changing path extension of the instance
@param a_name (Unicode text or string) :a path extension, should not start with a dot ".".
<!-- end locale -->
@result script object : a new instance of XFile
    �� ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   p a t h   e x t e n s i o n   o f   t h e   i n s t a n c e 
 @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   : a   p a t h   e x t e n s i o n ,   s h o u l d   n o t   s t a r t   w i t h   a   d o t   " . " . 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e 
  i   m p I      �T�S�T 0 change_path_extension   �R o      �Q�Q 0 a_suffix  �R  �S   L      I     �P�O�P 0 make_with_pathinfo   �N n   	 n   	 I    	�M �L�M 0 change_path_extension    !�K! o    �J�J 0 a_suffix  �K  �L   o    �I�I 0 	_pathinfo 	_pathInfo  f    �N  �O   "#" l     �H�G�F�H  �G  �F  # $%$ l      �E&'�E  & p j!@group Getting a File Reference form an Instance

Obtain a reference to a file which XFile reference to.
   ' �(( � ! @ g r o u p   G e t t i n g   a   F i l e   R e f e r e n c e   f o r m   a n   I n s t a n c e 
 
 O b t a i n   a   r e f e r e n c e   t o   a   f i l e   w h i c h   X F i l e   r e f e r e n c e   t o . 
% )*) l     �D�C�B�D  �C  �B  * +,+ l      �A-.�A  - � �!@abstruct
Obtain a reference to a file as alias class
@description
An error raise, If a file or a folder does not exists.
@result alias
   . �// ! @ a b s t r u c t 
 O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   a l i a s   c l a s s 
 @ d e s c r i p t i o n 
 A n   e r r o r   r a i s e ,   I f   a   f i l e   o r   a   f o l d e r   d o e s   n o t   e x i s t s . 
 @ r e s u l t   a l i a s 
, 010 i   q t232 I      �@�?�>�@ 0 as_alias  �?  �>  3 k     44 565 I     �=�<�;�= !0 check_existance_raising_error  �<  �;  6 7�:7 L    88 n   9:9 n   ;<; I   	 �9�8�7�9 0 as_alias  �8  �7  < o    	�6�6 0 	_pathinfo 	_pathInfo:  f    �:  1 =>= l     �5�4�3�5  �4  �3  > ?@? l      �2AB�2  A Q K!@abstruct
Obtain a reference to a file as File URL class
@result File URL
   B �CC � ! @ a b s t r u c t 
 O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   F i l e   U R L   c l a s s 
 @ r e s u l t   F i l e   U R L 
@ DED i   u xFGF I      �1�0�/�1 0 as_furl  �0  �/  G L     HH n    IJI n   KLK I    �.�-�,�. 0 as_furl  �-  �,  L o    �+�+ 0 	_pathinfo 	_pathInfoJ  f     E MNM l     �*�)�(�*  �)  �(  N OPO l      �'QR�'  Q / )!@abstruct 
Obtain HFS path
@result text
   R �SS R ! @ a b s t r u c t   
 O b t a i n   H F S   p a t h 
 @ r e s u l t   t e x t 
P TUT i   y |VWV I      �&�%�$�& 0 hfs_path  �%  �$  W L     XX n    YZY n   [\[ I    �#�"�!�# 0 hfs_path  �"  �!  \ o    � �  0 	_pathinfo 	_pathInfoZ  f     U ]^] l     ����  �  �  ^ _`_ l      �ab�  a 1 +!@abstruct 
Obtain POSIX path
@result text
   b �cc V ! @ a b s t r u c t   
 O b t a i n   P O S I X   p a t h 
 @ r e s u l t   t e x t 
` ded i   } �fgf I      ���� 0 
posix_path  �  �  g L     hh n    iji n   klk I    ���� 0 
posix_path  �  �  l o    �� 0 	_pathinfo 	_pathInfoj  f     e mnm l     ����  �  �  n opo l      �qr�  q M G!@abstruct
Obtain POSIX path which does not end with "/".
@result text
   r �ss � ! @ a b s t r u c t 
 O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 @ r e s u l t   t e x t 
p tut i   � �vwv I      ���� 0 normalized_posix_path  �  �  w L     xx n    yzy n   {|{ I    ���� 0 normalized_posix_path  �  �  | o    �
�
 0 	_pathinfo 	_pathInfoz  f     u }~} l     �	���	  �  �  ~ � i   � ���� I      ���� 0 quoted_path  �  �  � L     �� n    
��� n   	��� 1    	�
� 
strq� n   ��� I    ��� � 0 
posix_path  �  �   � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ������  � &  !@group Working with Attributes    � ��� @ ! @ g r o u p   W o r k i n g   w i t h   A t t r i b u t e s  � ��� l     ��������  ��  ��  � ��� l      ������  � P J!@abstruct
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
� ��� i   � ���� I      �������� 0 	is_folder  ��  ��  � k     2�� ��� r     ��� I     �������� 0 type_identifier  ��  ��  � o      ���� 
0 my_uti  � ��� O    -��� Z    ,������ E   ��� J    �� ��� m    �� ���  p u b l i c . f o l d e r� ���� m    �� ���  p u b l i c . v o l u m e��  � o    ���� 
0 my_uti  � r     ��� m    ��
�� boovtrue� o      ���� 0 a_result  ��  � r   # ,��� n  # *��� I   $ *������� ,0 type_conformstotype_ type_conformsToType_� ��� o   $ %���� 
0 my_uti  � ���� m   % &�� ���   c o m . a p p l e . b u n d l e��  ��  �  g   # $� o      ���� 0 a_result  � n   ��� I    �������� "0 sharedworkspace sharedWorkspace��  ��  � o    ���� 0 nsworkspace NSWorkspace� ��� L   . 0�� o   . /���� 0 a_result  � ���� l   1 1������  � { u
	-- �Ȃ��� info for �R�}���h�ŃG���[ -1700 ���N����B2020-02-03
	set info_rec to info()
	return folder of info_rec
	   � ��� � 
 	 - -  0j0\0K   i n f o   f o r  0�0�0�0�0g0�0�0�   - 1 7 0 0  0L�w0M0�0 2 0 2 0 - 0 2 - 0 3 
 	 s e t   i n f o _ r e c   t o   i n f o ( ) 
 	 r e t u r n   f o l d e r   o f   i n f o _ r e c 
 	��  � ��� l     ��������  ��  ��  � ��� l      ������  � n h!@abstruct
Check whether the item is a package or not.
@result boolean : true if the item is a package.
   � ��� � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   a   p a c k a g e   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   p a c k a g e . 
� ��� i   � ���� I      �������� 0 
is_package  ��  ��  � O     ��� k    �� ��� L    �� n   ��� I    ������� ,0 isfilepackageatpath_ isFilePackageAtPath_� ���� l   ������ n   ��� I    �������� 0 
posix_path  ��  ��  �  f    ��  ��  ��  ��  �  g    � ���� l   ������  � P J return its type:(my type_identifier()) conformsToType:"com.apple.package"   � ��� �   r e t u r n   i t s   t y p e : ( m y   t y p e _ i d e n t i f i e r ( ) )   c o n f o r m s T o T y p e : " c o m . a p p l e . p a c k a g e "��  � n    	   I    	�������� "0 sharedworkspace sharedWorkspace��  ��   o     ���� 0 nsworkspace NSWorkspace�  l     ��������  ��  ��    l      ����   v p!@abstruct
Check whether the item is an alias file or not.
@result boolean : true if the item is an alias file.
    � � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . 
 	
	 i   � � I      �������� 0 is_alias  ��  ��   L      l    ���� =     m      � ( c o m . a p p l e . a l i a s - f i l e I    �������� 0 type_identifier  ��  ��  ��  ��  
  l     ��������  ��  ��    l      ����   z t!@abstruct
Check whether the item is a symbolic link or not.
@result boolean : true if the item is a symbolic link.
    � � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k . 
  i   � � I      �������� 0 
is_symlink  ��  ��   L      l    ���� =     !  m     "" �##  p u b l i c . s y m l i n k! I    �������� 0 type_identifier  ��  ��  ��  ��   $%$ l     ��������  ��  ��  % &'& l      ��()��  ( � �!@abstruct
Check whether the operating system appears able to execute a specified file.
@result boolean : true if the item is executable.
   ) �** ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   o p e r a t i n g   s y s t e m   a p p e a r s   a b l e   t o   e x e c u t e   a   s p e c i f i e d   f i l e . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   e x e c u t a b l e . 
' +,+ i   � �-.- I      �������� 0 is_executable  ��  ��  . O     /0/ L    11 n   232 I    ��4���� 20 isexecutablefileatpath_ isExecutableFileAtPath_4 5��5 l   6����6 n   787 I    �������� 0 
posix_path  ��  ��  8  f    ��  ��  ��  ��  3  g    0 n    	9:9 I    	��������  0 defaultmanager defaultManager��  ��  : o     ���� 0 nsfilemanager NSFileManager, ;<; l     ��������  ��  ��  < =>= l      ��?@��  ? j d!@abstruct
Check whether the item is visible or not.
@result boolean : true if the item is visible.
   @ �AA � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e . 
> BCB i   � �DED I      ������� 0 
is_visible  ��  �  E k     FF GHG r     IJI I     �~�}�|�~ 0 info  �}  �|  J o      �{�{ 0 info_rec  H K�zK L    LL n    MNM 1   	 �y
�y 
pvisN o    	�x�x 0 info_rec  �z  C OPO l     �w�v�u�w  �v  �u  P QRQ l      �tST�t  S � �!@abstruct
Set creator code and type code to the item.
@param creator_code (text) : creator code which consists of 4 characters
@param type_code (text) : type code which consists of 4 characters
   T �UU� ! @ a b s t r u c t 
 S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m . 
 @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s 
 @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s 
R VWV i   � �XYX I      �sZ�r�s 0 	set_types  Z [\[ o      �q�q 0 creator_code  \ ]�p] o      �o�o 0 	type_code  �p  �r  Y k     +^^ _`_ l     �nab�n  a V P difficult to implemented with NSFileManager's setAttributes:ofItemAtPath:error:   b �cc �   d i f f i c u l t   t o   i m p l e m e n t e d   w i t h   N S F i l e M a n a g e r ' s   s e t A t t r i b u t e s : o f I t e m A t P a t h : e r r o r :` d�md Z     +ef�l�ke H     gg I     �j�i�h�j 0 	is_folder  �i  �h  f k   	 'hh iji r   	 klk I   	 �g�f�e�g 0 as_alias  �f  �e  l o      �d�d 
0 a_file  j mnm O    !opo k     qq rsr r    tut o    �c�c 0 creator_code  u n      vwv 1    �b
�b 
fcrtw o    �a�a 
0 a_file  s x�`x r     yzy o    �_�_ 0 	type_code  z n      {|{ 1    �^
�^ 
asty| o    �]�] 
0 a_file  �`  p m    }}�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  n ~�\~ r   " '� m   " #�[
�[ 
msng� n     ��� o   $ &�Z�Z 0 _inforecord _infoRecord�  f   # $�\  �l  �k  �m  W ��� l     �Y�X�W�Y  �X  �W  � ��� l      �V���V  �!@abstruct
Obtain file information.
@description
Do &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().
The size of the target will not be included.
@result file infomation(record) : a result of info for command.
   � ���( ! @ a b s t r u c t 
 O b t a i n   f i l e   i n f o r m a t i o n . 
 @ d e s c r i p t i o n 
 D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) . 
 T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d . 
 @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . 
� ��� i   � ���� I      �U�T�S�U 0 info  �T  �S  � k     '�� ��� Z     !���R�Q� =    ��� n    ��� o    �P�P 0 _inforecord _infoRecord�  f     � m    �O
�O 
msng� k    �� ��� I    �N�M�L�N !0 check_existance_raising_error  �M  �L  � ��K� r    ��� I   �J��
�J .sysonfo4asfe        file� I    �I�H�G�I 0 as_furl  �H  �G  � �F��E
�F 
ptsz� m    �D
�D boovfals�E  � n     ��� o    �C�C 0 _inforecord _infoRecord�  f    �K  �R  �Q  � ��B� L   " '�� n  " &��� o   # %�A�A 0 _inforecord _infoRecord�  f   " #�B  � ��� l     �@�?�>�@  �?  �>  � ��� l      �=���=  �82!@abstruct
Obtain file information including its size.
@description
Do &quot;info for&quot; command for the item with &quot;size&quot; option. 
The result is cached and same value is returned at next calling info_with_size() or ((<info>))().
@result file infomation(record) : a result of info for command.
   � ���d ! @ a b s t r u c t 
 O b t a i n   f i l e   i n f o r m a t i o n   i n c l u d i n g   i t s   s i z e . 
 @ d e s c r i p t i o n 
 D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m   w i t h   & q u o t ; s i z e & q u o t ;   o p t i o n .   
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o _ w i t h _ s i z e ( )   o r   ( ( < i n f o > ) ) ( ) . 
 @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . 
� ��� i   � ���� I      �<�;�:�< 0 info_with_size  �;  �:  � k     C�� ��� Z     =����9� =    ��� n    ��� o    �8�8 0 _inforecord _infoRecord�  f     � m    �7
�7 
msng� k    �� ��� I    �6�5�4�6 !0 check_existance_raising_error  �5  �4  � ��3� r    ��� I   �2��
�2 .sysonfo4asfe        file� I    �1�0�/�1 0 as_furl  �0  �/  � �.��-
�. 
ptsz� m    �,
�, boovtrue�-  � n     ��� o    �+�+ 0 _inforecord _infoRecord�  f    �3  � ��� =    '��� n     %��� 1   # %�*
�* 
ptsz� n    #��� o   ! #�)�) 0 _inforecord _infoRecord�  f     !� m   % &�(
�( 
msng� ��'� r   * 9��� I  * 5�&��
�& .sysonfo4asfe        file� I   * /�%�$�#�% 0 as_furl  �$  �#  � �"��!
�" 
ptsz� m   0 1� 
�  boovtrue�!  � n     ��� o   6 8�� 0 _inforecord _infoRecord�  f   5 6�'  �9  � ��� L   > C�� n  > B��� o   ? A�� 0 _inforecord _infoRecord�  f   > ?�  � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct
Obtain file information again.
@description
Do "info for" command for the item and reset the cache of ((<info>))().
@result file infomation(record) : a result of info for command.
   � ���~ ! @ a b s t r u c t 
 O b t a i n   f i l e   i n f o r m a t i o n   a g a i n . 
 @ d e s c r i p t i o n 
 D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) . 
 @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . 
� ��� i   � ���� I      ���� 0 re_info  �  �  � k     ;�� ��� Z     5����� F     ��� l    ���� >    ��� n    ��� o    �� 0 _inforecord _infoRecord�  f     � m    �
� 
msng�  �  � l 	  ���� l   ���� >   ��� n    ��� 1    �
� 
ptsz� n   ��� o   	 �� 0 _inforecord _infoRecord�  f    	� m    �

�
 
msng�  �  �  �  � r    #��� I   �	��
�	 .sysonfo4asfe        file� I    ���� 0 as_furl  �  �  � ���
� 
ptsz� m    �
� boovtrue�  � n     � � o     "�� 0 _inforecord _infoRecord   f     �  � r   & 5 I  & 1�
� .sysonfo4asfe        file I   & +� �����  0 as_furl  ��  ��   ����
�� 
ptsz m   , -��
�� boovfals��   n      o   2 4���� 0 _inforecord _infoRecord  f   1 2� �� L   6 ;		 n  6 :

 o   7 9���� 0 _inforecord _infoRecord  f   6 7��  �  l     ��������  ��  ��    l      ����   % !@group Obtain Path Infomation     � > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n    l     ��������  ��  ��    l      ����   W Q!@abstruct 
Obtain the name of the item referenced by the instance 
@result text
    � � ! @ a b s t r u c t   
 O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   
 @ r e s u l t   t e x t 
  i   � � I      �������� 0 	item_name  ��  ��   L      n      n   !"! I    �������� 0 	item_name  ��  ��  " o    ���� 0 	_pathinfo 	_pathInfo   f      #$# l     ��������  ��  ��  $ %&% l      ��'(��  ' � �!@abstruct 
Obtain the base name (a name which does not include path extension) of the item referenced by the instance.
@result text
   ( �))
 ! @ a b s t r u c t   
 O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ r e s u l t   t e x t 
& *+* i   � �,-, I      �������� 0 basename  ��  ��  - L     .. n    /0/ n   121 I    �������� 0 basename  ��  ��  2 o    ���� 0 	_pathinfo 	_pathInfo0  f     + 343 l     ��������  ��  ��  4 565 l      ��78��  7 � �!@abstruct 
Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.
@result text
   8 �99� ! @ a b s t r u c t   
 O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n . 
 @ r e s u l t   t e x t 
6 :;: i   � �<=< I      �������� 0 path_extension  ��  ��  = L     >> n    ?@? n   ABA I    �������� 0 path_extension  ��  ��  B o    ���� 0 	_pathinfo 	_pathInfo@  f     ; CDC l     ��������  ��  ��  D EFE l      ��GH��  G ^ X!@abstruct 
Obtain the volume name of the item referenced by the instance.
@result text
   H �II � ! @ a b s t r u c t   
 O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ r e s u l t   t e x t 
F JKJ i   � �LML I      �������� 0 volume_name  ��  ��  M L     NN n    OPO n   QRQ I    �������� 0 volume_name  ��  ��  R o    ���� 0 	_pathinfo 	_pathInfoP  f     K STS l     ��������  ��  ��  T UVU l      ��WX��  W $ !@group Working with a Bundle    X �YY < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e  V Z[Z l     ��������  ��  ��  [ \]\ l      ��^_��  ^ � �!@abstruct
Obtain an item which is in the bundle resource folder.
@description
This method can be call to a bundle.
@param resource_name (text) : a resource name
@result script object : a XFile instance
   _ �``� ! @ a b s t r u c t 
 O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r . 
 @ d e s c r i p t i o n 
 T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e . 
 @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 
] aba i   � �cdc I      ��e���� 0 bundle_resource  e f��f o      ���� 0 resource_name  ��  ��  d L     gg I     ��h���� 0 	make_with  h i��i I   ��jk
�� .sysorpthalis        TEXTj o    ���� 0 resource_name  k ��l��
�� 
in Bl l   m����m I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��  b non l     ��������  ��  ��  o pqp l      ��rs��  r j d!@abstruct
Obtain a reference to Info.plist of the bundle.
@result script object : a XFile instance
   s �tt � ! @ a b s t r u c t 
 O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 
q uvu i   � �wxw I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  x L     yy I     ��z���� 0 child_posix  z {��{ m    || �}} & C o n t e n t s / I n f o . p l i s t��  ��  v ~~ l     ��������  ��  ��   ��� i   � ���� I      �������� 0 bundle_resources_folder  ��  ��  � L     �� I     ������� 0 child_posix  � ���� m    �� ��� & C o n t e n t s / R e s o u r c e s /��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � ! !@group File Manipulations    � ��� 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  � ��� l     ��������  ��  ��  � ��� l      ������  �/)!@abstruct
Check whether the item referenced by the instance exists or not.
@description
A file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.
@result boolean : true if the item exists.
   � ���R ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t . 
 @ d e s c r i p t i o n 
 A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . 
� ��� i   � ���� I      �������� 0 item_exists  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_exists  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Check whether the item referenced by the instance exists or not.
@description
The internal file reference will not be changed unlike ((<item_exists>)).
@result boolean : true if the item exists.
   � ���� ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t . 
 @ d e s c r i p t i o n 
 T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . 
� ��� i   � ���� I      �������� 0 item_exists_without_update  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ����  � � �!@abstruct
Synonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.
@result boolean : true if the item exists.
   � ���* ! @ a b s t r u c t 
 S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . 
� ��� i   � ���� I     �~�}�|
�~ .coredoexbool       obj �}  �|  � L     �� I     �{�z�y�{ 0 item_exists  �z  �y  � ��� l     �x�w�v�x  �w  �v  � ��� l      �u���u  � l f!@abstruct
Rename an item which referenced by the XFile instance.
@result boolean : true if succeded.
   � ��� � ! @ a b s t r u c t 
 R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e d e d . 
� ��� i   � ���� I      �t��s�t 0 	rename_to  � ��r� o      �q�q 0 new_name  �r  �s  � k     C�� ��� r     
��� n    ��� n   ��� I    �p��o�p 0 change_name  � ��n� o    �m�m 0 new_name  �n  �o  � o    �l�l 0 	_pathinfo 	_pathInfo�  f     � o      �k�k 0 dest  � ��� O    ,��� r    +��� n   )��� I    )�j��i�j <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_� ��� l   ��h�g� n   ��� n   ��� I    �f�e�d�f 0 
posix_path  �e  �d  � o    �c�c 0 	_pathinfo 	_pathInfo�  f    �h  �g  � ��� l   $��b�a� n   $��� I     $�`�_�^�` 0 
posix_path  �_  �^  � o     �]�] 0 dest  �b  �a  � ��\� l  $ %��[�Z� m   $ %�Y
�Y 
msng�[  �Z  �\  �i  �  g    � o      �X�X 0 a_result  � n   ��� I    �W�V�U�W  0 defaultmanager defaultManager�V  �U  � o    �T�T 0 nsfilemanager NSFileManager� ��� l  - -�S�R�Q�S  �R  �Q  � ��� Z   - @���P�O� o   - .�N�N 0 a_result  � k   1 <�� ��� r   1 6��� m   1 2�M
�M 
msng� n     ��� o   3 5�L�L 0 _inforecord _infoRecord�  f   2 3� ��K� r   7 <��� o   7 8�J�J 0 dest  � n     ��� o   9 ;�I�I 0 	_pathinfo 	_pathInfo�  f   8 9�K  �P  �O  � ��H� L   A C   o   A B�G�G 0 a_result  �H  �  l     �F�E�D�F  �E  �D    i   � � I      �C�B�C 0 prepare_copy_move   �A o      �@�@ 0 a_destination  �A  �B   k     W		 

 Z     �?�> H      I     �=�<�;�= 0 item_exists  �<  �;   l  	  k   	   I  	 �:�9
�: .ascrcmnt****      � **** m   	 
 �  N o   s o u r c e   i t e m .�9   �8 L     m    �7
�7 
msng�8   G A even if the item exists, broken symbolic file will return false.    � �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .�?  �>    l   �6�5�4�6  �5  �4    r      n    !"! m    �3
�3 
pcls" o    �2�2 0 a_destination    o      �1�1 0 a_class   #$# Z    T%&'�0% =   ()( o    �/�/ 0 a_class  ) m    �.
�. 
ctxt& Z   " ?*+�-,* C   " %-.- o   " #�,�, 0 a_destination  . m   # $// �00  /+ r   ( 0121 I   ( .�+3�*�+ 0 	make_with  3 4�)4 o   ) *�(�( 0 a_destination  �)  �*  2 o      �'�' 0 a_destination  �-  , r   3 ?565 n  3 =787 I   8 =�&9�%�& 	0 child  9 :�$: o   8 9�#�# 0 a_destination  �$  �%  8 I   3 8�"�!� �" 0 parent_folder  �!  �   6 o      �� 0 a_destination  ' ;<; >  B E=>= o   B C�� 0 a_class  > m   C D�
� 
scpt< ?�? r   H P@A@ I   H N�B�� 0 	make_with  B C�C o   I J�� 0 a_destination  �  �  A o      �� 0 a_destination  �  �0  $ DED l  U U����  �  �  E F�F L   U WGG o   U V�� 0 a_destination  �   HIH l     ����  �  �  I JKJ l      �LM�  LE?!@abstruct 
Copy the item to specified location
@description
Same name item in the destination is not replaced.
@param a_destination (script object or file reference) : 
a XFile instance referencing the copy destination, relative path or absolute path.
@result script object : a XFile instance referencing copied item.
   M �NN~ ! @ a b s t r u c t   
 C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n 
 @ d e s c r i p t i o n 
 S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   n o t   r e p l a c e d . 
 @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   f i l e   r e f e r e n c e )   :   
 a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n ,   r e l a t i v e   p a t h   o r   a b s o l u t e   p a t h . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . 
K OPO i   � �QRQ I      �S�� 0 copy_to  S T�T o      �
�
 0 a_destination  �  �  R k     jUU VWV r     XYX I     �	Z��	 0 prepare_copy_move  Z [�[ o    �� 0 a_destination  �  �  Y o      �� 0 a_destination  W \]\ Z   	 ^_��^ =  	 `a` o   	 
�� 0 a_destination  a m   
 �
� 
msng_ L    bb m    � 
�  
msng�  �  ] cdc Z    ;ef����e n   ghg I    �������� 0 item_exists_without_update  ��  ��  h o    ���� 0 a_destination  f Z    7ij��ki n   #lml I    #�������� 0 	is_folder  ��  ��  m o    ���� 0 a_destination  j r   & 2non n  & 0pqp I   ' 0��r���� 	0 child  r s��s I   ' ,�������� 0 	item_name  ��  ��  ��  ��  q o   & '���� 0 a_destination  o o      ���� 0 a_destination  ��  k L   5 7tt m   5 6��
�� 
msng��  ��  d uvu l  < <��������  ��  ��  v wxw O   < [yzy r   H Z{|{ n  H X}~} I   I X������ <0 copyitematpath_topath_error_ copyItemAtPath_toPath_error_ ��� l  I N������ n  I N��� I   J N�������� 0 
posix_path  ��  ��  �  f   I J��  ��  � ��� l  N S������ n  N S��� I   O S�������� 0 
posix_path  ��  ��  � o   N O���� 0 a_destination  ��  ��  � ���� l  S T������ m   S T��
�� 
msng��  ��  ��  ��  ~  g   H I| o      ���� 0 a_result  z n  < E��� I   A E��������  0 defaultmanager defaultManager��  ��  � o   < A���� 0 nsfilemanager NSFileManagerx ��� Z   \ g������� H   \ ^�� o   \ ]���� 0 a_result  � L   a c�� m   a b��
�� 
msng��  ��  � ���� L   h j�� o   h i���� 0 a_destination  ��  P ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 prepare_replacing  � ���� o      ���� 0 a_destination  ��  ��  � k     ��� ��� r     ��� m     ��
�� 
msng� o      ���� 0 escaped_item  � ��� Z    ~������� n   	��� I    	�������� 0 item_exists_without_update  ��  ��  � o    ���� 0 a_destination  � k    z�� ��� r    ��� m    ��
�� boovtrue� o      ���� 0 dest_exists  � ��� Z    0������� n   ��� I    �������� 0 	is_folder  ��  ��  � o    ���� 0 a_destination  � k    ,�� ��� r    $��� n   "��� I    "������� 	0 child  � ���� I    �������� 0 	item_name  ��  ��  ��  ��  � o    ���� 0 a_destination  � o      ���� 0 a_destination  � ���� r   % ,��� n  % *��� I   & *�������� 0 item_exists_without_update  ��  ��  � o   % &���� 0 a_destination  � o      ���� 0 dest_exists  ��  ��  ��  � ��� l  1 1��������  ��  ��  � ���� Z   1 z������� o   1 2���� 0 dest_exists  � k   5 v�� ��� O   5 m��� k   9 l�� ��� r   9 <���  g   9 :� o      ���� 0 escaped_item  � ��� r   = D��� n  = B��� I   > B�������� 0 
posix_path  ��  ��  �  g   = >� o      ���� 0 	dest_path  � ��� r   E U��� n  E S��� n  F S��� I   J S������� 0 unique_child  � ���� n  J O��� I   K O�������� 0 	item_name  ��  ��  �  g   J K��  ��  � I   F J�������� 0 parent_folder  ��  ��  �  g   E F� o      ���� 
0 uchild  � ��� l  V V������  �    log uchild's posix_path()   � ��� 4   l o g   u c h i l d ' s   p o s i x _ p a t h ( )� ���� Z   V l������� H   V ]�� n  V \��� I   W \������� 0 move_to  � ���� o   W X���� 
0 uchild  ��  ��  �  g   V W� k   ` h�� ��� I  ` e�����
�� .ascrcmnt****      � ****� m   ` a�� ��� @ F a i l e d   t o   e s c a p e   e x i s i t i n g   i t e m .��  � ���� L   f h�� m   f g��
�� boovfals��  ��  ��  ��  � o   5 6���� 0 a_destination  � ���� r   n v��� I   n t������� 0 	make_with  � ���� o   o p���� 0 	dest_path  ��  ��  � o      �� 0 a_destination  ��  ��  ��  ��  ��  ��  � ��~� L    ��� J    ���    o    ��}�} 0 escaped_item   �| o   � ��{�{ 0 a_destination  �|  �~  �  l     �z�y�x�z  �y  �x    l      �w�w  a[!@abstruct 
Copy the item to specified location with replacing the destination.
@description
Same name item in the destination is replaced.
@param a_destination (script object or file reference) : 
a XFile instance referencing the copy destination, relative path or absolute path.
@result script object : a XFile instance referencing copied item.
    �		� ! @ a b s t r u c t   
 C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n   w i t h   r e p l a c i n g   t h e   d e s t i n a t i o n . 
 @ d e s c r i p t i o n 
 S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d . 
 @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   f i l e   r e f e r e n c e )   :   
 a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n ,   r e l a t i v e   p a t h   o r   a b s o l u t e   p a t h . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . 
 

 i   � � I      �v�u�v 0 copy_with_replacing   �t o      �s�s 0 a_destination  �t  �u   k     �  r      I     �r�q�r 0 prepare_copy_move   �p o    �o�o 0 a_destination  �p  �q   o      �n�n 0 a_destination    Z   	 �m�l =  	  o   	 
�k�k 0 a_destination   m   
 �j
�j 
msng L     m    �i
�i 
msng�m  �l    r    + !  I      �h"�g�h 0 prepare_replacing  " #�f# o    �e�e 0 a_destination  �f  �g  ! J      $$ %&% o      �d�d 0 escaped_item  & '�c' o      �b�b 0 a_destination  �c   ()( O   , K*+* r   8 J,-, n  8 H./. I   9 H�a0�`�a <0 copyitematpath_topath_error_ copyItemAtPath_toPath_error_0 121 l  9 >3�_�^3 n  9 >454 I   : >�]�\�[�] 0 
posix_path  �\  �[  5  f   9 :�_  �^  2 676 l  > C8�Z�Y8 n  > C9:9 I   ? C�X�W�V�X 0 
posix_path  �W  �V  : o   > ?�U�U 0 a_destination  �Z  �Y  7 ;�T; l  C D<�S�R< m   C D�Q
�Q 
msng�S  �R  �T  �`  /  g   8 9- o      �P�P 0 a_result  + n  , 5=>= I   1 5�O�N�M�O  0 defaultmanager defaultManager�N  �M  > o   , 1�L�L 0 nsfilemanager NSFileManager) ?@? Z   L yAB�K�JA H   L NCC o   L M�I�I 0 a_result  B l  Q uDEFD k   Q uGG HIH I  Q d�HJ�G
�H .ascrcmnt****      � ****J b   Q `KLK b   Q ZMNM b   Q XOPO m   Q RQQ �RR , F a i l e d   t o   c o p y   f r o m   :  P o   R W�F�F 0 
posix_path  N m   X YSS �TT    t o   :  L n  Z _UVU I   [ _�E�D�C�E 0 
posix_path  �D  �C  V o   Z [�B�B 0 a_destination  �G  I W�AW Z   e uXY�@�?X >  e hZ[Z o   e f�>�> 0 escaped_item  [ m   f g�=
�= 
msngY n  k q\]\ I   l q�<^�;�< 0 move_to  ^ _�:_ o   l m�9�9 0 a_destination  �:  �;  ] o   k l�8�8 0 escaped_item  �@  �?  �A  E   failed   F �``    f a i l e d�K  �J  @ aba Z   z �cd�7�6c >  z }efe o   z {�5�5 0 escaped_item  f m   { |�4
�4 
msngd n  � �ghg I   � ��3�2�1�3 
0 remove  �2  �1  h o   � ��0�0 0 escaped_item  �7  �6  b i�/i L   � �jj o   � ��.�. 0 a_destination  �/   klk l     �-�,�+�-  �,  �+  l mnm l      �*op�*  o � � almost same to move_with_replacing  But does not work between different volumes.move_with_replacing works between different volumes.   p �qq   a l m o s t   s a m e   t o   m o v e _ w i t h _ r e p l a c i n g      B u t   d o e s   n o t   w o r k   b e t w e e n   d i f f e r e n t   v o l u m e s .  m o v e _ w i t h _ r e p l a c i n g   w o r k s   b e t w e e n   d i f f e r e n t   v o l u m e s .n rsr i   � �tut I      �)v�(�) 0 
replace_to  v w�'w o      �&�& 0 a_destination  �'  �(  u k     yxx yzy l     �%�$�#�%  �$  �#  z {|{ Z     }~�"�!} >    � n     ��� m    � 
�  
pcls� o     �� 0 a_destination  � m    �
� 
scpt~ r    ��� I    ���� 0 	make_with  � ��� o   	 
�� 0 a_destination  �  �  � o      �� 0 a_destination  �"  �!  | ��� l   ����  �  �  � ��� Z    :����� n   ��� I    ���� 0 item_exists  �  �  � o    �� 0 a_destination  � Z    6����� n   "��� I    "���� 0 	is_folder  �  �  � o    �� 0 a_destination  � r   % 1��� n  % /��� I   & /�
��	�
 	0 child  � ��� I   & +���� 0 	item_name  �  �  �  �	  � o   % &�� 0 a_destination  � o      �� 0 a_destination  �  � L   4 6�� m   4 5�
� boovfals�  �  � ��� l  ; ;�� ���  �   ��  � ��� O   ; c��� k   G b�� ��� r   G `��� n  G ^��� I   H ^������� �0 Mreplaceitematurl_withitematurl_backupitemname_options_resultingitemurl_error_ MreplaceItemAtURL_withItemAtURL_backupItemName_options_resultingItemURL_error_� ��� l  H O������ n  H O��� I   K O�������� 0 as_nsurl as_NSURL��  ��  � n  H K��� o   I K���� 0 	_pathinfo 	_pathInfo� o   H I���� 0 a_destination  ��  ��  � ��� l  O V������ n  O V��� n  P V��� I   R V�������� 0 as_nsurl as_NSURL��  ��  � o   P R���� 0 	_pathinfo 	_pathInfo�  f   O P��  ��  � ��� l  V W������ m   V W��
�� 
msng��  ��  � ��� m   W X����  � ��� l  X Y������ m   X Y��
�� 
msng��  ��  � ���� l  Y Z������ m   Y Z��
�� 
msng��  ��  ��  ��  �  g   G H� o      ���� 0 a_result  � ���� l  a a��������  ��  ��  ��  � n  ; D��� I   @ D��������  0 defaultmanager defaultManager��  ��  � o   ; @���� 0 nsfilemanager NSFileManager� ��� Z   d v������� o   d e���� 0 a_result  � I   h r������� 0 
change_ref  � ���� n  i n��� I   j n�������� 0 item_ref  ��  ��  � o   i j���� 0 a_destination  ��  ��  ��  ��  � ���� L   w y�� o   w x���� 0 a_result  ��  s ��� l     ��������  ��  ��  � ��� l      ������  �60!
@abstruct 
Copy the item to specified location with options.
@description
By passing options (a value of a record) as a second parameter, you can change the behavior of copying.
The format of the option record is {with_replaceing : boolean, with_admin:boolean, with_replacing: boolean}. 
You can ommit labels you don't required.
* with_replacing : Copying with replacing the destination. The default is true.
* with_admin : Copying with administrator privileges. The default is false.
* with_removing : Copying after removing the destination. The default is false.
@param a_destination (script object) : a XFile instance referencing the copy destination or a relative path.
@param opts ( record): a XFile instance referencing the copy destination.
@result script object : a XFile instance referencing copied item.
   � ���` ! 
 @ a b s t r u c t   
 C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n   w i t h   o p t i o n s . 
 @ d e s c r i p t i o n 
 B y   p a s s i n g   o p t i o n s   ( a   v a l u e   o f   a   r e c o r d )   a s   a   s e c o n d   p a r a m e t e r ,   y o u   c a n   c h a n g e   t h e   b e h a v i o r   o f   c o p y i n g . 
 T h e   f o r m a t   o f   t h e   o p t i o n   r e c o r d   i s   { w i t h _ r e p l a c e i n g   :   b o o l e a n ,   w i t h _ a d m i n : b o o l e a n ,   w i t h _ r e p l a c i n g :   b o o l e a n } .   
 Y o u   c a n   o m m i t   l a b e l s   y o u   d o n ' t   r e q u i r e d . 
 *   w i t h _ r e p l a c i n g   :   C o p y i n g   w i t h   r e p l a c i n g   t h e   d e s t i n a t i o n .   T h e   d e f a u l t   i s   t r u e . 
 *   w i t h _ a d m i n   :   C o p y i n g   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s .   T h e   d e f a u l t   i s   f a l s e . 
 *   w i t h _ r e m o v i n g   :   C o p y i n g   a f t e r   r e m o v i n g   t h e   d e s t i n a t i o n .   T h e   d e f a u l t   i s   f a l s e . 
 @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h . 
 @ p a r a m   o p t s   (   r e c o r d ) :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . 
� ��� i   � ���� I      ������� 0 copy_with_opts  � ��� o      ���� 0 a_destination  � ���� o      ���� 0 opts  ��  ��  � k    8�� ��� l     ������  � \ V cp : if source and destination are folders and the path of the source ends with "/",    � ��� �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  � ��� l     ������  � ^ X         cp command contents of the source copy under the destination folder like ditto.   � ��� �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .� ��� l     ������  � U O        The endding "/" of the source path should be removed for stable result.   � ��� �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .� ��� l     ������  � 5 /        Is the support  of ditto not required ?   � ��� ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?� ��� r     ��� m     ��
�� boovtrue� o      ���� 0 w_replacing  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 w_admin  � ��� r    ��� m    	��
�� boovfals� o      ���� 0 
w_removing  � ��� l      r     m     �  c p o      ���� 0 command     or "ditto"    �    o r   " d i t t o "� 	 l   ��������  ��  ��  	 

 Z    l���� =    n     m    ��
�� 
pcls o    ���� 0 opts   m    ��
�� 
reco k    h  Q    )�� r      n     o    ���� 0 with_replacing   o    ���� 0 opts   o      ���� 0 w_replacing   R      ������
�� .ascrerr ****      � ****��  ��  ��    Q   * ;�� r   - 2  n   - 0!"! o   . 0���� 0 
with_admin  " o   - .���� 0 opts    o      ���� 0 w_admin   R      ������
�� .ascrerr ****      � ****��  ��  ��   #$# Q   < M%&��% r   ? D'(' n   ? B)*) o   @ B���� 0 with_removing  * o   ? @���� 0 opts  ( o      ���� 0 
w_removing  & R      ������
�� .ascrerr ****      � ****��  ��  ��  $ +��+ Q   N h,-��, Z   Q _./����. n   Q U010 o   R T���� 	0 ditto  1 o   Q R���� 0 opts  / r   X [232 m   X Y44 �55 
 d i t t o3 o      ���� 0 command  ��  ��  - R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��   676 l  m m��������  ��  ��  7 898 Z   m �:;����: E  m v<=< J   m r>> ?@? m   m n��
�� 
ctxt@ ABA m   n o��
�� 
utxtB C��C m   o p��
�� 
TEXT��  = n   r uDED m   s u��
�� 
pclsE o   r s���� 0 a_destination  ; r   y �FGF n  y �HIH I   ~ ���J���� 	0 child  J K��K o   ~ ���� 0 a_destination  ��  ��  I I   y ~�������� 0 parent_folder  ��  ��  G o      ���� 0 a_destination  ��  ��  9 LML l  � ��������  ��  �  M NON Z   � �PQR�~P =  � �STS o   � ��}�} 0 command  T m   � �UU �VV  c pQ k   � �WW XYX r   � �Z[Z m   � �\\ �]]  - R p[ o      �|�| 0 com_opts  Y ^�{^ Z   � �_`�z�y_ o   � ��x�x 0 w_replacing  ` r   � �aba b   � �cdc o   � ��w�w 0 com_opts  d m   � �ee �ff  fb o      �v�v 0 com_opts  �z  �y  �{  R ghg =  � �iji o   � ��u�u 0 command  j m   � �kk �ll 
 d i t t oh m�tm r   � �non m   � �pp �qq  - - r s r co o      �s�s 0 com_opts  �t  �~  O rsr r   � �tut m   � ��r
�r boovfalsu o      �q�q 0 is_folder_to  s vwv Z   � �xy�p�ox n  � �z{z I   � ��n�m�l�n 0 item_exists  �m  �l  { o   � ��k�k 0 a_destination  y Z   � �|}�j~| l  � ��i�h o   � ��g�g 0 
w_removing  �i  �h  } n  � ���� I   � ��f�e�d�f 
0 remove  �e  �d  � o   � ��c�c 0 a_destination  �j  ~ Z   � ����b�a� =  � ���� o   � ��`�` 0 command  � m   � ��� ���  c p� r   � ���� n  � ���� I   � ��_�^�]�_ 0 	is_folder  �^  �]  � o   � ��\�\ 0 a_destination  � o      �[�[ 0 is_folder_to  �b  �a  �p  �o  w ��� l  � ��Z�Y�X�Z  �Y  �X  � ��� r   � ���� n   � ���� 1   � ��W
�W 
strq� n  � ���� I   � ��V�U�T�V 0 normalized_posix_path  �U  �T  � o   � ��S�S 0 a_destination  � o      �R�R 0 destination_path  � ��� r   ���� n   � ���� 1   � ��Q
�Q 
strq� I   � ��P�O�N�P 0 normalized_posix_path  �O  �N  � o      �M�M 0 source_path  � ��� r  ��� b  ��� b  ��� b  ��� b  ��� b  	��� b  ��� o  �L�L 0 command  � 1  �K
�K 
spac� o  �J�J 0 com_opts  � 1  	�I
�I 
spac� o  �H�H 0 source_path  � 1  �G
�G 
spac� o  �F�F 0 destination_path  � o      �E�E 0 	a_command  � ��� I !�D��
�D .sysoexecTEXT���     TEXT� o  �C�C 0 	a_command  � �B��A
�B 
badm� o  �@�@ 0 w_admin  �A  � ��� Z  "5���?�>� o  "#�=�= 0 is_folder_to  � L  &1�� n &0��� I  '0�<��;�< 	0 child  � ��:� I  ',�9�8�7�9 0 	item_name  �8  �7  �:  �;  � o  &'�6�6 0 a_destination  �?  �>  � ��5� L  68�� o  67�4�4 0 a_destination  �5  � ��� l     �3�2�1�3  �2  �1  � ��� i   � ���� I      �0��/�0 0 finder_copy_to  � ��� o      �.�. 0 a_destination  � ��-� o      �,�, 0 with_replacing  �-  �/  � k     *�� ��� r     ��� n    ��� I    �+�*�)�+ 0 as_alias  �*  �)  � o     �(�( 0 a_destination  � o      �'�' 0 destination  � ��� r    ��� I    �&�%�$�& 0 as_alias  �%  �$  � o      �#�# 0 source_alias  � ��� O    "��� r    !��� c    ��� l   ��"�!� I   � ��
�  .coreclon****      � ****� o    �� 0 source_alias  � ���
� 
insh� o    �� 0 destination  � ���
� 
alrp� o    �� 0 with_replacing  �  �"  �!  � m    �
� 
alis� o      �� 0 new_item  � m    ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� L   # *�� I   # )���� 0 	make_with  � ��� o   $ %�� 0 new_item  �  �  �  � ��� l     ����  �  �  � ��� i   � ��� I      ���� 
0 my_log  � ��� o      �� 
0 a_text  �  �  � l    
���� O    
��� I   	���

� .ascrcmnt****      � ****� o    �	�	 
0 a_text  �
  � 1     �
� 
ascr� E ? use this for debuggingm, because the log command is overrided.   � ��� ~   u s e   t h i s   f o r   d e b u g g i n g m ,   b e c a u s e   t h e   l o g   c o m m a n d   i s   o v e r r i d e d .� ��� l     ����  �  �  � ��� l      ����  �82!@abstruct
Move the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, moving an item will fail.
@param a_destination (script object or file reference) :  a XFile instance referencing the destination to move, relative path or absolute path.
   � ���d ! @ a b s t r u c t 
 M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   m o v i n g   a n   i t e m   w i l l   f a i l . 
 @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   f i l e   r e f e r e n c e )   :     a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e ,   r e l a t i v e   p a t h   o r   a b s o l u t e   p a t h . 
� ��� i  ��� I      ���� 0 move_to  � ��� o      � �  0 a_destination  �  �  � k     q    l     ����     log "start move_to"    � (   l o g   " s t a r t   m o v e _ t o "  r     	 I     ��
���� 0 prepare_copy_move  
 �� o    ���� 0 a_destination  ��  ��  	 o      ���� 0 a_destination    Z   	 ���� =  	  o   	 
���� 0 a_destination   m   
 ��
�� 
msng L     m    ��
�� boovfals��  ��    Z    ;���� n    I    �������� 0 item_exists  ��  ��   o    ���� 0 a_destination   Z    7�� n   # I    #�������� 0 	is_folder  ��  ��   o    ���� 0 a_destination   r   & 2 n  & 0 !  I   ' 0��"���� 	0 child  " #��# I   ' ,�������� 0 	item_name  ��  ��  ��  ��  ! o   & '���� 0 a_destination   o      ���� 0 a_destination  ��   L   5 7$$ m   5 6��
�� boovfals��  ��   %&% l  < <��'(��  '   log my posix_path()   ( �)) (   l o g   m y   p o s i x _ p a t h ( )& *+* l  < <��,-��  , ' ! log a_destination's posix_path()   - �.. B   l o g   a _ d e s t i n a t i o n ' s   p o s i x _ p a t h ( )+ /0/ O   < [121 r   H Z343 n  H X565 I   I X��7���� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_7 898 l  I N:����: n  I N;<; I   J N�������� 0 
posix_path  ��  ��  <  f   I J��  ��  9 =>= l  N S?����? n  N S@A@ I   O S�������� 0 
posix_path  ��  ��  A o   N O���� 0 a_destination  ��  ��  > B��B l  S TC����C m   S T��
�� 
msng��  ��  ��  ��  6  g   H I4 o      ���� 0 a_result  2 n  < EDED I   A E��������  0 defaultmanager defaultManager��  ��  E o   < A���� 0 nsfilemanager NSFileManager0 FGF Z   \ nHI����H o   \ ]���� 0 a_result  I I   ` j��J���� 0 
change_ref  J K��K n  a fLML I   b f�������� 0 item_ref  ��  ��  M o   a b���� 0 a_destination  ��  ��  ��  ��  G N��N L   o qOO o   o p���� 0 a_result  ��  � PQP l     ��������  ��  ��  Q RSR l      ��TU��  T��!@abstruct
Move the item referenced by the instance to specified location with replacing the destination.
@description
If an same name item exists in the destination, the item will be replaced with the target item.
@param a_destination (script object or file reference) :  a XFile instance referencing the destination to move, relative path or absolute path.
@result boolean : true if success.
   U �VV ! @ a b s t r u c t 
 M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n   w i t h   r e p l a c i n g   t h e   d e s t i n a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m . 
 @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   f i l e   r e f e r e n c e )   :     a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e ,   r e l a t i v e   p a t h   o r   a b s o l u t e   p a t h . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . 
S WXW i  YZY I      ��[���� 0 move_with_replacing  [ \��\ o      ���� 0 a_destination  ��  ��  Z k     �]] ^_^ l     ��`a��  ` &   log "start move_with_replacing"   a �bb @   l o g   " s t a r t   m o v e _ w i t h _ r e p l a c i n g "_ cdc r     efe I     ��g���� 0 prepare_copy_move  g h��h o    ���� 0 a_destination  ��  ��  f o      ���� 0 a_destination  d iji Z   	 kl����k =  	 mnm o   	 
���� 0 a_destination  n m   
 ��
�� 
msngl L    oo m    ��
�� boovfals��  ��  j pqp l   ��������  ��  ��  q rsr r    +tut I      ��v���� 0 prepare_replacing  v w��w o    ���� 0 a_destination  ��  ��  u J      xx yzy o      ���� 0 escaped_item  z {��{ o      ���� 0 a_destination  ��  s |}| l  , ,��������  ��  ��  } ~~ O   , K��� r   8 J��� n  8 H��� I   9 H������� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_� ��� l  9 >������ n  9 >��� I   : >�������� 0 
posix_path  ��  ��  �  f   9 :��  ��  � ��� l  > C������ n  > C��� I   ? C�������� 0 
posix_path  ��  ��  � o   > ?���� 0 a_destination  ��  ��  � ���� l  C D������ m   C D��
�� 
msng��  ��  ��  ��  �  g   8 9� o      ���� 0 a_result  � n  , 5��� I   1 5��������  0 defaultmanager defaultManager��  ��  � o   , 1���� 0 nsfilemanager NSFileManager ��� l  L L��������  ��  ��  � ��� Z   L }������ o   L M���� 0 a_result  � k   P j�� ��� Z   P _������� >  P S��� o   P Q�� 0 escaped_item  � m   Q R�~
�~ 
msng� n  V [��� I   W [�}�|�{�} 
0 remove  �|  �{  � o   V W�z�z 0 escaped_item  ��  ��  � ��y� I   ` j�x��w�x 0 
change_ref  � ��v� n  a f��� I   b f�u�t�s�u 0 item_ref  �t  �s  � o   a b�r�r 0 a_destination  �v  �w  �y  ��  � Z   m }���q�p� >  m p��� o   m n�o�o 0 escaped_item  � m   n o�n
�n 
msng� n  s y��� I   t y�m��l�m 0 move_to  � ��k� o   t u�j�j 0 a_destination  �k  �l  � o   s t�i�i 0 escaped_item  �q  �p  � ��h� L   ~ ��� o   ~ �g�g 0 a_result  �h  X ��� l     �f�e�d�f  �e  �d  � ��� l      �c���c  �!@abstruct
Resolving original item of a alias file.
@description
If the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.
@result script object or missing value
   � ���
 ! @ a b s t r u c t 
 R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e . 
 @ d e s c r i p t i o n 
 I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e 
� ��� i  	��� I      �b�a�`�b 0 resolve_alias  �a  �`  � k     c�� ��� Z     #���_�^� I     �]�\�[�] 0 
is_symlink  �\  �[  � k    �� ��� r    ��� I    �Z�Y�X�Z 0 	deep_copy  �Y  �X  � o      �W�W 0 
x_original  � ��V� Z    ���U�� n   ��� I    �T�S�R�T 0 item_exists  �S  �R  � o    �Q�Q 0 
x_original  � L    �� o    �P�P 0 
x_original  �U  � L    �� m    �O
�O 
msng�V  �_  �^  � ��� l  $ $�N�M�L�N  �M  �L  � ��� Z   $ 3���K�J� H   $ *�� I   $ )�I�H�G�I 0 is_alias  �H  �G  � L   - /��  f   - .�K  �J  � ��� l  4 4�F�E�D�F  �E  �D  � ��� r   4 H��� n  4 F��� I   9 F�C��B�C Z0 +urlbyresolvingaliasfileaturl_options_error_ +URLByResolvingAliasFileAtURL_options_error_� ��� l  9 @��A�@� n  9 @��� n  : @��� I   < @�?�>�=�? 0 as_nsurl as_NSURL�>  �=  � o   : <�<�< 0 	_pathinfo 	_pathInfo�  f   9 :�A  �@  � ��� m   @ A�;�;  � ��:� l  A B��9�8� m   A B�7
�7 
msng�9  �8  �:  �B  � o   4 9�6�6 0 nsurl NSURL� o      �5�5 0 original_url  � ��� Z   I U���4�3� =  I L��� o   I J�2�2 0 original_url  � m   J K�1
�1 
msng� L   O Q�� m   O P�0
�0 
msng�4  �3  � ��/� L   V c�� I   V b�.��-�. 0 	make_with  � ��,� c   W ^��� n  W \��� I   X \�+�*�)�+ 0 path  �*  �)  � o   W X�(�( 0 original_url  � m   \ ]�'
�' 
ctxt�,  �-  �/  � ��� l     �&�%�$�&  �%  �$  � ��� l      �# �#    ! !@abstruct
Put into trash.
    � 6 ! @ a b s t r u c t 
 P u t   i n t o   t r a s h . 
�  i   I      �"�!� �" 0 
into_trash  �!  �    k     7 	 l     �
�  
   log "start into_trash"    � .   l o g   " s t a r t   i n t o _ t r a s h "	  O      r     n    I    ��� P0 &trashitematurl_resultingitemurl_error_ &trashItemAtURL_resultingItemURL_error_  l   �� n    n    I    ���� 0 as_nsurl as_NSURL�  �   o    �� 0 	_pathinfo 	_pathInfo  f    �  �    l   �� m    �
� 
msng�  �    �  l   !��! m    �
� 
msng�  �  �  �    g     o      �� 0 a_result   n    	"#" I    	����  0 defaultmanager defaultManager�  �  # o     �� 0 nsfilemanager NSFileManager $%$ l   �
�	��
  �	  �  % &�& Z    7'(��' o    �� 0 a_result  ( I   " 3�)�� 0 change_pathinfo  ) *�* n  # /+,+ n  $ /-.- I   & /� /���  0 change_folder  / 0��0 I  & +��1��
�� .earsffdralis        afdr1 m   & '��
�� afdmtrsh��  ��  ��  . o   $ &���� 0 	_pathinfo 	_pathInfo,  f   # $�  �  �  �  �   232 l     ��������  ��  ��  3 454 l      ��67��  6 X R!@abstruct
Remove the item referd from the target XFile instance.
@result boolean
   7 �88 � ! @ a b s t r u c t 
 R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e . 
 @ r e s u l t   b o o l e a n 
5 9:9 i  ;<; I      �������� 
0 remove  ��  ��  < k     === >?> r     	@A@ n    BCB n   DED I    �������� 0 as_text  ��  ��  E o    ���� 0 	_pathinfo 	_pathInfoC  f     A o      ���� 
0 a_path  ? FGF O   
 $HIH r    #JKJ n   !LML I    !��N���� 20 removeitematpath_error_ removeItemAtPath_error_N OPO l   Q����Q n   RSR I    �������� 0 
posix_path  ��  ��  S  f    ��  ��  P T��T l   U����U m    ��
�� 
msng��  ��  ��  ��  M  g    K o      ���� 0 a_result  I n  
 VWV I    ��������  0 defaultmanager defaultManager��  ��  W o   
 ���� 0 nsfilemanager NSFileManagerG XYX Z   % :Z[����Z o   % &���� 0 a_result  [ k   ) 6\\ ]^] r   ) 0_`_ o   ) *���� 
0 a_path  ` n     aba n  + /cdc o   - /���� 0 	_item_ref  d o   + -���� 0 	_pathinfo 	_pathInfob  f   * +^ e��e r   1 6fgf m   1 2��
�� 
msngg n     hih o   3 5���� 0 _inforecord _infoRecordi  f   2 3��  ��  ��  Y j��j L   ; =kk o   ; <���� 0 a_result  ��  : lml l     ��������  ��  ��  m non l      ��pq��  p   !@group Making subfolders    q �rr 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  o sts l     ��������  ��  ��  t uvu l      ��wx��  w � �!@abstruct
Make a sub folder.
@description
missing value will be returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.
@result script object or missing value : a XFile instance of newly created folder.
   x �yy� ! @ a b s t r u c t 
 M a k e   a   s u b   f o l d e r . 
 @ d e s c r i p t i o n 
 m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . 
v z{z i  |}| I      ��~���� 0 make_folder  ~ �� o      ���� 0 folder_name  ��  ��  } k     !�� ��� Z     ������� H     �� l    ������ I     �������� 0 item_exists  ��  ��  ��  ��  � L   	 �� m   	 
��
�� 
msng��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� I    ������� 	0 child  � ���� o    ���� 0 folder_name  ��  ��  � o      ���� 0 
new_folder  � ���� L    !�� n    ��� I     ������� 0 	make_path  � ���� J    ����  ��  ��  � o    ���� 0 
new_folder  ��  { ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct
Make folders which indicating the path of the XFile instance.
@description
Using a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.
@result script object or missing value : a XFile instance of newly created folder.
   � ��� ! @ a b s t r u c t 
 M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . 
� ��� i  ��� I      ������� 0 	make_path  � ���� o      ���� 0 opts  ��  ��  � k     R�� ��� r     ��� m     ��
�� boovfals� o      ���� 0 w_admin  � ��� Z    ������� =   	��� n    ��� m    ��
�� 
pcls� o    ���� 0 opts  � m    ��
�� 
reco� r    ��� n    ��� o    ���� 0 
with_admin  � o    ���� 0 opts  � o      ���� 0 w_admin  ��  ��  � ��� Z    0������� I    �������� 0 item_exists  ��  ��  � Z    ,������ I    #�������� 0 	is_folder  ��  ��  � L   & (��  f   & '��  � m   + ,��
�� 
msng��  ��  � ��� I  1 @����
�� .sysoexecTEXT���     TEXT� b   1 :��� m   1 2�� ���  m k d i r   - p  � l  2 9������ n   2 9��� 1   7 9��
�� 
strq� I   2 7�������� 0 
posix_path  ��  ��  ��  ��  � �����
�� 
badm� o   ; <���� 0 w_admin  ��  � ��� Z  A O������� I   A F�������� 0 item_exists  ��  ��  � L   I K��  f   I J��  ��  � ���� L   P R�� m   P Q��
�� 
msng��  � ��� l     ��������  ��  ��  � ��� l     ����~��  �  �~  � ��� l      �}���}  � 0 *!@group Reading and Writing File Contents    � ��� T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  � ��� l     �|�{�z�|  �{  �z  � ��� l      �y���y  � X R!@abstruct
Read file contents as UTF-8 encoded text.
@result Unicode text (UTF-8)
   � ��� � ! @ a b s t r u c t 
 R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t . 
 @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) 
� ��� i   ��� I      �x�w�v�x 0 read_as_utf8  �w  �v  � k     �� ��� I     �u�t�s�u !0 check_existance_raising_error  �t  �s  � ��r� L    �� I   �q��
�q .rdwrread****        ****� l   ��p�o� I    �n�m�l�n 0 as_alias  �m  �l  �p  �o  � �k��j
�k 
as  � m    �i
�i 
utf8�j  �r  � ��� l     �h�g�f�h  �g  �f  � ��� l      �e���e  � u o!@abstruct
Write data into the file as UTF-8 encoded text.
@param a_data (text) : data to write into the file.
   � ��� � ! @ a b s t r u c t 
 W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t . 
 @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . 
� ��� i  !$��� I      �d��c�d 0 write_as_utf8  � ��b� o      �a�a 
0 a_data  �b  �c  � k     %�� ��� r     ��� I    �`��
�` .rdwropenshor       file� I     �_�^�]�_ 0 as_furl  �^  �]  � �\	 �[
�\ 
perm	  m    �Z
�Z boovtrue�[  � o      �Y�Y 
0 output  � 			 I   �X		
�X .rdwrseofnull���     ****	 o    �W�W 
0 output  	 �V	�U
�V 
set2	 m    �T�T  �U  	 			 I   �S			
�S .rdwrwritnull���     ****	 o    �R�R 
0 a_data  		 �Q	
	
�Q 
refn	
 o    �P�P 
0 output  	 �O	�N
�O 
as  	 m    �M
�M 
utf8�N  	 	�L	 I    %�K	�J
�K .rdwrclosnull���     ****	 o     !�I�I 
0 output  �J  �L  � 			 l     �H�G�F�H  �G  �F  	 			 l      �E		�E  	 " !@group Parent and Children    	 �		 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  	 			 l     �D�C�B�D  �C  �B  	 			 l      �A		�A  	 � �!@abstruct
Obtain a folder containing the item referenced by the XFile instance.
@result script object : a XFile instance of the parent folder.
   	 �		  ! @ a b s t r u c t 
 O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . 
	 			 i  %(		 	 I      �@�?�>�@ 0 parent_folder  �?  �>  	  L     	!	! I     �=	"�<�= 0 make_with_pathinfo  	" 	#�;	# n   	$	%	$ n   	&	'	& I    �:�9�8�: 0 parent_folder  �9  �8  	' o    �7�7 0 	_pathinfo 	_pathInfo	%  f    �;  �<  	 	(	)	( l     �6�5�4�6  �5  �4  	) 	*	+	* l      �3	,	-�3  	,!@abstruct
Obtain an item in the folder with specifying a sub path from the target.
@description
If this methods is sent to non exsisting folder, missing value is returend.
@param suppath(text) :a sub path to obtain.
@result script object or missing value : a XFile instance
   	- �	.	.& ! @ a b s t r u c t 
 O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t . 
 @ d e s c r i p t i o n 
 I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d . 
 @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e 
	+ 	/	0	/ i  ),	1	2	1 I      �2	3�1�2 	0 child  	3 	4�0	4 o      �/�/ 0 subpath  �0  �1  	2 Z     	5	6�.	7	5 I     �-�,�+�- 0 item_exists_without_update  �,  �+  	6 L    	8	8 I    �*	9�)�* 0 make_with_pathinfo  	9 	:�(	: n  	 	;	<	; n  
 	=	>	= I    �'	?�&�' 	0 child  	? 	@�%	@ o    �$�$ 0 subpath  �%  �&  	> o   
 �#�# 0 	_pathinfo 	_pathInfo	<  f   	 
�(  �)  �.  	7 L    	A	A m    �"
�" 
msng	0 	B	C	B l     �!� ��!  �   �  	C 	D	E	D i  -0	F	G	F I      �	H�� 0 child_posix  	H 	I�	I o      �� 0 subpath  �  �  	G Z     "	J	K�	L	J I     ���� 0 item_exists  �  �  	K k    	M	M 	N	O	N r    	P	Q	P I    ���� 0 
posix_path  �  �  	Q o      �� 
0 a_path  	O 	R	S	R r    	T	U	T b    	V	W	V o    �� 
0 a_path  	W o    �� 0 subpath  	U o      �� 
0 a_path  	S 	X�	X L    	Y	Y I    �	Z�� 0 	make_with  	Z 	[�	[ o    �� 
0 a_path  �  �  �  �  	L L     "	\	\ m     !�

�
 
msng	E 	]	^	] l     �	���	  �  �  	^ 	_	`	_ l     ����  �  �  	` 	a	b	a l      �	c	d�  	c��!@abstruct
Obtain a XFile instance reference unique name item in the folder.
@description
If the instance's file reference is not a folder, missing value will be returned.
If this methods is sent to non existing item, error number 1350 will be raised.
@param a_candidate(text or list) :
A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.
@result script object : a XFile instance
   	d �	e	eT ! @ a b s t r u c t 
 O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r . 
 @ d e s c r i p t i o n 
 I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d . 
 I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d . 
 @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   : 
 A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 
	b 	f	g	f i  14	h	i	h I      �	j�� 0 unique_child  	j 	k� 	k o      ���� 0 a_candidate  �   �  	i k     w	l	l 	m	n	m l     ��	o	p��  	o   log "start unique_child"   	p �	q	q 2   l o g   " s t a r t   u n i q u e _ c h i l d "	n 	r	s	r Z     	t	u����	t H     	v	v I     �������� 0 	is_folder  ��  ��  	u k   	 	w	w 	x	y	x l  	 	��	z	{��  	z ' ! log "not folder " & posix_path()   	{ �	|	| B   l o g   " n o t   f o l d e r   "   &   p o s i x _ p a t h ( )	y 	}��	} L   	 	~	~ m   	 
��
�� 
msng��  ��  ��  	s 		�	 r    )	�	�	� n   	�	�	� I    ��	����� 0 
split_name  	� 	���	� o    ���� 0 a_candidate  ��  ��  	� o    ���� 0 pathinfo PathInfo	� J      	�	� 	�	�	� o      ���� 0 
a_basename  	� 	���	� o      ���� 0 a_suffix  ��  	� 	�	�	� Z   * ;	�	���	�	� =  * -	�	�	� o   * +���� 0 a_suffix  	� m   + ,��
�� 
msng	� r   0 3	�	�	� m   0 1	�	� �	�	�  	� o      ���� 0 a_suffix  ��  	� r   6 ;	�	�	� b   6 9	�	�	� m   6 7	�	� �	�	�  .	� o   7 8���� 0 a_suffix  	� o      ���� 0 a_suffix  	� 	�	�	� r   < ?	�	�	� m   < =���� 	� o      ���� 0 i  	� 	�	�	� r   @ C	�	�	� m   @ A	�	� �	�	�  	� o      ���� 0 escape_suffix  	� 	�	�	� T   D t	�	� k   I o	�	� 	�	�	� r   I U	�	�	� I   I S��	����� 	0 child  	� 	���	� b   J O	�	�	� b   J M	�	�	� o   J K���� 0 
a_basename  	� o   K L���� 0 escape_suffix  	� o   M N���� 0 a_suffix  ��  ��  	� o      ���� 0 a_child  	� 	���	� Z   V o	�	���	�	� n  V [	�	�	� I   W [�������� 0 item_exists  ��  ��  	� o   V W���� 0 a_child  	� k   ^ k	�	� 	�	�	� r   ^ e	�	�	� b   ^ c	�	�	� m   ^ _	�	� �	�	�  _	� l  _ b	�����	� c   _ b	�	�	� o   _ `���� 0 i  	� m   ` a��
�� 
ctxt��  ��  	� o      ���� 0 escape_suffix  	� 	���	� r   f k	�	�	� [   f i	�	�	� o   f g���� 0 i  	� m   g h���� 	� o      ���� 0 i  ��  ��  	� k   n o	�	� 	�	�	� l  n n��	�	���  	� !  log a_child's posix_path()   	� �	�	� 6   l o g   a _ c h i l d ' s   p o s i x _ p a t h ( )	� 	���	�  S   n o��  ��  	� 	���	� L   u w	�	� o   u v���� 0 a_child  ��  	g 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  58	�	�	� I      �������� 0 list_children  ��  ��  	� k     !	�	� 	�	�	� O     	�	�	� r    	�	�	� n   	�	�	� I    ��	����� D0  contentsofdirectoryatpath_error_  contentsOfDirectoryAtPath_error_	� 	�	�	� l   	�����	� n   	�	�	� n   	�	�	� I    �������� 0 
posix_path  ��  ��  	� o    ���� 0 	_pathinfo 	_pathInfo	�  f    ��  ��  	� 	���	� l   	�����	� m    ��
�� 
msng��  ��  ��  ��  	�  g    	� o      ���� 0 a_result  	� n    		�	�	� I    	��������  0 defaultmanager defaultManager��  ��  	� o     ���� 0 nsfilemanager NSFileManager	� 	���	� L    !	�	� c     	�	�	� o    ���� 0 a_result  	� m    ��
�� 
list��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	�<6!@abstruct
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. 
Each XFile instance in the target folder is passed to the &quot;do&quot; handler.
The do handler must return true or false. When the do handler return false, the process is stoped immediately.
@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
   	� �	�	�l ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   
 E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r . 
 T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y . 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
	� 	�	�	� i  9<	�	�	� I      ��	����� 0 each  	� 	���	� o      ���� 0 a_script  ��  ��  	� k     @
 
  


 r     


 I     �������� 0 list_children  ��  ��  
 o      ���� 
0 a_list  
 


 h    ��
�� 0 listwrapper ListWrapper
 j     ��

�� 
pcnt
 o     ���� 
0 a_list  
 
	


	 l   ��������  ��  ��  

 
��
 Y    @
��

��
 k    ;

 


 r    +


 I    )��
���� 	0 child  
 
��
 n    %


 4   " %��

�� 
cobj
 o   # $���� 0 n  
 n    "


 1     "��
�� 
pcnt
 o     ���� 0 listwrapper ListWrapper��  ��  
 o      ���� 
0 x_item  
 
��
 Z   , ;

����
 H   , 3

 n  , 2

 
 I   - 2��
!���� 0 do  
! 
"��
" o   - .���� 
0 x_item  ��  ��  
  o   , -���� 0 a_script  
  S   6 7��  ��  ��  �� 0 n  
 m    ���� 
 I   ��
#��
�� .corecnte****       ****
# o    ���� 
0 a_list  ��  ��  ��  	� 
$
%
$ l     ��������  ��  ��  
% 
&
'
& l      ��
(
)��  
( * $!@group Working with Shell Commands    
) �
*
* H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  
' 
+
,
+ l     ��������  ��  ��  
, 
-
.
- l      ��
/
0��  
/	!@abstruct
Run passed shell command taking the target as an argument.
@description
&quot;%s&quot; in the command will be replaced with the target's path.
@param a_command(text) : shell command including %s.
@result text : standard output of the shell command
   
0 �
1
1 ! @ a b s t r u c t 
 R u n   p a s s e d   s h e l l   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n 
 & q u o t ; % s & q u o t ;   i n   t h e   c o m m a n d   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t ' s   p a t h . 
 @ p a r a m   a _ c o m m a n d ( t e x t )   :   s h e l l   c o m m a n d   i n c l u d i n g   % s . 
 @ r e s u l t   t e x t   :   s t a n d a r d   o u t p u t   o f   t h e   s h e l l   c o m m a n d 

. 
2
3
2 i  =@
4
5
4 I      �
6�~� 0 perform_shell  
6 
7�}
7 o      �|�| 0 	a_command  �}  �~  
5 k     
8
8 
9
:
9 r     
;
<
; n    	
=
>
= 1    	�{
�{ 
strq
> n    
?
@
? 1    �z
�z 
strq
@ I     �y�x�w�y 0 normalized_posix_path  �x  �w  
< o      �v�v 
0 a_path  
: 
A�u
A L    
B
B I   �t
C�s
�t .sysoexecTEXT���     TEXT
C b    
D
E
D b    
F
G
F b    
H
I
H b    
J
K
J m    
L
L �
M
M  e v a l   $ ( p r i n t f  
K n   
N
O
N 1    �r
�r 
strq
O o    �q�q 0 	a_command  
I 1    �p
�p 
spac
G o    �o�o 
0 a_path  
E m    
P
P �
Q
Q  )�s  �u  
3 
R
S
R l     �n�m�l�n  �m  �l  
S 
T
U
T l      �k
V
W�k  
V � �!@abstruct
Run test command taking the target as an argument.
@param option(text) : 
An option to passed to the test command. See the man page of the test command.
@result boolean : true if test command successfully exits.
   
W �
X
X� ! @ a b s t r u c t 
 R u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ p a r a m   o p t i o n ( t e x t )   :   
 A n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . 

U 
Y
Z
Y i  AD
[
\
[ I      �j
]�i�j 0 
shell_test  
] 
^�h
^ o      �g�g 
0 option  �h  �i  
\ k     
_
_ 
`
a
` Q     
b
c
d
b I   �f
e�e
�f .sysoexecTEXT���     TEXT
e b    
f
g
f b    
h
i
h b    
j
k
j m    
l
l �
m
m 
 t e s t  
k o    �d�d 
0 option  
i 1    �c
�c 
spac
g I    �b�a�`�b 0 quoted_path  �a  �`  �e  
c R      �_�^�]
�_ .ascrerr ****      � ****�^  �]  
d L    
n
n m    �\
�\ boovfals
a 
o�[
o L    
p
p m    �Z
�Z boovtrue�[  
Z 
q
r
q l     �Y�X�W�Y  �X  �W  
r 
s
t
s l      �V
u
v�V  
u  == private *   
v �
w
w  = =   p r i v a t e   *
t 
x
y
x l     �U�T�S�U  �T  �S  
y 
z
{
z i  EH
|
}
| I      �R�Q�P�R 0 	deep_copy  �Q  �P  
} L     
~
~ I     �O
�N�O 0 make_with_pathinfo  
 
��M
� n   
�
�
� n   
�
�
� I    �L�K�J�L 	0 clone  �K  �J  
� o    �I�I 0 	_pathinfo 	_pathInfo
�  f    �M  �N  
{ 
�
�
� l     �H�G�F�H  �G  �F  
� 
�
�
� i  IL
�
�
� I      �E�D�C�E 0 item_ref  �D  �C  
� L     
�
� n    
�
�
� n   
�
�
� I    �B�A�@�B 0 item_ref  �A  �@  
� o    �?�? 0 	_pathinfo 	_pathInfo
�  f     
� 
�
�
� l     �>�=�<�>  �=  �<  
� 
�
�
� i  MP
�
�
� I      �;�:�9�; !0 check_existance_raising_error  �:  �9  
� k     !
�
� 
�
�
� l     �8
�
��8  
� 4 . my_log("start check_existance_raising_error")   
� �
�
� \   m y _ l o g ( " s t a r t   c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r " )
� 
��7
� Z     !
�
��6�5
� H     
�
� l    
��4�3
� n    
�
�
� n   
�
�
� I    �2�1�0�2 0 item_exists_without_update  �1  �0  
� o    �/�/ 0 	_pathinfo 	_pathInfo
�  f     �4  �3  
� R    �.
�
�
�. .ascrerr ****      � ****
� b    
�
�
� b    
�
�
� m    
�
� �
�
� 
 i t e m  
� n    
�
�
� 1    �-
�- 
strq
� l   
��,�+
� n   
�
�
� n   
�
�
� I    �*�)�(�* 0 as_text  �)  �(  
� o    �'�' 0 	_pathinfo 	_pathInfo
�  f    �,  �+  
� m    
�
� �
�
�     d o e s   n o t   e x i s t .
� �&
��%
�& 
errn
� m    �$�$F�%  �6  �5  �7  
� 
�
�
� l     �#�"�!�#  �"  �!  
� 
�
�
� i  QT
�
�
� I      � ���  0 update_pathinfo  �  �  
� k     $
�
� 
�
�
� r     
�
�
� n    
�
�
� I    �
��� 0 make_with_opts  
� 
�
�
� n   
�
�
� n   
�
�
� I    ���� 0 item_ref  �  �  
� o    �� 0 	_pathinfo 	_pathInfo
�  f    
� 
��
� K    
�
� �
��� 0 prefering_posix  
� n   
�
�
� n   
�
�
� I    ���� 0 is_posix  �  �  
� o    �� 0 	_pathinfo 	_pathInfo
�  f    �  �  �  
� o     �� 0 pathinfo PathInfo
� n     
�
�
� o    �� 0 	_pathinfo 	_pathInfo
�  f    
� 
��
� L    $
�
� n   #
�
�
� o     "�� 0 	_pathinfo 	_pathInfo
�  f     �  
� 
�
�
� l     ���
�  �  �
  
� 
�
�
� i  UX
�
�
� I      �	
���	 0 change_pathinfo  
� 
��
� o      �� 0 
a_pathinfo  �  �  
� k     
�
� 
�
�
� r     
�
�
� o     �� 0 
a_pathinfo  
� n     
�
�
� o    �� 0 	_pathinfo 	_pathInfo
�  f    
� 
�
�
� r    
�
�
� m    �
� 
msng
� n     
�
�
� o    
�� 0 _inforecord _infoRecord
�  f    
� 
�
�
� r    
�
�
� n   
�
�
� n   
�
�
� I    �� ��� 0 is_posix  �   ��  
� o    ���� 0 	_pathinfo 	_pathInfo
�  f    
� n     
�
�
� o    ���� 0 _prefer_posix  
�  f    
� 
���
� L    
�
�  f    ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� i  Y\
�
�
� I      ��
����� 0 
change_ref  
�  ��  o      ���� 0 file_ref  ��  ��  
� L      I     ������ 0 change_pathinfo   �� n    I    ������ 0 	make_with   �� o    ���� 0 file_ref  ��  ��   o    ���� 0 pathinfo PathInfo��  ��  
� 	 l     ��������  ��  ��  	 

 i  ]` I      �������� 0 dump  ��  ��   L      n     n    I    �������� 0 as_text  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f       l     ��������  ��  ��    l      ����   C = -- too much side effect
on log
	continue log dump()
end log
    � z   - -   t o o   m u c h   s i d e   e f f e c t 
 o n   l o g 
 	 c o n t i n u e   l o g   d u m p ( ) 
 e n d   l o g 
  l     ��������  ��  ��    i  ad I      �������� 	0 debug  ��  ��   k     $   !"! l     ��#$��  # ' !script "ModuleLoader"'s setup(me)   $ �%% B s c r i p t   " M o d u l e L o a d e r " ' s   s e t u p ( m e )" &'& l     ��������  ��  ��  ' ()( r     *+* c     ,-, l    .����. 4     ��/
�� 
psxf/ m    00 �11 r / U s e r s / t k u r i t a / D e v / A p p l e S c r i p t / L i b r a r i e s / X F i l e / h e l l o 2 . t x t��  ��  - m    ��
�� 
alis+ o      ���� 0 an_alias  ) 232 l  	 	��������  ��  ��  3 454 r   	 676 I   	 ��8���� 0 	make_with  8 9��9 o   
 ���� 0 an_alias  ��  ��  7 o      ���� 
0 x_file  5 :;: I   ��<��
�� .ascrcmnt****      � ****< n   =>= I    ��?���� 0 move_with_replacing  ? @��@ m    AA �BB � / U s e r s / t k u r i t a / D e v / A p p l e S c r i p t / L i b r a r i e s / X F i l e / m o v e - d e s t / h e l l o 2 . t x t��  ��  > o    ���� 
0 x_file  ��  ; CDC n   "EFE I    "�������� 0 
posix_path  ��  ��  F o    ���� 
0 x_file  D G��G l  # #��������  ��  ��  ��   HIH l     ��������  ��  ��  I JKJ i  ehLML I      �������� 0 open_helpbook  ��  ��  M Q     ,NOPN O   QRQ I   
 ��S���� 0 do  S T��T I   ��U��
�� .earsffdralis        afdrU  f    ��  ��  ��  R 4    ��V
�� 
scptV m    WW �XX  O p e n H e l p B o o kO R      ��YZ
�� .ascrerr ****      � ****Y o      ���� 0 msg  Z ��[��
�� 
errn[ o      ���� 	0 errno  ��  P k    ,\\ ]^] I   "������
�� .miscactvnull��� ��� null��  ��  ^ _��_ I  # ,��`��
�� .sysodisAaleR        TEXT` l  # (a����a b   # (bcb b   # &ded o   # $���� 0 msg  e o   $ %��
�� 
ret c o   & '���� 	0 errno  ��  ��  ��  ��  K fgf l     ��������  ��  ��  g hih i  iljkj I     ������
�� .aevtoappnull  �   � ****��  ��  k k     ll mnm l     ��op��  o  return debug()   p �qq  r e t u r n   d e b u g ( )n r��r I     �������� 0 open_helpbook  ��  ��  ��  i s��s l     ��������  ��  ��  ��       N��tuvwxy :��z{|}~�����������������������������������������������������������������  t L����������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A
�� 
pimr�� 0 pathinfo PathInfo�� 0 nsworkspace NSWorkspace�� 0 nsfilemanager NSFileManager�� 0 nsurl NSURL
�� 
pnam�� 0 _prefer_posix  �� 0 prefer_posix  �� 0 	make_with  �� 0 make_with_pathinfo  �� 0 change_name  �� 0 change_folder  �� 0 change_path_extension  � 0 as_alias  �~ 0 as_furl  �} 0 hfs_path  �| 0 
posix_path  �{ 0 normalized_posix_path  �z 0 quoted_path  �y 0 type_identifier  �x 0 	is_folder  �w 0 
is_package  �v 0 is_alias  �u 0 
is_symlink  �t 0 is_executable  �s 0 
is_visible  �r 0 	set_types  �q 0 info  �p 0 info_with_size  �o 0 re_info  �n 0 	item_name  �m 0 basename  �l 0 path_extension  �k 0 volume_name  �j 0 bundle_resource  �i $0 bundle_infoplist bundle_InfoPlist�h 0 bundle_resources_folder  �g 0 item_exists  �f 0 item_exists_without_update  
�e .coredoexbool       obj �d 0 	rename_to  �c 0 prepare_copy_move  �b 0 copy_to  �a 0 prepare_replacing  �` 0 copy_with_replacing  �_ 0 
replace_to  �^ 0 copy_with_opts  �] 0 finder_copy_to  �\ 
0 my_log  �[ 0 move_to  �Z 0 move_with_replacing  �Y 0 resolve_alias  �X 0 
into_trash  �W 
0 remove  �V 0 make_folder  �U 0 	make_path  �T 0 read_as_utf8  �S 0 write_as_utf8  �R 0 parent_folder  �Q 	0 child  �P 0 child_posix  �O 0 unique_child  �N 0 list_children  �M 0 each  �L 0 perform_shell  �K 0 
shell_test  �J 0 	deep_copy  �I 0 item_ref  �H !0 check_existance_raising_error  �G 0 update_pathinfo  �F 0 change_pathinfo  �E 0 
change_ref  �D 0 dump  �C 	0 debug  �B 0 open_helpbook  
�A .aevtoappnull  �   � ****u �@��@ �  ����� �?��
�? 
cobj� ��   �> 
�> 
scpt� �= �<
�= 
vers�<  � �;��:
�; 
cobj� ��   �9
�9 
osax�:  � �8��7
�8 
cobj� ��   �6 
�6 
frmk�7  � �5��4
�5 
cobj� ��   �3 !
�3 
frmk�4  v ��   �2 
�2 
scptw �� �1�0�
�1 misccura
�0 
pcls� ���  N S W o r k s p a c ex �� �/�.�
�/ misccura
�. 
pcls� ���  N S F i l e M a n a g e ry �� �-�,�
�- misccura
�, 
pcls� ��� 
 N S U R L
�� boovtruez �+ M�*�)���(�+ 0 prefer_posix  �* �'��' �  �&�& 0 bool  �)  � �%�% 0 bool  � �$�$ 0 _prefer_posix  �( �)�,F{ �# e�"�!��� �# 0 	make_with  �" ��� �  �� 0 file_ref  �!  � ���� 0 file_ref  � 
0 is_hfs  � 0 	path_info  � 	���� �����
� 
ctxt
� 
utxt
� 
TEXT
� 
pcls� 0 make_with_hfs  � 0 _prefer_posix  � 0 make_with_posix  � 0 make_with_pathinfo  �  YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ | � ������� 0 make_with_pathinfo  � ��� �  �� 0 	path_info  �  � ���
� 0 	path_info  � 0 a_parent  �
 0 xfile XFile� �	 ���	 0 xfile XFile� �������
� .ascrinit****      � ****� k     ��  ���  ���  ���  ���  �  �  � ���� 
� 
pare� 0 	_pathinfo 	_pathInfo� 0 _inforecord _infoRecord�  0 _prefer_posix  � ������������
�� 
pare�� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  � b  N  Ob   �O�Ob   j+ �� )E�O��K S�O�} �� ����������� 0 change_name  �� ����� �  ���� 
0 a_name  ��  � ������ 
0 a_name  �� 0 	path_info  � �������� 0 	_pathinfo 	_pathInfo�� 0 change_name  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ ~ �� ����������� 0 change_folder  �� ����� �  ���� 0 
folder_ref  ��  � ������ 0 
folder_ref  �� 0 	path_info  � �������� 0 	_pathinfo 	_pathInfo�� 0 change_folder  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+  ������������ 0 change_path_extension  �� ����� �  ���� 0 a_suffix  ��  � ���� 0 a_suffix  � �������� 0 	_pathinfo 	_pathInfo�� 0 change_path_extension  �� 0 make_with_pathinfo  �� *)�,�k+ k+ � ��3���������� 0 as_alias  ��  ��  �  � �������� !0 check_existance_raising_error  �� 0 	_pathinfo 	_pathInfo�� 0 as_alias  �� *j+  O)�,j+ � ��G���������� 0 as_furl  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 as_furl  �� 	)�,j+ � ��W���������� 0 hfs_path  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 hfs_path  �� 	)�,j+ � ��g���������� 0 
posix_path  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 
posix_path  �� 	)�,j+ � ��w���������� 0 normalized_posix_path  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 normalized_posix_path  �� 	)�,j+ � ������������� 0 quoted_path  ��  ��  �  � �������� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
strq�� )�,j+ �,E� ������������� 0 type_identifier  ��  ��  �  � ������������ "0 sharedworkspace sharedWorkspace�� 0 
posix_path  
�� 
msng�� &0 typeoffile_error_ typeOfFile_error_
�� 
ctxt�� b  j+   *)j+ �l+ �&U� �������� ���� 0 	is_folder  ��  ��  � ������ 
0 my_uti  �� 0 a_result    ����������� 0 type_identifier  �� "0 sharedworkspace sharedWorkspace�� ,0 type_conformstotype_ type_conformsToType_�� 3*j+  E�Ob  j+  ��lv� eE�Y *��l+ E�UO�OP� ����������� 0 
is_package  ��  ��     �������� "0 sharedworkspace sharedWorkspace�� 0 
posix_path  �� ,0 isfilepackageatpath_ isFilePackageAtPath_�� b  j+   *)j+ k+ OPU� ���������� 0 is_alias  ��  ��     ���� 0 type_identifier  �� 	�*j+  � ���������� 0 
is_symlink  ��  ��     "���� 0 type_identifier  �� 	�*j+  � ��.�������� 0 is_executable  ��  ��     ��������  0 defaultmanager defaultManager�� 0 
posix_path  �� 20 isexecutablefileatpath_ isExecutableFileAtPath_�� b  j+   *)j+ k+ U� ��E����	
���� 0 
is_visible  ��  ��  	 ���� 0 info_rec  
 ������ 0 info  
�� 
pvis�� *j+  E�O��,E� ��Y������� 0 	set_types  �� �~�~   �}�|�} 0 creator_code  �| 0 	type_code  ��   �{�z�y�{ 0 creator_code  �z 0 	type_code  �y 
0 a_file   �x�w}�v�u�t�s�x 0 	is_folder  �w 0 as_alias  
�v 
fcrt
�u 
asty
�t 
msng�s 0 _inforecord _infoRecord� ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h� �r��q�p�o�r 0 info  �q  �p     �n�m�l�k�j�i�n 0 _inforecord _infoRecord
�m 
msng�l !0 check_existance_raising_error  �k 0 as_furl  
�j 
ptsz
�i .sysonfo4asfe        file�o ()�,�  *j+ O*j+ �fl )�,FY hO)�,E� �h��g�f�e�h 0 info_with_size  �g  �f     �d�c�b�a�`�_�d 0 _inforecord _infoRecord
�c 
msng�b !0 check_existance_raising_error  �a 0 as_furl  
�` 
ptsz
�_ .sysonfo4asfe        file�e D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,E� �^��]�\�[�^ 0 re_info  �]  �\     �Z�Y�X�W�V�U�Z 0 _inforecord _infoRecord
�Y 
msng
�X 
ptsz
�W 
bool�V 0 as_furl  
�U .sysonfo4asfe        file�[ <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,E� �T�S�R�Q�T 0 	item_name  �S  �R     �P�O�P 0 	_pathinfo 	_pathInfo�O 0 	item_name  �Q 	)�,j+ � �N-�M�L�K�N 0 basename  �M  �L     �J�I�J 0 	_pathinfo 	_pathInfo�I 0 basename  �K 	)�,j+ � �H=�G�F�E�H 0 path_extension  �G  �F     �D�C�D 0 	_pathinfo 	_pathInfo�C 0 path_extension  �E 	)�,j+ � �BM�A�@�?�B 0 volume_name  �A  �@     �>�=�> 0 	_pathinfo 	_pathInfo�= 0 volume_name  �? 	)�,j+ � �<d�;�:�9�< 0 bundle_resource  �; �8�8   �7�7 0 resource_name  �:   �6�6 0 resource_name   �5�4�3�2
�5 
in B�4 0 as_alias  
�3 .sysorpthalis        TEXT�2 0 	make_with  �9 *��*j+ l k+ � �1x�0�/ �.�1 $0 bundle_infoplist bundle_InfoPlist�0  �/      |�-�- 0 child_posix  �. *�k+ � �,��+�*!"�)�, 0 bundle_resources_folder  �+  �*  !  " ��(�( 0 child_posix  �) *�k+ � �'��&�%#$�$�' 0 item_exists  �&  �%  #  $ �#�"�# 0 	_pathinfo 	_pathInfo�" 0 item_exists  �$ 	)�,j+ � �!�� �%&��! 0 item_exists_without_update  �   �  %  & ��� 0 	_pathinfo 	_pathInfo� 0 item_exists_without_update  � 	)�,j+ � ����'(�
� .coredoexbool       obj �  �  '  ( �� 0 item_exists  � *j+  � ����)*�� 0 	rename_to  � �+� +  �� 0 new_name  �  ) ���� 0 new_name  � 0 dest  � 0 a_result  * ����
�	��� 0 	_pathinfo 	_pathInfo� 0 change_name  �  0 defaultmanager defaultManager�
 0 
posix_path  
�	 
msng� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_� 0 _inforecord _infoRecord� D)�,�k+ E�Ob  j+  *)�,j+ �j+ �m+ E�UO� �)�,FO�)�,FY hO�� ���,-�� 0 prepare_copy_move  � �.� .  �� 0 a_destination  �  , � ���  0 a_destination  �� 0 a_class  - ����������/���������� 0 item_exists  
�� .ascrcmnt****      � ****
�� 
msng
�� 
pcls
�� 
ctxt�� 0 	make_with  �� 0 parent_folder  �� 	0 child  
�� 
scpt� X*j+   �j O�Y hO��,E�O��  "�� *�k+ E�Y *j+ �k+ 	E�Y �� *�k+ E�Y hO�� ��R����/0���� 0 copy_to  �� ��1�� 1  ���� 0 a_destination  ��  / ������ 0 a_destination  �� 0 a_result  0 	�������������������� 0 prepare_copy_move  
�� 
msng�� 0 item_exists_without_update  �� 0 	is_folder  �� 0 	item_name  �� 	0 child  ��  0 defaultmanager defaultManager�� 0 
posix_path  �� <0 copyitematpath_topath_error_ copyItemAtPath_toPath_error_�� k*�k+  E�O��  �Y hO�j+  �j+  �*j+ k+ E�Y �Y hOb  j+  *)j+ �j+ �m+ E�UO� �Y hO�� �������23���� 0 prepare_replacing  �� ��4�� 4  ���� 0 a_destination  ��  2 ������������ 0 a_destination  �� 0 escaped_item  �� 0 dest_exists  �� 0 	dest_path  �� 
0 uchild  3 �����������������������
�� 
msng�� 0 item_exists_without_update  �� 0 	is_folder  �� 0 	item_name  �� 	0 child  �� 0 
posix_path  �� 0 parent_folder  �� 0 unique_child  �� 0 move_to  
�� .ascrcmnt****      � ****�� 0 	make_with  �� ��E�O�j+  seE�O�j+  �*j+ k+ E�O�j+ E�Y hO� F� 5*E�O*j+ E�O*j+ *j+ k+ E�O*�k+  �j 
OfY hUO*�k+ E�Y hY hO��lv� ������56���� 0 copy_with_replacing  �� ��7�� 7  ���� 0 a_destination  ��  5 �������� 0 a_destination  �� 0 escaped_item  �� 0 a_result  6 ��������������QS�������� 0 prepare_copy_move  
�� 
msng�� 0 prepare_replacing  
�� 
cobj��  0 defaultmanager defaultManager�� 0 
posix_path  �� <0 copyitematpath_topath_error_ copyItemAtPath_toPath_error_
�� .ascrcmnt****      � ****�� 0 move_to  �� 
0 remove  �� �*�k+  E�O��  �Y hO*�k+ E[�k/E�Z[�l/E�ZOb  j+  *)j+ �j+ �m+ E�UO� )�b  %�%�j+ %j 	O�� ��k+ 
Y hY hO�� 
�j+ Y hO�� ��u����89���� 0 
replace_to  �� ��:�� :  ���� 0 a_destination  ��  8 ������ 0 a_destination  �� 0 a_result  9 ������������������������������
�� 
pcls
�� 
scpt�� 0 	make_with  �� 0 item_exists  �� 0 	is_folder  �� 0 	item_name  �� 	0 child  ��  0 defaultmanager defaultManager�� 0 	_pathinfo 	_pathInfo�� 0 as_nsurl as_NSURL
�� 
msng�� �� �0 Mreplaceitematurl_withitematurl_backupitemname_options_resultingitemurl_error_ MreplaceItemAtURL_withItemAtURL_backupItemName_options_resultingItemURL_error_�� 0 item_ref  �� 0 
change_ref  �� z��,� *�k+ E�Y hO�j+  �j+  �*j+ k+ E�Y fY hOb  j+  *��,j+ 	)�,j+ 	�j���+ E�OPUO� *�j+ k+ Y hO�� �������;<���� 0 copy_with_opts  �� ��=�� =  ������ 0 a_destination  �� 0 opts  ��  ; ������������������������ 0 a_destination  �� 0 opts  �� 0 w_replacing  �� 0 w_admin  �� 0 
w_removing  �� 0 command  �� 0 com_opts  �� 0 is_folder_to  �� 0 destination_path  �� 0 source_path  �� 0 	a_command  < ����������������4����������U\ekp���������������~�}
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
� 
badm
�~ .sysoexecTEXT���     TEXT�} 0 	item_name  ��9eE�OfE�OfE�O�E�O��,�  U 
��,E�W X  hO 
��,E�W X  hO 
��,E�W X  hO ��,E �E�Y hW X  hY hO���mv��, *j+ �k+ E�Y hO��  a E�O� �a %E�Y hY �a   
a E�Y hOfE�O�j+  $� 
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�� �|��{�z>?�y�| 0 finder_copy_to  �{ �x@�x @  �w�v�w 0 a_destination  �v 0 with_replacing  �z  > �u�t�s�r�q�u 0 a_destination  �t 0 with_replacing  �s 0 destination  �r 0 source_alias  �q 0 new_item  ? �p��o�n�m�l�k�j�p 0 as_alias  
�o 
insh
�n 
alrp�m 
�l .coreclon****      � ****
�k 
alis�j 0 	make_with  �y +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ � �i��h�gAB�f�i 
0 my_log  �h �eC�e C  �d�d 
0 a_text  �g  A �c�c 
0 a_text  B �b�a
�b 
ascr
�a .ascrcmnt****      � ****�f � �j U� �`��_�^DE�]�` 0 move_to  �_ �\F�\ F  �[�[ 0 a_destination  �^  D �Z�Y�Z 0 a_destination  �Y 0 a_result  E �X�W�V�U�T�S�R�Q�P�O�N�X 0 prepare_copy_move  
�W 
msng�V 0 item_exists  �U 0 	is_folder  �T 0 	item_name  �S 	0 child  �R  0 defaultmanager defaultManager�Q 0 
posix_path  �P <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_�O 0 item_ref  �N 0 
change_ref  �] r*�k+  E�O��  fY hO�j+  �j+  �*j+ k+ E�Y fY hOb  j+  *)j+ �j+ �m+ E�UO� *�j+ 	k+ 
Y hO�� �MZ�L�KGH�J�M 0 move_with_replacing  �L �II�I I  �H�H 0 a_destination  �K  G �G�F�E�G 0 a_destination  �F 0 escaped_item  �E 0 a_result  H �D�C�B�A�@�?�>�=�<�;�:�D 0 prepare_copy_move  
�C 
msng�B 0 prepare_replacing  
�A 
cobj�@  0 defaultmanager defaultManager�? 0 
posix_path  �> <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_�= 
0 remove  �< 0 item_ref  �; 0 
change_ref  �: 0 move_to  �J �*�k+  E�O��  fY hO*�k+ E[�k/E�Z[�l/E�ZOb  j+  *)j+ �j+ �m+ E�UO� �� 
�j+ Y hO*�j+ k+ 	Y �� ��k+ 
Y hO�� �9��8�7JK�6�9 0 resolve_alias  �8  �7  J �5�4�5 0 
x_original  �4 0 original_url  K �3�2�1�0�/�.�-�,�+�*�)�3 0 
is_symlink  �2 0 	deep_copy  �1 0 item_exists  
�0 
msng�/ 0 is_alias  �. 0 	_pathinfo 	_pathInfo�- 0 as_nsurl as_NSURL�, Z0 +urlbyresolvingaliasfileaturl_options_error_ +URLByResolvingAliasFileAtURL_options_error_�+ 0 path  
�* 
ctxt�) 0 	make_with  �6 d*j+   *j+ E�O�j+  �Y �Y hO*j+  )Y hOb  )�,j+ j�m+ E�O��  �Y hO*�j+ �&k+ 
� �(�'�&LM�%�( 0 
into_trash  �'  �&  L �$�$ 0 a_result  M 	�#�"�!� ������#  0 defaultmanager defaultManager�" 0 	_pathinfo 	_pathInfo�! 0 as_nsurl as_NSURL
�  
msng� P0 &trashitematurl_resultingitemurl_error_ &trashItemAtURL_resultingItemURL_error_
� afdmtrsh
� .earsffdralis        afdr� 0 change_folder  � 0 change_pathinfo  �% 8b  j+   *)�,j+ ��m+ E�UO� *)�,�j k+ k+ Y h� �<��NO�� 
0 remove  �  �  N ��� 
0 a_path  � 0 a_result  O ��������� 0 	_pathinfo 	_pathInfo� 0 as_text  �  0 defaultmanager defaultManager� 0 
posix_path  
� 
msng� 20 removeitematpath_error_ removeItemAtPath_error_� 0 	_item_ref  � 0 _inforecord _infoRecord� >)�,j+ E�Ob  j+  *)j+ �l+ E�UO� �)�,�,FO�)�,FY hO�� �}��
PQ�	� 0 make_folder  � �R� R  �� 0 folder_name  �
  P ��� 0 folder_name  � 0 
new_folder  Q ����� 0 item_exists  
� 
msng� 	0 child  � 0 	make_path  �	 "*j+   �Y hO*�k+ E�O�jvk+ � � �����ST���  0 	make_path  �� ��U�� U  ���� 0 opts  ��  S ������ 0 opts  �� 0 w_admin  T ���������������������
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
O*j+  )Y hO�� �������VW���� 0 read_as_utf8  ��  ��  V  W ������������ !0 check_existance_raising_error  �� 0 as_alias  
�� 
as  
�� 
utf8
�� .rdwrread****        ****�� *j+  O*j+ ��l � �������XY���� 0 write_as_utf8  �� ��Z�� Z  ���� 
0 a_data  ��  X ������ 
0 a_data  �� 
0 output  Y ������������������������ 0 as_furl  
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
� ��	 ����[\���� 0 parent_folder  ��  ��  [  \ �������� 0 	_pathinfo 	_pathInfo�� 0 parent_folder  �� 0 make_with_pathinfo  �� *)�,j+ k+ � ��	2����]^���� 	0 child  �� ��_�� _  ���� 0 subpath  ��  ] ���� 0 subpath  ^ ������������ 0 item_exists_without_update  �� 0 	_pathinfo 	_pathInfo�� 	0 child  �� 0 make_with_pathinfo  
�� 
msng�� *j+   *)�,�k+ k+ Y �� ��	G����`a���� 0 child_posix  �� ��b�� b  ���� 0 subpath  ��  ` ������ 0 subpath  �� 
0 a_path  a ���������� 0 item_exists  �� 0 
posix_path  �� 0 	make_with  
�� 
msng�� #*j+   *j+ E�O��%E�O*�k+ Y �� ��	i����cd���� 0 unique_child  �� ��e�� e  ���� 0 a_candidate  ��  c �������������� 0 a_candidate  �� 0 
a_basename  �� 0 a_suffix  �� 0 i  �� 0 escape_suffix  �� 0 a_child  d ��������	�	�	�����	����� 0 	is_folder  
�� 
msng�� 0 
split_name  
�� 
cobj�� 	0 child  �� 0 item_exists  
�� 
ctxt�� x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ��&%E�O�kE�Y [OY��O�� ��	�����fg���� 0 list_children  ��  ��  f ���� 0 a_result  g ��������������  0 defaultmanager defaultManager�� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
msng�� D0  contentsofdirectoryatpath_error_  contentsOfDirectoryAtPath_error_
�� 
list�� "b  j+   *)�,j+ �l+ E�UO��&� ��	�����hi���� 0 each  �� ��j�� j  ���� 0 a_script  ��  h ������ 0 a_script  � 
0 a_list  � 0 listwrapper ListWrapper� 0 n  � 
0 x_item  i 	��
k������ 0 list_children  � 0 listwrapper ListWrapperk �l��mn�
� .ascrinit****      � ****l k     oo 
��  �  �  m �~
�~ 
pcntn �}
�} 
pcnt� b  �
� .corecnte****       ****
� 
pcnt
� 
cobj� 	0 child  � 0 do  �� A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��� �|
5�{�zpq�y�| 0 perform_shell  �{ �xr�x r  �w�w 0 	a_command  �z  p �v�u�v 0 	a_command  �u 
0 a_path  q �t�s
L�r
P�q�t 0 normalized_posix_path  
�s 
strq
�r 
spac
�q .sysoexecTEXT���     TEXT�y *j+  �,�,E�O��,%�%�%�%j � �p
\�o�nst�m�p 0 
shell_test  �o �lu�l u  �k�k 
0 option  �n  s �j�j 
0 option  t 
l�i�h�g�f�e
�i 
spac�h 0 quoted_path  
�g .sysoexecTEXT���     TEXT�f  �e  �m   �%�%*j+ %j W 	X  fOe� �d
}�c�bvw�a�d 0 	deep_copy  �c  �b  v  w �`�_�^�` 0 	_pathinfo 	_pathInfo�_ 	0 clone  �^ 0 make_with_pathinfo  �a *)�,j+ k+ � �]
��\�[xy�Z�] 0 item_ref  �\  �[  x  y �Y�X�Y 0 	_pathinfo 	_pathInfo�X 0 item_ref  �Z 	)�,j+ � �W
��V�Uz{�T�W !0 check_existance_raising_error  �V  �U  z  { �S�R�Q�P
��O�N
��S 0 	_pathinfo 	_pathInfo�R 0 item_exists_without_update  
�Q 
errn�PF�O 0 as_text  
�N 
strq�T ")�,j+  )��l�)�,j+ �,%�%Y h� �M
��L�K|}�J�M 0 update_pathinfo  �L  �K  |  } �I�H�G�F�E�I 0 	_pathinfo 	_pathInfo�H 0 item_ref  �G 0 prefering_posix  �F 0 is_posix  �E 0 make_with_opts  �J %b  )�,j+ �)�,j+ ll+ )�,FO)�,E� �D
��C�B~�A�D 0 change_pathinfo  �C �@��@ �  �?�? 0 
a_pathinfo  �B  ~ �>�> 0 
a_pathinfo   �=�<�;�:�9�= 0 	_pathinfo 	_pathInfo
�< 
msng�; 0 _inforecord _infoRecord�: 0 is_posix  �9 0 _prefer_posix  �A �)�,FO�)�,FO)�,j+ )�,FO)� �8
��7�6���5�8 0 
change_ref  �7 �4��4 �  �3�3 0 file_ref  �6  � �2�2 0 file_ref  � �1�0�1 0 	make_with  �0 0 change_pathinfo  �5 *b  �k+  k+ � �/�.�-���,�/ 0 dump  �.  �-  �  � �+�*�+ 0 	_pathinfo 	_pathInfo�* 0 as_text  �, 	)�,j+ � �)�(�'���&�) 	0 debug  �(  �'  � �%�$�% 0 an_alias  �$ 
0 x_file  � �#0�"�!A� ��
�# 
psxf
�" 
alis�! 0 	make_with  �  0 move_with_replacing  
� .ascrcmnt****      � ****� 0 
posix_path  �& %)��/�&E�O*�k+ E�O��k+ j O�j+ OP� �M������ 0 open_helpbook  �  �  � ��� 0 msg  � 	0 errno  � 	�W�������
� 
scpt
� .earsffdralis        afdr� 0 do  � 0 msg  � ���
� 
errn� 	0 errno  �  
� .miscactvnull��� ��� null
� 
ret 
� .sysodisAaleR        TEXT� - )��/ *)j k+ UW X  *j O��%�%j � �k�����

� .aevtoappnull  �   � ****�  �  �  � �	�	 0 open_helpbook  �
 *j+  ascr  ��ޭ