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
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	    C o p y r i g h t   ( C )   2 0 0 7 - 2 0 2 0   T e t s u r o   K U R I T A 
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
 X F i l e 8  < = < l     ��������  ��  ��   =  > ? > l      �� @ A��   @	3	-!@references
PathInfo || help:openbook='net.script-factory.PathInfo.help'
Home page || http://www.script-factory.net/XModules/XFile/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XFile/changelog.html
Repository || https://github.com/tkurita/XFile.scptd

@title XFile Reference
* Version : 1.8
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

    A � B BZ ! @ r e f e r e n c e s 
 P a t h I n f o   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . P a t h I n f o . h e l p ' 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X F i l e / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X F i l e / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X F i l e . s c p t d 
 
 @ t i t l e   X F i l e   R e f e r e n c e 
 *   V e r s i o n   :   1 . 8 
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
 	��  � ��� l     ��������  ��  ��  � ��� l      ������  � n h!@abstruct
Check whether the item is a package or not.
@result boolean : true if the item is a package.
   � ��� � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   a   p a c k a g e   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   p a c k a g e . 
� ��� i   � ���� I      �������� 0 
is_package  ��  ��  � O     ��� k    �� ��� L    �� n   ��� I    ������� ,0 isfilepackageatpath_ isFilePackageAtPath_� ���� l   ������ n   ��� I    �������� 0 
posix_path  ��  ��  �  f    ��  ��  ��  ��  �  g    � ���� l   ������  � P J return its type:(my type_identifier()) conformsToType:"com.apple.package"   � ��� �   r e t u r n   i t s   t y p e : ( m y   t y p e _ i d e n t i f i e r ( ) )   c o n f o r m s T o T y p e : " c o m . a p p l e . p a c k a g e "��  � n    	��� I    	�������� "0 sharedworkspace sharedWorkspace��  ��  � o     ���� 0 nsworkspace NSWorkspace� ��� l     ��������  ��  ��  � ��� l      �� ��    v p!@abstruct
Check whether the item is an alias file or not.
@result boolean : true if the item is an alias file.
    � � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . 
�  i   � � I      �������� 0 is_alias  ��  ��   L      l    ���� =    	
	 m      � ( c o m . a p p l e . a l i a s - f i l e
 I    �������� 0 type_identifier  ��  ��  ��  ��    l     ��������  ��  ��    l      ����   z t!@abstruct
Check whether the item is a symbolic link or not.
@result boolean : true if the item is a symbolic link.
    � � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k . 
  i   � � I      �������� 0 
is_symlink  ��  ��   L      l    ���� =     m      �  p u b l i c . s y m l i n k I    �������� 0 type_identifier  ��  ��  ��  ��    l     ��������  ��  ��    !  l      ��"#��  " j d!@abstruct
Check whether the item is visible or not.
@result boolean : true if the item is visible.
   # �$$ � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e . 
! %&% i   � �'(' I      �������� 0 
is_visible  ��  ��  ( k     )) *+* r     ,-, I     �������� 0 info  ��  ��  - o      ���� 0 info_rec  + .��. L    // n    010 1   	 ��
�� 
pvis1 o    	���� 0 info_rec  ��  & 232 l     ��������  ��  ��  3 454 l      ��67��  6 � �!@abstruct
Set creator code and type code to the item.
@param creator_code (text) : creator code which consists of 4 characters
@param type_code (text) : type code which consists of 4 characters
   7 �88� ! @ a b s t r u c t 
 S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m . 
 @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s 
 @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s 
5 9:9 i   � �;<; I      ��=���� 0 	set_types  = >?> o      ���� 0 creator_code  ? @��@ o      ���� 0 	type_code  ��  ��  < k     +AA BCB l     ��DE��  D V P difficult to implemented with NSFileManager's setAttributes:ofItemAtPath:error:   E �FF �   d i f f i c u l t   t o   i m p l e m e n t e d   w i t h   N S F i l e M a n a g e r ' s   s e t A t t r i b u t e s : o f I t e m A t P a t h : e r r o r :C G��G Z     +HI���H H     JJ I     �~�}�|�~ 0 	is_folder  �}  �|  I k   	 'KK LML r   	 NON I   	 �{�z�y�{ 0 as_alias  �z  �y  O o      �x�x 
0 a_file  M PQP O    !RSR k     TT UVU r    WXW o    �w�w 0 creator_code  X n      YZY 1    �v
�v 
fcrtZ o    �u�u 
0 a_file  V [�t[ r     \]\ o    �s�s 0 	type_code  ] n      ^_^ 1    �r
�r 
asty_ o    �q�q 
0 a_file  �t  S m    ``�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  Q a�pa r   " 'bcb m   " #�o
�o 
msngc n     ded o   $ &�n�n 0 _inforecord _infoRecorde  f   # $�p  ��  �  ��  : fgf l     �m�l�k�m  �l  �k  g hih l      �jjk�j  j!@abstruct
Obtain file information.
@description
Do &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().
The size of the target will not be included.
@result file infomation(record) : a result of info for command.
   k �ll( ! @ a b s t r u c t 
 O b t a i n   f i l e   i n f o r m a t i o n . 
 @ d e s c r i p t i o n 
 D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) . 
 T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d . 
 @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . 
i mnm i   � �opo I      �i�h�g�i 0 info  �h  �g  p k     'qq rsr Z     !tu�f�et =    vwv n    xyx o    �d�d 0 _inforecord _infoRecordy  f     w m    �c
�c 
msngu k    zz {|{ I    �b�a�`�b !0 check_existance_raising_error  �a  �`  | }�_} r    ~~ I   �^��
�^ .sysonfo4asfe        file� I    �]�\�[�] 0 as_furl  �\  �[  � �Z��Y
�Z 
ptsz� m    �X
�X boovfals�Y   n     ��� o    �W�W 0 _inforecord _infoRecord�  f    �_  �f  �e  s ��V� L   " '�� n  " &��� o   # %�U�U 0 _inforecord _infoRecord�  f   " #�V  n ��� l     �T�S�R�T  �S  �R  � ��� l      �Q���Q  �82!@abstruct
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
� ��� i   � ���� I      �P�O�N�P 0 info_with_size  �O  �N  � k     C�� ��� Z     =����M� =    ��� n    ��� o    �L�L 0 _inforecord _infoRecord�  f     � m    �K
�K 
msng� k    �� ��� I    �J�I�H�J !0 check_existance_raising_error  �I  �H  � ��G� r    ��� I   �F��
�F .sysonfo4asfe        file� I    �E�D�C�E 0 as_furl  �D  �C  � �B��A
�B 
ptsz� m    �@
�@ boovtrue�A  � n     ��� o    �?�? 0 _inforecord _infoRecord�  f    �G  � ��� =    '��� n     %��� 1   # %�>
�> 
ptsz� n    #��� o   ! #�=�= 0 _inforecord _infoRecord�  f     !� m   % &�<
�< 
msng� ��;� r   * 9��� I  * 5�:��
�: .sysonfo4asfe        file� I   * /�9�8�7�9 0 as_furl  �8  �7  � �6��5
�6 
ptsz� m   0 1�4
�4 boovtrue�5  � n     ��� o   6 8�3�3 0 _inforecord _infoRecord�  f   5 6�;  �M  � ��2� L   > C�� n  > B��� o   ? A�1�1 0 _inforecord _infoRecord�  f   > ?�2  � ��� l     �0�/�.�0  �/  �.  � ��� l      �-���-  � � �!@abstruct
Obtain file information again.
@description
Do "info for" command for the item and reset the cache of ((<info>))().
@result file infomation(record) : a result of info for command.
   � ���~ ! @ a b s t r u c t 
 O b t a i n   f i l e   i n f o r m a t i o n   a g a i n . 
 @ d e s c r i p t i o n 
 D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) . 
 @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . 
� ��� i   � ���� I      �,�+�*�, 0 re_info  �+  �*  � k     ;�� ��� Z     5���)�� F     ��� l    ��(�'� >    ��� n    ��� o    �&�& 0 _inforecord _infoRecord�  f     � m    �%
�% 
msng�(  �'  � l 	  ��$�#� l   ��"�!� >   ��� n    ��� 1    � 
�  
ptsz� n   ��� o   	 �� 0 _inforecord _infoRecord�  f    	� m    �
� 
msng�"  �!  �$  �#  � r    #��� I   ���
� .sysonfo4asfe        file� I    ���� 0 as_furl  �  �  � ���
� 
ptsz� m    �
� boovtrue�  � n     ��� o     "�� 0 _inforecord _infoRecord�  f     �)  � r   & 5��� I  & 1���
� .sysonfo4asfe        file� I   & +���� 0 as_furl  �  �  � ���
� 
ptsz� m   , -�
� boovfals�  � n     ��� o   2 4�� 0 _inforecord _infoRecord�  f   1 2� ��� L   6 ;�� n  6 :��� o   7 9�� 0 _inforecord _infoRecord�  f   6 7�  � ��� l     ��
�	�  �
  �	  � ��� l      ����  � % !@group Obtain Path Infomation    � ��� > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  � ��� l     ����  �  �  � ��� l      ����  � W Q!@abstruct 
Obtain the name of the item referenced by the instance 
@result text
   � ��� � ! @ a b s t r u c t   
 O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   
 @ r e s u l t   t e x t 
� ��� i   � �� � I      ���� 0 	item_name  �  �    L      n     n    I    � �����  0 	item_name  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f     �  l     ��������  ��  ��   	 l      ��
��  
 � �!@abstruct 
Obtain the base name (a name which does not include path extension) of the item referenced by the instance.
@result text
    �
 ! @ a b s t r u c t   
 O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ r e s u l t   t e x t 
	  i   � � I      �������� 0 basename  ��  ��   L      n     n    I    �������� 0 basename  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f       l     ��������  ��  ��    l      ����   � �!@abstruct 
Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.
@result text
    �� ! @ a b s t r u c t   
 O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n . 
 @ r e s u l t   t e x t 
  i   � �  I      �������� 0 path_extension  ��  ��    L     !! n    "#" n   $%$ I    �������� 0 path_extension  ��  ��  % o    ���� 0 	_pathinfo 	_pathInfo#  f      &'& l     ��������  ��  ��  ' ()( l      ��*+��  * ^ X!@abstruct 
Obtain the volume name of the item referenced by the instance.
@result text
   + �,, � ! @ a b s t r u c t   
 O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ r e s u l t   t e x t 
) -.- i   � �/0/ I      �������� 0 volume_name  ��  ��  0 L     11 n    232 n   454 I    �������� 0 volume_name  ��  ��  5 o    ���� 0 	_pathinfo 	_pathInfo3  f     . 676 l     ��������  ��  ��  7 898 l      ��:;��  : $ !@group Working with a Bundle    ; �<< < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e  9 =>= l     ��������  ��  ��  > ?@? l      ��AB��  A � �!@abstruct
Obtain an item which is in the bundle resource folder.
@description
This method can be call to a bundle.
@param resource_name (text) : a resource name
@result script object : a XFile instance
   B �CC� ! @ a b s t r u c t 
 O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r . 
 @ d e s c r i p t i o n 
 T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e . 
 @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 
@ DED i   � �FGF I      ��H���� 0 bundle_resource  H I��I o      ���� 0 resource_name  ��  ��  G L     JJ I     ��K���� 0 	make_with  K L��L I   ��MN
�� .sysorpthalis        TEXTM o    ���� 0 resource_name  N ��O��
�� 
in BO l   P����P I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��  E QRQ l     ��������  ��  ��  R STS l      ��UV��  U j d!@abstruct
Obtain a reference to Info.plist of the bundle.
@result script object : a XFile instance
   V �WW � ! @ a b s t r u c t 
 O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 
T XYX i   � �Z[Z I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  [ L     \\ I     ��]���� 0 child_posix  ] ^��^ m    __ �`` & C o n t e n t s / I n f o . p l i s t��  ��  Y aba l     ��������  ��  ��  b cdc i   � �efe I      �������� 0 bundle_resources_folder  ��  ��  f L     gg I     ��h���� 0 child_posix  h i��i m    jj �kk & C o n t e n t s / R e s o u r c e s /��  ��  d lml l     ��������  ��  ��  m non l      ��pq��  p ! !@group File Manipulations    q �rr 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  o sts l     ��������  ��  ��  t uvu l      ��wx��  w/)!@abstruct
Check whether the item referenced by the instance exists or not.
@description
A file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.
@result boolean : true if the item exists.
   x �yyR ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t . 
 @ d e s c r i p t i o n 
 A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . 
v z{z i   � �|}| I      �������� 0 item_exists  ��  ��  } L     ~~ n    � n   ��� I    �������� 0 item_exists  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     { ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Check whether the item referenced by the instance exists or not.
@description
The internal file reference will not be changed unlike ((<item_exists>)).
@result boolean : true if the item exists.
   � ���� ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t . 
 @ d e s c r i p t i o n 
 T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . 
� ��� i   � ���� I      �������� 0 item_exists_without_update  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Synonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.
@result boolean : true if the item exists.
   � ���* ! @ a b s t r u c t 
 S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . 
� ��� i   � ���� I     ������
�� .coredoexbool       obj ��  ��  � L     �� I     �������� 0 item_exists  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � l f!@abstruct
Rename an item which referenced by the XFile instance.
@result boolean : true if succeded.
   � ��� � ! @ a b s t r u c t 
 R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e d e d . 
� ��� i   � ���� I      ������� 0 	rename_to  � ���� o      ���� 0 new_name  ��  ��  � k     C�� ��� r     
��� n    ��� n   ��� I    ������� 0 change_name  � ���� o    ���� 0 new_name  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � o      �� 0 dest  � ��� O    ,��� r    +��� n   )��� I    )�~��}�~ <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_� ��� l   ��|�{� n   ��� n   ��� I    �z�y�x�z 0 
posix_path  �y  �x  � o    �w�w 0 	_pathinfo 	_pathInfo�  f    �|  �{  � ��� l   $��v�u� n   $��� I     $�t�s�r�t 0 
posix_path  �s  �r  � o     �q�q 0 dest  �v  �u  � ��p� l  $ %��o�n� m   $ %�m
�m 
msng�o  �n  �p  �}  �  g    � o      �l�l 0 a_result  � n   ��� I    �k�j�i�k  0 defaultmanager defaultManager�j  �i  � o    �h�h 0 nsfilemanager NSFileManager� ��� l  - -�g�f�e�g  �f  �e  � ��� Z   - @���d�c� o   - .�b�b 0 a_result  � k   1 <�� ��� r   1 6��� m   1 2�a
�a 
msng� n     ��� o   3 5�`�` 0 _inforecord _infoRecord�  f   2 3� ��_� r   7 <��� o   7 8�^�^ 0 dest  � n     ��� o   9 ;�]�] 0 	_pathinfo 	_pathInfo�  f   8 9�_  �d  �c  � ��\� L   A C�� o   A B�[�[ 0 a_result  �\  � ��� l     �Z�Y�X�Z  �Y  �X  � ��� l      �W���W  �*$!@abstruct 
Copy the item to specified location
@description
Same name item in the destination is replaced.
@param a_destination (script object or text) : 
a XFile instance referencing the copy destination or a relative path.
@result script object : a XFile instance referencing copied item.
   � ���H ! @ a b s t r u c t   
 C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n 
 @ d e s c r i p t i o n 
 S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d . 
 @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :   
 a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . 
� ��� i   � ���� I      �V��U�V 0 copy_to  � ��T� o      �S�S 0 a_destination  �T  �U  � k     i�� ��� Z     ���R�Q� >    ��� n     ��� m    �P
�P 
pcls� o     �O�O 0 a_destination  � m    �N
�N 
scpt� r    ��� I    �M��L�M 0 	make_with  � ��K� o   	 
�J�J 0 a_destination  �K  �L  � o      �I�I 0 a_destination  �R  �Q  � ��� l   �H�G�F�H  �G  �F  �    Z    :�E�D n    I    �C�B�A�C 0 item_exists  �B  �A   o    �@�@ 0 a_destination   Z    6�? n   "	
	 I    "�>�=�<�> 0 	is_folder  �=  �<  
 o    �;�; 0 a_destination   r   % 1 n  % / I   & /�:�9�: 	0 child   �8 I   & +�7�6�5�7 0 	item_name  �6  �5  �8  �9   o   % &�4�4 0 a_destination   o      �3�3 0 a_destination  �?   L   4 6 m   4 5�2
�2 boovfals�E  �D    l  ; ;�1�0�/�1  �0  �/    O   ; Z r   G Y n  G W I   H W�.�-�. <0 copyitematpath_topath_error_ copyItemAtPath_toPath_error_  l  H M�,�+ n  H M !  I   I M�*�)�(�* 0 
posix_path  �)  �(  !  f   H I�,  �+   "#" l  M R$�'�&$ n  M R%&% I   N R�%�$�#�% 0 
posix_path  �$  �#  & o   M N�"�" 0 a_destination  �'  �&  # '�!' l  R S(� �( m   R S�
� 
msng�   �  �!  �-    g   G H o      �� 0 a_result   n  ; D)*) I   @ D����  0 defaultmanager defaultManager�  �  * o   ; @�� 0 nsfilemanager NSFileManager +,+ Z   [ f-.��- H   [ ]// o   [ \�� 0 a_result  . L   ` b00 m   ` a�
� 
msng�  �  , 1�1 L   g i22 o   g h�� 0 a_destination  �  � 343 l     ����  �  �  4 565 i   � �787 I      �9�� 0 
replace_to  9 :�: o      �� 0 a_destination  �  �  8 l    y;<=; k     y>> ?@? Z     AB��
A >    CDC n     EFE m    �	
�	 
pclsF o     �� 0 a_destination  D m    �
� 
scptB r    GHG I    �I�� 0 	make_with  I J�J o   	 
�� 0 a_destination  �  �  H o      �� 0 a_destination  �  �
  @ KLK l   �� ���  �   ��  L MNM Z    :OP����O n   QRQ I    �������� 0 item_exists  ��  ��  R o    ���� 0 a_destination  P Z    6ST��US n   "VWV I    "�������� 0 	is_folder  ��  ��  W o    ���� 0 a_destination  T r   % 1XYX n  % /Z[Z I   & /��\���� 	0 child  \ ]��] I   & +�������� 0 	item_name  ��  ��  ��  ��  [ o   % &���� 0 a_destination  Y o      ���� 0 a_destination  ��  U L   4 6^^ m   4 5��
�� boovfals��  ��  N _`_ l  ; ;��������  ��  ��  ` aba O   ; ccdc k   G bee fgf r   G `hih n  G ^jkj I   H ^��l���� �0 Mreplaceitematurl_withitematurl_backupitemname_options_resultingitemurl_error_ MreplaceItemAtURL_withItemAtURL_backupItemName_options_resultingItemURL_error_l mnm l  H Oo����o n  H Opqp I   K O�������� 0 as_nsurl as_NSURL��  ��  q n  H Krsr o   I K���� 0 	_pathinfo 	_pathInfos o   H I���� 0 a_destination  ��  ��  n tut l  O Vv����v n  O Vwxw n  P Vyzy I   R V�������� 0 as_nsurl as_NSURL��  ��  z o   P R���� 0 	_pathinfo 	_pathInfox  f   O P��  ��  u {|{ l  V W}����} m   V W��
�� 
msng��  ��  | ~~ m   W X����   ��� l  X Y������ m   X Y��
�� 
msng��  ��  � ���� l  Y Z������ m   Y Z��
�� 
msng��  ��  ��  ��  k  g   G Hi o      ���� 0 a_result  g ���� l  a a��������  ��  ��  ��  d n  ; D��� I   @ D��������  0 defaultmanager defaultManager��  ��  � o   ; @���� 0 nsfilemanager NSFileManagerb ��� Z   d v������� o   d e���� 0 a_result  � I   h r������� 0 
change_ref  � ���� n  i n��� I   j n�������� 0 item_ref  ��  ��  � o   i j���� 0 a_destination  ��  ��  ��  ��  � ���� L   w y�� o   w x���� 0 a_result  ��  < * $ almost same to move_with_replacing    = ��� H   a l m o s t   s a m e   t o   m o v e _ w i t h _ r e p l a c i n g  6 ��� l     ��������  ��  ��  � ��� l      ������  �60!
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
   � ���` ! 
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
� ��� i   � ���� I      ������� 0 copy_with_opts  � ��� o      ���� 0 a_destination  � ���� o      ���� 0 opts  ��  ��  � k    8�� ��� l     ������  � \ V cp : if source and destination are folders and the path of the source ends with "/",    � ��� �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  � ��� l     ������  � ^ X         cp command contents of the source copy under the destination folder like ditto.   � ��� �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .� ��� l     ������  � U O        The endding "/" of the source path should be removed for stable result.   � ��� �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .� ��� l     ������  � 5 /        Is the support  of ditto not required ?   � ��� ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?� ��� r     ��� m     ��
�� boovtrue� o      ���� 0 w_replacing  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 w_admin  � ��� r    ��� m    	��
�� boovfals� o      ���� 0 
w_removing  � ��� l   ���� r    ��� m    �� ���  c p� o      ���� 0 command  �   or "ditto"   � ���    o r   " d i t t o "� ��� l   ��������  ��  ��  � ��� Z    l������� =   ��� n    ��� m    ��
�� 
pcls� o    ���� 0 opts  � m    ��
�� 
reco� k    h�� ��� Q    )����� r     ��� n    ��� o    ���� 0 with_replacing  � o    ���� 0 opts  � o      ���� 0 w_replacing  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� Q   * ;����� r   - 2��� n   - 0��� o   . 0���� 0 
with_admin  � o   - .���� 0 opts  � o      ���� 0 w_admin  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� Q   < M����� r   ? D��� n   ? B��� o   @ B���� 0 with_removing  � o   ? @���� 0 opts  � o      ���� 0 
w_removing  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� Q   N h����� Z   Q _������� n   Q U��� o   R T���� 	0 ditto  � o   Q R���� 0 opts  � r   X [��� m   X Y�� ��� 
 d i t t o� o      ���� 0 command  ��  ��  � R      ����~
�� .ascrerr ****      � ****�  �~  ��  ��  ��  ��  � ��� l  m m�}�|�{�}  �|  �{  � ��� Z   m �� �z�y� E  m v J   m r  m   m n�x
�x 
ctxt  m   n o�w
�w 
utxt �v m   o p�u
�u 
TEXT�v   n   r u	
	 m   s u�t
�t 
pcls
 o   r s�s�s 0 a_destination    r   y � n  y � I   ~ ��r�q�r 	0 child   �p o   ~ �o�o 0 a_destination  �p  �q   I   y ~�n�m�l�n 0 parent_folder  �m  �l   o      �k�k 0 a_destination  �z  �y  �  l  � ��j�i�h�j  �i  �h    Z   � ��g =  � � o   � ��f�f 0 command   m   � � �  c p k   � �  r   � �  m   � �!! �""  - R p  o      �e�e 0 com_opts   #�d# Z   � �$%�c�b$ o   � ��a�a 0 w_replacing  % r   � �&'& b   � �()( o   � ��`�` 0 com_opts  ) m   � �** �++  f' o      �_�_ 0 com_opts  �c  �b  �d   ,-, =  � �./. o   � ��^�^ 0 command  / m   � �00 �11 
 d i t t o- 2�]2 r   � �343 m   � �55 �66  - - r s r c4 o      �\�\ 0 com_opts  �]  �g   787 r   � �9:9 m   � ��[
�[ boovfals: o      �Z�Z 0 is_folder_to  8 ;<; Z   � �=>�Y�X= n  � �?@? I   � ��W�V�U�W 0 item_exists  �V  �U  @ o   � ��T�T 0 a_destination  > Z   � �AB�SCA l  � �D�R�QD o   � ��P�P 0 
w_removing  �R  �Q  B n  � �EFE I   � ��O�N�M�O 
0 remove  �N  �M  F o   � ��L�L 0 a_destination  �S  C Z   � �GH�K�JG =  � �IJI o   � ��I�I 0 command  J m   � �KK �LL  c pH r   � �MNM n  � �OPO I   � ��H�G�F�H 0 	is_folder  �G  �F  P o   � ��E�E 0 a_destination  N o      �D�D 0 is_folder_to  �K  �J  �Y  �X  < QRQ l  � ��C�B�A�C  �B  �A  R STS r   � �UVU n   � �WXW 1   � ��@
�@ 
strqX n  � �YZY I   � ��?�>�=�? 0 normalized_posix_path  �>  �=  Z o   � ��<�< 0 a_destination  V o      �;�; 0 destination_path  T [\[ r   �]^] n   � �_`_ 1   � ��:
�: 
strq` I   � ��9�8�7�9 0 normalized_posix_path  �8  �7  ^ o      �6�6 0 source_path  \ aba r  cdc b  efe b  ghg b  iji b  klk b  	mnm b  opo o  �5�5 0 command  p 1  �4
�4 
spacn o  �3�3 0 com_opts  l 1  	�2
�2 
spacj o  �1�1 0 source_path  h 1  �0
�0 
spacf o  �/�/ 0 destination_path  d o      �.�. 0 	a_command  b qrq I !�-st
�- .sysoexecTEXT���     TEXTs o  �,�, 0 	a_command  t �+u�*
�+ 
badmu o  �)�) 0 w_admin  �*  r vwv Z  "5xy�(�'x o  "#�&�& 0 is_folder_to  y L  &1zz n &0{|{ I  '0�%}�$�% 	0 child  } ~�#~ I  ',�"�!� �" 0 	item_name  �!  �   �#  �$  | o  &'�� 0 a_destination  �(  �'  w � L  68�� o  67�� 0 a_destination  �  � ��� l     ����  �  �  � ��� i   � ���� I      ���� 0 finder_copy_to  � ��� o      �� 0 a_destination  � ��� o      �� 0 with_replacing  �  �  � k     *�� ��� r     ��� n    ��� I    ���� 0 as_alias  �  �  � o     �� 0 a_destination  � o      �� 0 destination  � ��� r    ��� I    ���� 0 as_alias  �  �  � o      �� 0 source_alias  � ��� O    "��� r    !��� c    ��� l   ���
� I   �	��
�	 .coreclon****      � ****� o    �� 0 source_alias  � ���
� 
insh� o    �� 0 destination  � ���
� 
alrp� o    �� 0 with_replacing  �  �  �
  � m    �
� 
alis� o      �� 0 new_item  � m    ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � �� � L   # *�� I   # )������� 0 	make_with  � ���� o   $ %���� 0 new_item  ��  ��  �   � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 
0 my_log  � ���� o      ���� 
0 a_text  ��  ��  � l    
���� O    
��� I   	�����
�� .ascrcmnt****      � ****� o    ���� 
0 a_text  ��  � 1     ��
�� 
ascr� E ? use this for debuggingm, because the log command is overrided.   � ��� ~   u s e   t h i s   f o r   d e b u g g i n g m ,   b e c a u s e   t h e   l o g   c o m m a n d   i s   o v e r r i d e d .� ��� l     ��������  ��  ��  � ��� l      ������  �("!@abstruct
Move the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, moving an item will fail.
@param a_destination (script object) : a XFile instance referencing the destination to move.
@result boolean : true if success.
   � ���D ! @ a b s t r u c t 
 M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   m o v i n g   a n   i t e m   w i l l   f a i l . 
 @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . 
� ��� i   � ���� I      ������� 0 move_to  � ���� o      ���� 0 a_destination  ��  ��  � k     x�� ��� l     ������  �   log "start move_to"   � ��� (   l o g   " s t a r t   m o v e _ t o "� ��� l    ���� I     �������� 0 item_exists  ��  ��  � G A even if the item exists, broken symbolic file will return false.   � ��� �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .� ��� l   ��������  ��  ��  � ��� Z    ������� >   ��� n    	��� m    	��
�� 
pcls� o    ���� 0 a_destination  � m   	 
��
�� 
scpt� r    ��� I    ������� 0 	make_with  � ���� o    ���� 0 a_destination  ��  ��  � o      ���� 0 a_destination  ��  ��  � ��� l   ��������  ��  ��  � ��� Z    @������� n    ��� I     �������� 0 item_exists  ��  ��  � o    ���� 0 a_destination  � Z   # <������ n  # (��� I   $ (�������� 0 	is_folder  ��  ��  � o   # $���� 0 a_destination  � r   + 7��� n  + 5��� I   , 5������� 	0 child  � ���� I   , 1�������� 0 	item_name  ��  ��  ��  ��  � o   + ,���� 0 a_destination  � o      ���� 0 a_destination  ��  � L   : <�� m   : ;��
�� boovfals��  ��  � ��� l  A A��������  ��  ��  � ��� O   A b��� r   M a��� n  M _��� I   N _������� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_� ��� l  N U ����  n  N U n  O U I   Q U�������� 0 
posix_path  ��  ��   o   O Q���� 0 	_pathinfo 	_pathInfo  f   N O��  ��  �  l  U Z���� n  U Z	 I   V Z�������� 0 
posix_path  ��  ��  	 o   U V���� 0 a_destination  ��  ��   
��
 l  Z [���� m   Z [��
�� 
msng��  ��  ��  ��  �  g   M N� o      ���� 0 a_result  � n  A J I   F J��������  0 defaultmanager defaultManager��  ��   o   A F���� 0 nsfilemanager NSFileManager�  Z   c u���� o   c d���� 0 a_result   I   g q������ 0 
change_ref   �� n  h m I   i m�������� 0 item_ref  ��  ��   o   h i���� 0 a_destination  ��  ��  ��  ��   �� L   v x o   v w���� 0 a_result  ��  �  l     ��������  ��  ��    l      ����  >8!@abstruct
Move the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, the item will be replaced with the target item.
@param a_destination (script object) : a XFile instance referencing the destination to move.
@result boolean : true if success.
    �p ! @ a b s t r u c t 
 M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m . 
 @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . 
   i   � �!"! I      ��#���� 0 move_with_replacing  # $��$ o      ���� 0 a_destination  ��  ��  " k     �%% &'& r     ()( m     ��
�� 
msng) o      ���� 0 escaped_item  ' *+* Z    Q,-����, n   	./. I    	�������� 0 item_exists_without_update  ��  ��  / o    ���� 0 a_destination  - Z    M01����0 H    22 n   343 I    �������� 0 	is_folder  ��  ��  4 o    ���� 0 a_destination  1 O    I565 k    H77 898 r     :;:  g    ; o      ���� 0 escaped_item  9 <=< r   ! 1>?> n  ! /@A@ n  " /BCB I   & /��D���� 0 unique_child  D E��E n  & +FGF I   ' +����~�� 0 	item_name  �  �~  G o   & '�}�} 0 a_destination  ��  ��  C I   " &�|�{�z�| 0 parent_folder  �{  �z  A  g   ! "? o      �y�y 
0 uchild  = HIH l  2 2�xJK�x  J    log uchild's posix_path()   K �LL 4   l o g   u c h i l d ' s   p o s i x _ p a t h ( )I M�wM Z   2 HNO�v�uN H   2 9PP n  2 8QRQ I   3 8�tS�s�t 0 move_to  S T�rT o   3 4�q�q 
0 uchild  �r  �s  R  g   2 3O k   < DUU VWV I  < A�pX�o
�p .ascrcmnt****      � ****X m   < =YY �ZZ @ F a i l e d   t o   e s c a p e   e x i s i t i n g   i t e m .�o  W [�n[ L   B D\\ m   B C�m
�m boovfals�n  �v  �u  �w  6 n   ]^] I    �l�k�j�l 0 	deep_copy  �k  �j  ^ o    �i�i 0 a_destination  ��  ��  ��  ��  + _`_ l  R R�h�g�f�h  �g  �f  ` aba r   R Zcdc I   R X�ee�d�e 0 move_to  e f�cf o   S T�b�b 0 a_destination  �c  �d  d o      �a�a 0 a_result  b ghg Z   [ �ij�`ki o   [ \�_�_ 0 a_result  j Z   _ nlm�^�]l >  _ bnon o   _ `�\�\ 0 escaped_item  o m   ` a�[
�[ 
msngm n  e jpqp I   f j�Z�Y�X�Z 
0 remove  �Y  �X  q o   e f�W�W 0 escaped_item  �^  �]  �`  k Z   q �rs�V�Ur >  q ttut o   q r�T�T 0 escaped_item  u m   r s�S
�S 
msngs n  w }vwv I   x }�Rx�Q�R 0 move_to  x y�Py o   x y�O�O 0 s_destination  �P  �Q  w o   w x�N�N 0 escaped_item  �V  �U  h z�Mz L   � �{{ o   � ��L�L 0 a_result  �M    |}| l     �K�J�I�K  �J  �I  } ~~ l      �H���H  �!@abstruct
Resolving original item of a alias file.
@description
If the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.
@result script object or missing value
   � ���
 ! @ a b s t r u c t 
 R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e . 
 @ d e s c r i p t i o n 
 I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e 
 ��� i   � ���� I      �G�F�E�G 0 resolve_alias  �F  �E  � k     c�� ��� Z     #���D�C� I     �B�A�@�B 0 
is_symlink  �A  �@  � k    �� ��� r    ��� I    �?�>�=�? 0 	deep_copy  �>  �=  � o      �<�< 0 
x_original  � ��;� Z    ���:�� n   ��� I    �9�8�7�9 0 item_exists  �8  �7  � o    �6�6 0 
x_original  � L    �� o    �5�5 0 
x_original  �:  � L    �� m    �4
�4 
msng�;  �D  �C  � ��� l  $ $�3�2�1�3  �2  �1  � ��� Z   $ 3���0�/� H   $ *�� I   $ )�.�-�,�. 0 is_alias  �-  �,  � L   - /��  f   - .�0  �/  � ��� l  4 4�+�*�)�+  �*  �)  � ��� r   4 H��� n  4 F��� I   9 F�(��'�( Z0 +urlbyresolvingaliasfileaturl_options_error_ +URLByResolvingAliasFileAtURL_options_error_� ��� l  9 @��&�%� n  9 @��� n  : @��� I   < @�$�#�"�$ 0 as_nsurl as_NSURL�#  �"  � o   : <�!�! 0 	_pathinfo 	_pathInfo�  f   9 :�&  �%  � ��� m   @ A� �   � ��� l  A B���� m   A B�
� 
msng�  �  �  �'  � o   4 9�� 0 nsurl NSURL� o      �� 0 original_url  � ��� Z   I U����� =  I L��� o   I J�� 0 original_url  � m   J K�
� 
msng� L   O Q�� m   O P�
� 
msng�  �  � ��� L   V c�� I   V b���� 0 	make_with  � ��� c   W ^��� n  W \��� I   X \���� 0 path  �  �  � o   W X�� 0 original_url  � m   \ ]�
� 
ctxt�  �  �  � ��� l     ��
�	�  �
  �	  � ��� l      ����  � ! !@abstruct
Put into trash.
   � ��� 6 ! @ a b s t r u c t 
 P u t   i n t o   t r a s h . 
� ��� i   � ��� I      ���� 0 
into_trash  �  �  � k     7�� ��� l     ����  �   log "start into_trash"   � ��� .   l o g   " s t a r t   i n t o _ t r a s h "� ��� O     ��� r    ��� n   ��� I    ���� P0 &trashitematurl_resultingitemurl_error_ &trashItemAtURL_resultingItemURL_error_� ��� l   ��� � n   ��� n   ��� I    �������� 0 as_nsurl as_NSURL��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    �  �   � ��� l   ������ m    ��
�� 
msng��  ��  � ���� l   ������ m    ��
�� 
msng��  ��  ��  �  �  g    � o      ���� 0 a_result  � n    	��� I    	��������  0 defaultmanager defaultManager��  ��  � o     ���� 0 nsfilemanager NSFileManager� ��� l   ��������  ��  ��  � ���� Z    7������� o    ���� 0 a_result  � I   " 3������� 0 change_pathinfo  � ���� n  # /��� n  $ /��� I   & /������� 0 change_folder  � ���� I  & +�����
�� .earsffdralis        afdr� m   & '��
�� afdmtrsh��  ��  ��  � o   $ &���� 0 	_pathinfo 	_pathInfo�  f   # $��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � X R!@abstruct
Remove the item referd from the target XFile instance.
@result boolean
   � �   � ! @ a b s t r u c t 
 R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e . 
 @ r e s u l t   b o o l e a n 
�  i   I      �������� 
0 remove  ��  ��   k     =  r     		 n    

 n    I    �������� 0 as_text  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f     	 o      ���� 
0 a_path    O   
 $ r    # n   ! I    !������ 20 removeitematpath_error_ removeItemAtPath_error_  l   ���� n    I    �������� 0 
posix_path  ��  ��    f    ��  ��   �� l   ���� m    ��
�� 
msng��  ��  ��  ��    g     o      ���� 0 a_result   n  
  I    ��������  0 defaultmanager defaultManager��  ��   o   
 ���� 0 nsfilemanager NSFileManager  !  Z   % :"#����" o   % &���� 0 a_result  # k   ) 6$$ %&% r   ) 0'(' o   ) *���� 
0 a_path  ( n     )*) n  + /+,+ o   - /���� 0 	_item_ref  , o   + -���� 0 	_pathinfo 	_pathInfo*  f   * +& -��- r   1 6./. m   1 2��
�� 
msng/ n     010 o   3 5���� 0 _inforecord _infoRecord1  f   2 3��  ��  ��  ! 2��2 L   ; =33 o   ; <���� 0 a_result  ��   454 l     ��������  ��  ��  5 676 l      ��89��  8   !@group Making subfolders    9 �:: 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  7 ;<; l     ��������  ��  ��  < =>= l      ��?@��  ? � �!@abstruct
Make a sub folder.
@description
missing value will be returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.
@result script object or missing value : a XFile instance of newly created folder.
   @ �AA� ! @ a b s t r u c t 
 M a k e   a   s u b   f o l d e r . 
 @ d e s c r i p t i o n 
 m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . 
> BCB i  DED I      ��F���� 0 make_folder  F G��G o      ���� 0 folder_name  ��  ��  E k     !HH IJI Z     KL����K H     MM l    N����N I     �������� 0 item_exists  ��  ��  ��  ��  L L   	 OO m   	 
��
�� 
msng��  ��  J PQP l   ��������  ��  ��  Q RSR r    TUT I    ��V���� 	0 child  V W��W o    ���� 0 folder_name  ��  ��  U o      ���� 0 
new_folder  S X��X L    !YY n    Z[Z I     ��\���� 0 	make_path  \ ]��] J    ����  ��  ��  [ o    ���� 0 
new_folder  ��  C ^_^ l     ��������  ��  ��  _ `a` l      ��bc��  b��!@abstruct
Make folders which indicating the path of the XFile instance.
@description
Using a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.
@result script object or missing value : a XFile instance of newly created folder.
   c �dd ! @ a b s t r u c t 
 M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . 
a efe i  	ghg I      ��i���� 0 	make_path  i j��j o      ���� 0 opts  ��  ��  h k     Rkk lml r     non m     ��
�� boovfalso o      ���� 0 w_admin  m pqp Z    rs����r =   	tut n    vwv m    ��
�� 
pclsw o    ���� 0 opts  u m    ��
�� 
recos r    xyx n    z{z o    ���� 0 
with_admin  { o    ���� 0 opts  y o      ���� 0 w_admin  ��  ��  q |}| Z    0~����~ I    ������� 0 item_exists  ��  �   Z    ,���~�� I    #�}�|�{�} 0 	is_folder  �|  �{  � L   & (��  f   & '�~  � m   + ,�z
�z 
msng��  ��  } ��� I  1 @�y��
�y .sysoexecTEXT���     TEXT� b   1 :��� m   1 2�� ���  m k d i r   - p  � l  2 9��x�w� n   2 9��� 1   7 9�v
�v 
strq� I   2 7�u�t�s�u 0 
posix_path  �t  �s  �x  �w  � �r��q
�r 
badm� o   ; <�p�p 0 w_admin  �q  � ��� Z  A O���o�n� I   A F�m�l�k�m 0 item_exists  �l  �k  � L   I K��  f   I J�o  �n  � ��j� L   P R�� m   P Q�i
�i 
msng�j  f ��� l     �h�g�f�h  �g  �f  � ��� l     �e�d�c�e  �d  �c  � ��� l      �b���b  � 0 *!@group Reading and Writing File Contents    � ��� T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  � ��� l     �a�`�_�a  �`  �_  � ��� l      �^���^  � X R!@abstruct
Read file contents as UTF-8 encoded text.
@result Unicode text (UTF-8)
   � ��� � ! @ a b s t r u c t 
 R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t . 
 @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) 
� ��� i  ��� I      �]�\�[�] 0 read_as_utf8  �\  �[  � k     �� ��� I     �Z�Y�X�Z !0 check_existance_raising_error  �Y  �X  � ��W� L    �� I   �V��
�V .rdwrread****        ****� l   ��U�T� I    �S�R�Q�S 0 as_alias  �R  �Q  �U  �T  � �P��O
�P 
as  � m    �N
�N 
utf8�O  �W  � ��� l     �M�L�K�M  �L  �K  � ��� l      �J���J  � u o!@abstruct
Write data into the file as UTF-8 encoded text.
@param a_data (text) : data to write into the file.
   � ��� � ! @ a b s t r u c t 
 W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t . 
 @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . 
� ��� i  ��� I      �I��H�I 0 write_as_utf8  � ��G� o      �F�F 
0 a_data  �G  �H  � k     %�� ��� r     ��� I    �E��
�E .rdwropenshor       file� I     �D�C�B�D 0 as_furl  �C  �B  � �A��@
�A 
perm� m    �?
�? boovtrue�@  � o      �>�> 
0 output  � ��� I   �=��
�= .rdwrseofnull���     ****� o    �<�< 
0 output  � �;��:
�; 
set2� m    �9�9  �:  � ��� I   �8��
�8 .rdwrwritnull���     ****� o    �7�7 
0 a_data  � �6��
�6 
refn� o    �5�5 
0 output  � �4��3
�4 
as  � m    �2
�2 
utf8�3  � ��1� I    %�0��/
�0 .rdwrclosnull���     ****� o     !�.�. 
0 output  �/  �1  � ��� l     �-�,�+�-  �,  �+  � ��� l      �*���*  � " !@group Parent and Children    � ��� 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  � ��� l     �)�(�'�)  �(  �'  � ��� l      �&���&  � � �!@abstruct
Obtain a folder containing the item referenced by the XFile instance.
@result script object : a XFile instance of the parent folder.
   � ���  ! @ a b s t r u c t 
 O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . 
� ��� i  ��� I      �%�$�#�% 0 parent_folder  �$  �#  � L     �� I     �"��!�" 0 make_with_pathinfo  � �� � n   ��� n   ��� I    ���� 0 parent_folder  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f    �   �!  � ��� l     ����  �  �  � ��� l      ����  �!@abstruct
Obtain an item in the folder with specifying a sub path from the target.
@description
If this methods is sent to non exsisting folder, missing value is returend.
@param suppath(text) :a sub path to obtain.
@result script object or missing value : a XFile instance
   � ���& ! @ a b s t r u c t 
 O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t . 
 @ d e s c r i p t i o n 
 I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d . 
 @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e 
� ��� i  ��� I      ���� 	0 child  � ��� o      �� 0 subpath  �  �  � Z     ����� I     ���� 0 item_exists_without_update  �  �  � L       I    ��� 0 make_with_pathinfo   � n  	  n  
  I    ��� 	0 child   �
 o    �	�	 0 subpath  �
  �   o   
 �� 0 	_pathinfo 	_pathInfo  f   	 
�  �  �  � L    		 m    �
� 
msng� 

 l     ����  �  �    i    I      ��� 0 child_posix   � o      � �  0 subpath  �  �   Z     "�� I     �������� 0 item_exists  ��  ��   k      r     I    �������� 0 
posix_path  ��  ��   o      ���� 
0 a_path    r     b     o    ���� 
0 a_path   o    ���� 0 subpath   o      ���� 
0 a_path    ��  L    !! I    ��"���� 0 	make_with  " #��# o    ���� 
0 a_path  ��  ��  ��  ��   L     "$$ m     !��
�� 
msng %&% l     ��������  ��  ��  & '(' l     ��������  ��  ��  ( )*) l      ��+,��  +��!@abstruct
Obtain a XFile instance reference unique name item in the folder.
@description
If the instance's file reference is not a folder, missing value will be returned.
If this methods is sent to non existing item, error number 1350 will be raised.
@param a_candidate(text or list) :
A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.
@result script object : a XFile instance
   , �--T ! @ a b s t r u c t 
 O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r . 
 @ d e s c r i p t i o n 
 I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d . 
 I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d . 
 @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   : 
 A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 
* ./. i  !$010 I      ��2���� 0 unique_child  2 3��3 o      ���� 0 a_candidate  ��  ��  1 k     w44 565 l     ��78��  7   log "start unique_child"   8 �99 2   l o g   " s t a r t   u n i q u e _ c h i l d "6 :;: Z     <=����< H     >> I     �������� 0 	is_folder  ��  ��  = k   	 ?? @A@ l  	 	��BC��  B ' ! log "not folder " & posix_path()   C �DD B   l o g   " n o t   f o l d e r   "   &   p o s i x _ p a t h ( )A E��E L   	 FF m   	 
��
�� 
msng��  ��  ��  ; GHG r    )IJI n   KLK I    ��M���� 0 
split_name  M N��N o    ���� 0 a_candidate  ��  ��  L o    ���� 0 pathinfo PathInfoJ J      OO PQP o      ���� 0 
a_basename  Q R��R o      ���� 0 a_suffix  ��  H STS Z   * ;UV��WU =  * -XYX o   * +���� 0 a_suffix  Y m   + ,��
�� 
msngV r   0 3Z[Z m   0 1\\ �]]  [ o      ���� 0 a_suffix  ��  W r   6 ;^_^ b   6 9`a` m   6 7bb �cc  .a o   7 8���� 0 a_suffix  _ o      ���� 0 a_suffix  T ded r   < ?fgf m   < =���� g o      ���� 0 i  e hih r   @ Cjkj m   @ All �mm  k o      ���� 0 escape_suffix  i non T   D tpp k   I oqq rsr r   I Utut I   I S��v���� 	0 child  v w��w b   J Oxyx b   J Mz{z o   J K���� 0 
a_basename  { o   K L���� 0 escape_suffix  y o   M N���� 0 a_suffix  ��  ��  u o      ���� 0 a_child  s |��| Z   V o}~��} n  V [��� I   W [�������� 0 item_exists  ��  ��  � o   V W���� 0 a_child  ~ k   ^ k�� ��� r   ^ e��� b   ^ c��� 1   ^ _��
�� 
spac� l  _ b������ c   _ b��� o   _ `���� 0 i  � m   ` a��
�� 
utxt��  ��  � o      ���� 0 escape_suffix  � ���� r   f k��� [   f i��� o   f g���� 0 i  � m   g h���� � o      ���� 0 i  ��  ��   k   n o�� ��� l  n n������  � !  log a_child's posix_path()   � ��� 6   l o g   a _ c h i l d ' s   p o s i x _ p a t h ( )� ����  S   n o��  ��  o ���� L   u w�� o   u v���� 0 a_child  ��  / ��� l     ��������  ��  ��  � ��� i  %(��� I      �������� 0 list_children  ��  ��  � L     
�� I    	�����
�� .earslfdrutxt  @    file� I     �������� 0 as_furl  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �<6!@abstruct
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. 
Each XFile instance in the target folder is passed to the &quot;do&quot; handler.
The do handler must return true or false. When the do handler return false, the process is stoped immediately.
@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
   � ���l ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   
 E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r . 
 T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y . 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
� ��� i  ),��� I      ������� 0 each  � ���� o      ���� 0 a_script  ��  ��  � k     @�� ��� r     ��� I     �������� 0 list_children  ��  ��  � o      ���� 
0 a_list  � ��� h    ����� 0 listwrapper ListWrapper� j     ���
�� 
pcnt� o     ���� 
0 a_list  � ��� l   ��������  ��  ��  � ���� Y    @�������� k    ;�� ��� r    +��� I    )������� 	0 child  � ���� n    %��� 4   " %���
�� 
cobj� o   # $���� 0 n  � n    "��� 1     "��
�� 
pcnt� o     ���� 0 listwrapper ListWrapper��  ��  � o      ���� 
0 x_item  � ���� Z   , ;������� H   , 3�� n  , 2��� I   - 2������� 0 do  � ���� o   - .���� 
0 x_item  ��  ��  � o   , -�� 0 a_script  �  S   6 7��  ��  ��  �� 0 n  � m    �~�~ � I   �}��|
�} .corecnte****       ****� o    �{�{ 
0 a_list  �|  ��  ��  � ��� l     �z�y�x�z  �y  �x  � ��� l      �w���w  � * $!@group Working with Shell Commands    � ��� H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  � ��� l     �v�u�t�v  �u  �t  � ��� l      �s���s  �	!@abstruct
Run passed shell command taking the target as an argument.
@description
&quot;%s&quot; in the command will be replaced with the target's path.
@param a_command(text) : shell command including %s.
@result text : standard output of the shell command
   � ��� ! @ a b s t r u c t 
 R u n   p a s s e d   s h e l l   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n 
 & q u o t ; % s & q u o t ;   i n   t h e   c o m m a n d   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t ' s   p a t h . 
 @ p a r a m   a _ c o m m a n d ( t e x t )   :   s h e l l   c o m m a n d   i n c l u d i n g   % s . 
 @ r e s u l t   t e x t   :   s t a n d a r d   o u t p u t   o f   t h e   s h e l l   c o m m a n d 
� ��� i  -0��� I      �r��q�r 0 perform_shell  � ��p� o      �o�o 0 	a_command  �p  �q  � k     �� ��� r     ��� n    	��� 1    	�n
�n 
strq� n    ��� 1    �m
�m 
strq� I     �l�k�j�l 0 normalized_posix_path  �k  �j  � o      �i�i 
0 a_path  � ��h� L    �� I   �g��f
�g .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� b    ��� m    �� ���  e v a l   $ ( p r i n t f  � n   ��� 1    �e
�e 
strq� o    �d�d 0 	a_command  � 1    �c
�c 
spac� o    �b�b 
0 a_path  � m    �� �	 	   )�f  �h  � 			 l     �a�`�_�a  �`  �_  	 			 l      �^		�^  	 � �!@abstruct
Run test command taking the target as an argument.
@param option(text) : 
An option to passed to the test command. See the man page of the test command.
@result boolean : true if test command successfully exits.
   	 �		� ! @ a b s t r u c t 
 R u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ p a r a m   o p t i o n ( t e x t )   :   
 A n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . 
	 				 i  14	
		
 I      �]	�\�] 0 
shell_test  	 	�[	 o      �Z�Z 
0 option  �[  �\  	 k     		 			 Q     				 I   �Y	�X
�Y .sysoexecTEXT���     TEXT	 b    			 b    			 b    			 m    		 �		 
 t e s t  	 o    �W�W 
0 option  	 1    �V
�V 
spac	 I    �U�T�S�U 0 quoted_path  �T  �S  �X  	 R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  	 L    		 m    �O
�O boovfals	 	�N	 L    		 m    �M
�M boovtrue�N  		 	 	!	  l     �L�K�J�L  �K  �J  	! 	"	#	" l      �I	$	%�I  	$  == private *   	% �	&	&  = =   p r i v a t e   *	# 	'	(	' l     �H�G�F�H  �G  �F  	( 	)	*	) i  58	+	,	+ I      �E�D�C�E 0 	deep_copy  �D  �C  	, L     	-	- I     �B	.�A�B 0 make_with_pathinfo  	. 	/�@	/ n   	0	1	0 n   	2	3	2 I    �?�>�=�? 	0 clone  �>  �=  	3 o    �<�< 0 	_pathinfo 	_pathInfo	1  f    �@  �A  	* 	4	5	4 l     �;�:�9�;  �:  �9  	5 	6	7	6 i  9<	8	9	8 I      �8�7�6�8 0 item_ref  �7  �6  	9 L     	:	: n    	;	<	; n   	=	>	= I    �5�4�3�5 0 item_ref  �4  �3  	> o    �2�2 0 	_pathinfo 	_pathInfo	<  f     	7 	?	@	? l     �1�0�/�1  �0  �/  	@ 	A	B	A i  =@	C	D	C I      �.�-�,�. !0 check_existance_raising_error  �-  �,  	D k     !	E	E 	F	G	F l     �+	H	I�+  	H 4 . my_log("start check_existance_raising_error")   	I �	J	J \   m y _ l o g ( " s t a r t   c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r " )	G 	K�*	K Z     !	L	M�)�(	L H     	N	N l    	O�'�&	O n    	P	Q	P n   	R	S	R I    �%�$�#�% 0 item_exists_without_update  �$  �#  	S o    �"�" 0 	_pathinfo 	_pathInfo	Q  f     �'  �&  	M R    �!	T	U
�! .ascrerr ****      � ****	T b    	V	W	V b    	X	Y	X m    	Z	Z �	[	[ 
 i t e m  	Y n    	\	]	\ 1    � 
�  
strq	] l   	^��	^ n   	_	`	_ n   	a	b	a I    ���� 0 as_text  �  �  	b o    �� 0 	_pathinfo 	_pathInfo	`  f    �  �  	W m    	c	c �	d	d     d o e s   n o t   e x i s t .	U �	e�
� 
errn	e m    ��F�  �)  �(  �*  	B 	f	g	f l     ����  �  �  	g 	h	i	h i  AD	j	k	j I      ���� 0 update_pathinfo  �  �  	k k     $	l	l 	m	n	m r     	o	p	o n    	q	r	q I    �	s�� 0 make_with_opts  	s 	t	u	t n   	v	w	v n   	x	y	x I    ���� 0 item_ref  �  �  	y o    �� 0 	_pathinfo 	_pathInfo	w  f    	u 	z�
	z K    	{	{ �		|��	 0 prefering_posix  	| n   	}	~	} n   		�	 I    ���� 0 is_posix  �  �  	� o    �� 0 	_pathinfo 	_pathInfo	~  f    �  �
  �  	r o     �� 0 pathinfo PathInfo	p n     	�	�	� o    �� 0 	_pathinfo 	_pathInfo	�  f    	n 	��	� L    $	�	� n   #	�	�	� o     "� �  0 	_pathinfo 	_pathInfo	�  f     �  	i 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  EH	�	�	� I      ��	����� 0 change_pathinfo  	� 	���	� o      ���� 0 
a_pathinfo  ��  ��  	� k     	�	� 	�	�	� r     	�	�	� o     ���� 0 
a_pathinfo  	� n     	�	�	� o    ���� 0 	_pathinfo 	_pathInfo	�  f    	� 	�	�	� r    	�	�	� m    ��
�� 
msng	� n     	�	�	� o    
���� 0 _inforecord _infoRecord	�  f    	� 	�	�	� r    	�	�	� n   	�	�	� n   	�	�	� I    �������� 0 is_posix  ��  ��  	� o    ���� 0 	_pathinfo 	_pathInfo	�  f    	� n     	�	�	� o    ���� 0 _prefer_posix  	�  f    	� 	���	� L    	�	�  f    ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  IL	�	�	� I      ��	����� 0 
change_ref  	� 	���	� o      ���� 0 file_ref  ��  ��  	� L     	�	� I     ��	����� 0 change_pathinfo  	� 	���	� n   	�	�	� I    ��	����� 0 	make_with  	� 	���	� o    ���� 0 file_ref  ��  ��  	� o    ���� 0 pathinfo PathInfo��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  MP	�	�	� I      �������� 0 dump  ��  ��  	� L     	�	� n    	�	�	� n   	�	�	� I    �������� 0 as_text  ��  ��  	� o    ���� 0 	_pathinfo 	_pathInfo	�  f     	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� C = -- too much side effect
on log
	continue log dump()
end log
   	� �	�	� z   - -   t o o   m u c h   s i d e   e f f e c t 
 o n   l o g 
 	 c o n t i n u e   l o g   d u m p ( ) 
 e n d   l o g 
	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  QT	�	�	� I      �������� 	0 debug  ��  ��  	� k     /	�	� 	�	�	� n    		�	�	� I    	��	����� 	0 setup  	� 	���	�  f    ��  ��  	� 4     ��	�
�� 
scpt	� m    	�	� �	�	�  M o d u l e L o a d e r	� 	�	�	� r   
 	�	�	� c   
 	�	�	� m   
 	�	� �	�	� F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d f	� m    ��
�� 
psxf	� o      ���� 
0 a_path  	� 	�	�	� r    	�	�	� I    ��	����� 0 	make_with  	� 	���	� o    ���� 
0 a_path  ��  ��  	� o      ���� 0 a_xfile  	� 	�	�	� l   ��	�	���  	� K Ereturn a_result's change_path_extension(missing value)'s posix_path()   	� �	�	� � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )	� 	�	�	� r    %	�	�	� n   #	�	�	� I    #��	����� 0 unique_child  	� 	���	� m    	�	� �	�	� : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f��  ��  	� n   	�	�	� I    �������� 0 parent_folder  ��  ��  	� o    ���� 0 a_xfile  	� o      ���� 0 new_named_file  	� 	���	� I  & /��	���
�� .ascrcmnt****      � ****	� n  & +	�	�	� I   ' +�������� 0 	item_name  ��  ��  	� o   & '���� 0 new_named_file  ��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  UX
 

  I      �������� 0 open_helpbook  ��  ��  
 Q     ,



 O   


 I   
 ��
���� 0 do  
 
��
 I   ��
	��
�� .earsffdralis        afdr
	  f    ��  ��  ��  
 4    ��


�� 
scpt

 m    

 �

  O p e n H e l p B o o k
 R      ��


�� .ascrerr ****      � ****
 o      ���� 0 msg  
 ��
��
�� 
errn
 o      ���� 	0 errno  ��  
 k    ,

 


 I   "������
�� .miscactvnull��� ��� null��  ��  
 
��
 I  # ,��
��
�� .sysodisAaleR        TEXT
 l  # (
����
 b   # (


 b   # &


 o   # $���� 0 msg  
 o   $ %��
�� 
ret 
 o   & '���� 	0 errno  ��  ��  ��  ��  	� 


 l     ��������  ��  ��  
 


 i  Y\


 I     ������
�� .aevtoappnull  �   � ****��  ��  
 k     
 
  
!
"
! l     ��
#
$��  
#  return debug()   
$ �
%
%  r e t u r n   d e b u g ( )
" 
&��
& I     �������� 0 open_helpbook  ��  ��  ��  
 
'��
' l     ��������  ��  ��  ��       J��
(
)
*
+
,
- :��
.
/
0
1
2
3
4
5
6
7
8
9
:
;
<
=
>
?
@
A
B
C
D
E
F
G
H
I
J
K
L
M
N
O
P
Q
R
S
T
U
V
W
X
Y
Z
[
\
]
^
_
`
a
b
c
d
e
f
g
h
i
j
k
l
m
n��  
( H����������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<
�� 
pimr�� 0 pathinfo PathInfo�� 0 nsworkspace NSWorkspace�� 0 nsfilemanager NSFileManager� 0 nsurl NSURL
�~ 
pnam�} 0 _prefer_posix  �| 0 prefer_posix  �{ 0 	make_with  �z 0 make_with_pathinfo  �y 0 change_name  �x 0 change_folder  �w 0 change_path_extension  �v 0 as_alias  �u 0 as_furl  �t 0 hfs_path  �s 0 
posix_path  �r 0 normalized_posix_path  �q 0 quoted_path  �p 0 type_identifier  �o 0 	is_folder  �n 0 
is_package  �m 0 is_alias  �l 0 
is_symlink  �k 0 
is_visible  �j 0 	set_types  �i 0 info  �h 0 info_with_size  �g 0 re_info  �f 0 	item_name  �e 0 basename  �d 0 path_extension  �c 0 volume_name  �b 0 bundle_resource  �a $0 bundle_infoplist bundle_InfoPlist�` 0 bundle_resources_folder  �_ 0 item_exists  �^ 0 item_exists_without_update  
�] .coredoexbool       obj �\ 0 	rename_to  �[ 0 copy_to  �Z 0 
replace_to  �Y 0 copy_with_opts  �X 0 finder_copy_to  �W 
0 my_log  �V 0 move_to  �U 0 move_with_replacing  �T 0 resolve_alias  �S 0 
into_trash  �R 
0 remove  �Q 0 make_folder  �P 0 	make_path  �O 0 read_as_utf8  �N 0 write_as_utf8  �M 0 parent_folder  �L 	0 child  �K 0 child_posix  �J 0 unique_child  �I 0 list_children  �H 0 each  �G 0 perform_shell  �F 0 
shell_test  �E 0 	deep_copy  �D 0 item_ref  �C !0 check_existance_raising_error  �B 0 update_pathinfo  �A 0 change_pathinfo  �@ 0 
change_ref  �? 0 dump  �> 	0 debug  �= 0 open_helpbook  
�< .aevtoappnull  �   � ****
) �;
o�; 
o  
p
q
r
s
p �:
t
u
�: 
cobj
t 
v
v   �9 
�9 
scpt
u �8 �7
�8 
vers�7  
q �6
w�5
�6 
cobj
w 
x
x   �4
�4 
osax�5  
r �3
y�2
�3 
cobj
y 
z
z   �1 
�1 
frmk�2  
s �0
{�/
�0 
cobj
{ 
|
|   �. !
�. 
frmk�/  
* 
}
}   �- 
�- 
scpt
+ 
~
~ �,�+

�, misccura
�+ 
pcls
 �
�
�  N S W o r k s p a c e
, 
�
� �*�)
�
�* misccura
�) 
pcls
� �
�
�  N S F i l e M a n a g e r
- 
�
� �(�'
�
�( misccura
�' 
pcls
� �
�
� 
 N S U R L
�� boovtrue
. �& M�%�$
�
��#�& 0 prefer_posix  �% �"
��" 
�  �!�! 0 bool  �$  
� � �  0 bool  
� �� 0 _prefer_posix  �# �)�,F
/ � e��
�
��� 0 	make_with  � �
�� 
�  �� 0 file_ref  �  
� ���� 0 file_ref  � 
0 is_hfs  � 0 	path_info  
� 	���� �����
� 
ctxt
� 
utxt
� 
TEXT
� 
pcls� 0 make_with_hfs  � 0 _prefer_posix  � 0 make_with_posix  � 0 make_with_pathinfo  � YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ 
0 � ���
�
��
� 0 make_with_pathinfo  � �	
��	 
�  �� 0 	path_info  �  
� ���� 0 	path_info  � 0 a_parent  � 0 xfile XFile
� � �
�� 0 xfile XFile
� �
���
�
�� 
� .ascrinit****      � ****
� k     
�
�  �
�
�  �
�
�  �
�
�  �����  �  �  
� ��������
�� 
pare�� 0 	_pathinfo 	_pathInfo�� 0 _inforecord _infoRecord�� 0 _prefer_posix  
� ������������
�� 
pare�� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �  b  N  Ob   �O�Ob   j+ ��
 )E�O��K S�O�
1 �� �����
�
����� 0 change_name  �� ��
��� 
�  ���� 
0 a_name  ��  
� ������ 
0 a_name  �� 0 	path_info  
� �������� 0 	_pathinfo 	_pathInfo�� 0 change_name  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ 
2 �� �����
�
����� 0 change_folder  �� ��
��� 
�  ���� 0 
folder_ref  ��  
� ������ 0 
folder_ref  �� 0 	path_info  
� �������� 0 	_pathinfo 	_pathInfo�� 0 change_folder  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ 
3 ������
�
����� 0 change_path_extension  �� ��
��� 
�  ���� 0 a_suffix  ��  
� ���� 0 a_suffix  
� �������� 0 	_pathinfo 	_pathInfo�� 0 change_path_extension  �� 0 make_with_pathinfo  �� *)�,�k+ k+ 
4 ��3����
�
����� 0 as_alias  ��  ��  
�  
� �������� !0 check_existance_raising_error  �� 0 	_pathinfo 	_pathInfo�� 0 as_alias  �� *j+  O)�,j+ 
5 ��G����
�
����� 0 as_furl  ��  ��  
�  
� ������ 0 	_pathinfo 	_pathInfo�� 0 as_furl  �� 	)�,j+ 
6 ��W����
�
����� 0 hfs_path  ��  ��  
�  
� ������ 0 	_pathinfo 	_pathInfo�� 0 hfs_path  �� 	)�,j+ 
7 ��g����
�
����� 0 
posix_path  ��  ��  
�  
� ������ 0 	_pathinfo 	_pathInfo�� 0 
posix_path  �� 	)�,j+ 
8 ��w����
�
����� 0 normalized_posix_path  ��  ��  
�  
� ������ 0 	_pathinfo 	_pathInfo�� 0 normalized_posix_path  �� 	)�,j+ 
9 �������
�
����� 0 quoted_path  ��  ��  
�  
� �������� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
strq�� )�,j+ �,E
: �������
�
����� 0 type_identifier  ��  ��  
�  
� ������������ "0 sharedworkspace sharedWorkspace�� 0 
posix_path  
�� 
msng�� &0 typeoffile_error_ typeOfFile_error_
�� 
ctxt�� b  j+   *)j+ �l+ �&U
; �������
�
����� 0 	is_folder  ��  ��  
� ������ 
0 my_uti  �� 0 a_result  
� ���������� 0 type_identifier  �� "0 sharedworkspace sharedWorkspace�� ,0 type_conformstotype_ type_conformsToType_�� 0*j+  E�Ob  j+  ��  eE�Y *��l+ E�UO�OP
< �������
�
����� 0 
is_package  ��  ��  
�  
� �������� "0 sharedworkspace sharedWorkspace�� 0 
posix_path  �� ,0 isfilepackageatpath_ isFilePackageAtPath_�� b  j+   *)j+ k+ OPU
= ������
�
����� 0 is_alias  ��  ��  
�  
� ���� 0 type_identifier  �� 	�*j+  
> ������
�
����� 0 
is_symlink  ��  ��  
�  
� ���� 0 type_identifier  �� 	�*j+  
? ��(����
�
����� 0 
is_visible  ��  ��  
� ���� 0 info_rec  
� ������ 0 info  
�� 
pvis�� *j+  E�O��,E
@ ��<����
�
����� 0 	set_types  �� ��
��� 
�  ��~� 0 creator_code  �~ 0 	type_code  ��  
� �}�|�{�} 0 creator_code  �| 0 	type_code  �{ 
0 a_file  
� �z�y`�x�w�v�u�z 0 	is_folder  �y 0 as_alias  
�x 
fcrt
�w 
asty
�v 
msng�u 0 _inforecord _infoRecord�� ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h
A �tp�s�r
�
��q�t 0 info  �s  �r  
�  
� �p�o�n�m�l�k�p 0 _inforecord _infoRecord
�o 
msng�n !0 check_existance_raising_error  �m 0 as_furl  
�l 
ptsz
�k .sysonfo4asfe        file�q ()�,�  *j+ O*j+ �fl )�,FY hO)�,E
B �j��i�h
�
��g�j 0 info_with_size  �i  �h  
�  
� �f�e�d�c�b�a�f 0 _inforecord _infoRecord
�e 
msng�d !0 check_existance_raising_error  �c 0 as_furl  
�b 
ptsz
�a .sysonfo4asfe        file�g D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,E
C �`��_�^
�
��]�` 0 re_info  �_  �^  
�  
� �\�[�Z�Y�X�W�\ 0 _inforecord _infoRecord
�[ 
msng
�Z 
ptsz
�Y 
bool�X 0 as_furl  
�W .sysonfo4asfe        file�] <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,E
D �V �U�T
�
��S�V 0 	item_name  �U  �T  
�  
� �R�Q�R 0 	_pathinfo 	_pathInfo�Q 0 	item_name  �S 	)�,j+ 
E �P�O�N
�
��M�P 0 basename  �O  �N  
�  
� �L�K�L 0 	_pathinfo 	_pathInfo�K 0 basename  �M 	)�,j+ 
F �J �I�H
�
��G�J 0 path_extension  �I  �H  
�  
� �F�E�F 0 	_pathinfo 	_pathInfo�E 0 path_extension  �G 	)�,j+ 
G �D0�C�B
�
��A�D 0 volume_name  �C  �B  
�  
� �@�?�@ 0 	_pathinfo 	_pathInfo�? 0 volume_name  �A 	)�,j+ 
H �>G�=�<
�
��;�> 0 bundle_resource  �= �:
��: 
�  �9�9 0 resource_name  �<  
� �8�8 0 resource_name  
� �7�6�5�4
�7 
in B�6 0 as_alias  
�5 .sysorpthalis        TEXT�4 0 	make_with  �; *��*j+ l k+ 
I �3[�2�1
�
��0�3 $0 bundle_infoplist bundle_InfoPlist�2  �1  
�  
� _�/�/ 0 child_posix  �0 *�k+ 
J �.f�-�,
�
��+�. 0 bundle_resources_folder  �-  �,  
�  
� j�*�* 0 child_posix  �+ *�k+ 
K �)}�(�'
�
��&�) 0 item_exists  �(  �'  
�  
� �%�$�% 0 	_pathinfo 	_pathInfo�$ 0 item_exists  �& 	)�,j+ 
L �#��"�!
�
�� �# 0 item_exists_without_update  �"  �!  
�  
� ��� 0 	_pathinfo 	_pathInfo� 0 item_exists_without_update  �  	)�,j+ 
M ����
�
��
� .coredoexbool       obj �  �  
�  
� �� 0 item_exists  � *j+  
N ����
�
��� 0 	rename_to  � �
�� 
�  �� 0 new_name  �  
� ���� 0 new_name  � 0 dest  � 0 a_result  
� ������
�	� 0 	_pathinfo 	_pathInfo� 0 change_name  �  0 defaultmanager defaultManager� 0 
posix_path  
� 
msng�
 <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_�	 0 _inforecord _infoRecord� D)�,�k+ E�Ob  j+  *)�,j+ �j+ �m+ E�UO� �)�,FO�)�,FY hO�
O ����
�
��� 0 copy_to  � �
�� 
�  �� 0 a_destination  �  
� ��� 0 a_destination  � 0 a_result  
� � ��������������������
�  
pcls
�� 
scpt�� 0 	make_with  �� 0 item_exists  �� 0 	is_folder  �� 0 	item_name  �� 	0 child  ��  0 defaultmanager defaultManager�� 0 
posix_path  
�� 
msng�� <0 copyitematpath_topath_error_ copyItemAtPath_toPath_error_� j��,� *�k+ E�Y hO�j+  �j+  �*j+ k+ E�Y fY hOb  j+  *)j+ �j+ �m+ 
E�UO� �Y hO�
P ��8����
�
����� 0 
replace_to  �� ��
��� 
�  ���� 0 a_destination  ��  
� ������ 0 a_destination  �� 0 a_result  
� ������������������������������
�� 
pcls
�� 
scpt�� 0 	make_with  �� 0 item_exists  �� 0 	is_folder  �� 0 	item_name  �� 	0 child  ��  0 defaultmanager defaultManager�� 0 	_pathinfo 	_pathInfo�� 0 as_nsurl as_NSURL
�� 
msng�� �� �0 Mreplaceitematurl_withitematurl_backupitemname_options_resultingitemurl_error_ MreplaceItemAtURL_withItemAtURL_backupItemName_options_resultingItemURL_error_�� 0 item_ref  �� 0 
change_ref  �� z��,� *�k+ E�Y hO�j+  �j+  �*j+ k+ E�Y fY hOb  j+  *��,j+ 	)�,j+ 	�j���+ E�OPUO� *�j+ k+ Y hO�
Q �������
�
����� 0 copy_with_opts  �� ��
��� 
�  ������ 0 a_destination  �� 0 opts  ��  
� ������������������������ 0 a_destination  �� 0 opts  �� 0 w_replacing  �� 0 w_admin  �� 0 
w_removing  �� 0 command  �� 0 com_opts  �� 0 is_folder_to  �� 0 destination_path  �� 0 source_path  �� 0 	a_command  
� ����������������������������!*05����K��������������
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
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�
R �������
�
����� 0 finder_copy_to  �� ��
��� 
�  ������ 0 a_destination  �� 0 with_replacing  ��  
� ������������ 0 a_destination  �� 0 with_replacing  �� 0 destination  �� 0 source_alias  �� 0 new_item  
� ����������������� 0 as_alias  
�� 
insh
�� 
alrp�� 
�� .coreclon****      � ****
�� 
alis�� 0 	make_with  �� +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ 
S �������
�
����� 
0 my_log  �� ��
��� 
�  ���� 
0 a_text  ��  
� ���� 
0 a_text  
� ����
�� 
ascr
�� .ascrcmnt****      � ****�� � �j U
T �������
�
����� 0 move_to  �� ��
��� 
�  ���� 0 a_destination  ��  
� ������ 0 a_destination  �� 0 a_result  
� ������������������������������ 0 item_exists  
�� 
pcls
�� 
scpt�� 0 	make_with  �� 0 	is_folder  �� 0 	item_name  �� 	0 child  ��  0 defaultmanager defaultManager�� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
msng�� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_�� 0 item_ref  �� 0 
change_ref  �� y*j+  O��,� *�k+ E�Y hO�j+   �j+  �*j+ k+ E�Y fY hOb  j+  *)�,j+ 	�j+ 	�m+ E�UO� *�j+ k+ Y hO�
U ��"����
�
����� 0 move_with_replacing  �� ��
��� 
�  �� 0 a_destination  ��  
� �~�}�|�{�z�~ 0 a_destination  �} 0 escaped_item  �| 
0 uchild  �{ 0 a_result  �z 0 s_destination  
� �y�x�w�v�u�t�s�rY�q�p
�y 
msng�x 0 item_exists_without_update  �w 0 	is_folder  �v 0 	deep_copy  �u 0 parent_folder  �t 0 	item_name  �s 0 unique_child  �r 0 move_to  
�q .ascrcmnt****      � ****�p 
0 remove  �� ��E�O�j+  F�j+  9�j+  -*E�O*j+ �j+ k+ E�O*�k+  �j 	OfY hUY hY hO*�k+ E�O� �� 
�j+ 
Y hY �� ��k+ Y hO�
V �o��n�m
�
��l�o 0 resolve_alias  �n  �m  
� �k�j�k 0 
x_original  �j 0 original_url  
� �i�h�g�f�e�d�c�b�a�`�_�i 0 
is_symlink  �h 0 	deep_copy  �g 0 item_exists  
�f 
msng�e 0 is_alias  �d 0 	_pathinfo 	_pathInfo�c 0 as_nsurl as_NSURL�b Z0 +urlbyresolvingaliasfileaturl_options_error_ +URLByResolvingAliasFileAtURL_options_error_�a 0 path  
�` 
ctxt�_ 0 	make_with  �l d*j+   *j+ E�O�j+  �Y �Y hO*j+  )Y hOb  )�,j+ j�m+ E�O��  �Y hO*�j+ �&k+ 

W �^��]�\
�
��[�^ 0 
into_trash  �]  �\  
� �Z�Z 0 a_result  
� 	�Y�X�W�V�U�T�S�R�Q�Y  0 defaultmanager defaultManager�X 0 	_pathinfo 	_pathInfo�W 0 as_nsurl as_NSURL
�V 
msng�U P0 &trashitematurl_resultingitemurl_error_ &trashItemAtURL_resultingItemURL_error_
�T afdmtrsh
�S .earsffdralis        afdr�R 0 change_folder  �Q 0 change_pathinfo  �[ 8b  j+   *)�,j+ ��m+ E�UO� *)�,�j k+ k+ Y h
X �P�O�N
�
��M�P 
0 remove  �O  �N  
� �L�K�L 
0 a_path  �K 0 a_result  
� �J�I�H�G�F�E�D�C�J 0 	_pathinfo 	_pathInfo�I 0 as_text  �H  0 defaultmanager defaultManager�G 0 
posix_path  
�F 
msng�E 20 removeitematpath_error_ removeItemAtPath_error_�D 0 	_item_ref  �C 0 _inforecord _infoRecord�M >)�,j+ E�Ob  j+  *)j+ �l+ E�UO� �)�,�,FO�)�,FY hO�
Y �BE�A�@
�
��?�B 0 make_folder  �A �>
��> 
�  �=�= 0 folder_name  �@  
� �<�;�< 0 folder_name  �; 0 
new_folder  
� �:�9�8�7�: 0 item_exists  
�9 
msng�8 	0 child  �7 0 	make_path  �? "*j+   �Y hO*�k+ E�O�jvk+ 
Z �6h�5�4
�
��3�6 0 	make_path  �5 �2
��2 
�  �1�1 0 opts  �4  
� �0�/�0 0 opts  �/ 0 w_admin  
� �.�-�,�+�*�)��(�'�&�%
�. 
pcls
�- 
reco�, 0 
with_admin  �+ 0 item_exists  �* 0 	is_folder  
�) 
msng�( 0 
posix_path  
�' 
strq
�& 
badm
�% .sysoexecTEXT���     TEXT�3 SfE�O��,�  
��,E�Y hO*j+  *j+  )Y �Y hO�*j+ �,%�l 
O*j+  )Y hO�
[ �$��#�"
�
��!�$ 0 read_as_utf8  �#  �"  
�  
� � �����  !0 check_existance_raising_error  � 0 as_alias  
� 
as  
� 
utf8
� .rdwrread****        ****�! *j+  O*j+ ��l 
\ ����
�
��� 0 write_as_utf8  � �
�� 
�  �� 
0 a_data  �  
� ��� 
0 a_data  � 
0 output  
� ����������
�	� 0 as_furl  
� 
perm
� .rdwropenshor       file
� 
set2
� .rdwrseofnull���     ****
� 
refn
� 
as  
� 
utf8� 
�
 .rdwrwritnull���     ****
�	 .rdwrclosnull���     ****� &*j+  �el E�O��jl O����� 	O�j 

] ���� �� 0 parent_folder  �  �      ���� 0 	_pathinfo 	_pathInfo� 0 parent_folder  � 0 make_with_pathinfo  � *)�,j+ k+ 
^ ��� ����� 	0 child  �  ����   ���� 0 subpath  ��   ���� 0 subpath   ������������ 0 item_exists_without_update  �� 0 	_pathinfo 	_pathInfo�� 	0 child  �� 0 make_with_pathinfo  
�� 
msng�� *j+   *)�,�k+ k+ Y �
_ ���������� 0 child_posix  �� ����   ���� 0 subpath  ��   ������ 0 subpath  �� 
0 a_path   ���������� 0 item_exists  �� 0 
posix_path  �� 0 	make_with  
�� 
msng�� #*j+   *j+ E�O��%E�O*�k+ Y �
` ��1����	���� 0 unique_child  �� ��
�� 
  ���� 0 a_candidate  ��   �������������� 0 a_candidate  �� 0 
a_basename  �� 0 a_suffix  �� 0 i  �� 0 escape_suffix  �� 0 a_child  	 ��������\bl���������� 0 	is_folder  
�� 
msng�� 0 
split_name  
�� 
cobj�� 	0 child  �� 0 item_exists  
�� 
spac
�� 
utxt�� x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�
a ����������� 0 list_children  ��  ��     ������ 0 as_furl  
�� .earslfdrutxt  @    file�� *j+  j 
b ����������� 0 each  �� ����   ���� 0 a_script  ��   ������������ 0 a_script  �� 
0 a_list  �� 0 listwrapper ListWrapper�� 0 n  �� 
0 x_item   	����������������� 0 list_children  �� 0 listwrapper ListWrapper ��������
�� .ascrinit****      � **** k      �����  ��  ��   ��
�� 
pcnt ��
�� 
pcnt�� b  �
�� .corecnte****       ****
�� 
pcnt
�� 
cobj�� 	0 child  �� 0 do  �� A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��
c ����������� 0 perform_shell  �� ����   ���� 0 	a_command  ��   ������ 0 	a_command  �� 
0 a_path   ������������ 0 normalized_posix_path  
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� *j+  �,�,E�O��,%�%�%�%j 
d ��	�������� 0 
shell_test  �� ����   ���� 
0 option  ��   ���� 
0 option   	����������
�� 
spac�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  ��   �%�%*j+ %j W 	X  fOe
e ��	,�������� 0 	deep_copy  ��  ��     �������� 0 	_pathinfo 	_pathInfo�� 	0 clone  �� 0 make_with_pathinfo  �� *)�,j+ k+ 
f ��	9�������� 0 item_ref  ��  ��     ������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 	)�,j+ 
g ��	D���� ���� !0 check_existance_raising_error  ��  ��      ��������	Z����	c�� 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  
�� 
errn��F�� 0 as_text  
�� 
strq�� ")�,j+  )��l�)�,j+ �,%�%Y h
h ��	k����!"���� 0 update_pathinfo  ��  ��  !  " ����������� 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 prefering_posix  �� 0 is_posix  � 0 make_with_opts  �� %b  )�,j+ �)�,j+ ll+ )�,FO)�,E
i �~	��}�|#$�{�~ 0 change_pathinfo  �} �z%�z %  �y�y 0 
a_pathinfo  �|  # �x�x 0 
a_pathinfo  $ �w�v�u�t�s�w 0 	_pathinfo 	_pathInfo
�v 
msng�u 0 _inforecord _infoRecord�t 0 is_posix  �s 0 _prefer_posix  �{ �)�,FO�)�,FO)�,j+ )�,FO)
j �r	��q�p&'�o�r 0 
change_ref  �q �n(�n (  �m�m 0 file_ref  �p  & �l�l 0 file_ref  ' �k�j�k 0 	make_with  �j 0 change_pathinfo  �o *b  �k+  k+ 
k �i	��h�g)*�f�i 0 dump  �h  �g  )  * �e�d�e 0 	_pathinfo 	_pathInfo�d 0 as_text  �f 	)�,j+ 
l �c	��b�a+,�`�c 	0 debug  �b  �a  + �_�^�]�_ 
0 a_path  �^ 0 a_xfile  �] 0 new_named_file  , �\	��[	��Z�Y�X	��W�V�U
�\ 
scpt�[ 	0 setup  
�Z 
psxf�Y 0 	make_with  �X 0 parent_folder  �W 0 unique_child  �V 0 	item_name  
�U .ascrcmnt****      � ****�` 0)��/)k+ O��&E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 

m �T
�S�R-.�Q�T 0 open_helpbook  �S  �R  - �P�O�P 0 msg  �O 	0 errno  . 	�N
�M�L�K/�J�I�H
�N 
scpt
�M .earsffdralis        afdr�L 0 do  �K 0 msg  / �G�F�E
�G 
errn�F 	0 errno  �E  
�J .miscactvnull��� ��� null
�I 
ret 
�H .sysodisAaleR        TEXT�Q - )��/ *)j k+ UW X  *j O��%�%j 
n �D
�C�B01�A
�D .aevtoappnull  �   � ****�C  �B  0  1 �@�@ 0 open_helpbook  �A *j+   ascr  ��ޭ