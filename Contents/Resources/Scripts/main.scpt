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
is_symlink  ��  ��   L      l    ���� =     !  m     "" �##  p u b l i c . s y m l i n k! I    �������� 0 type_identifier  ��  ��  ��  ��   $%$ l     ��������  ��  ��  % &'& l      ��()��  ( j d!@abstruct
Check whether the item is visible or not.
@result boolean : true if the item is visible.
   ) �** � ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e . 
' +,+ i   � �-.- I      �������� 0 
is_visible  ��  ��  . k     // 010 r     232 I     �������� 0 info  ��  ��  3 o      ���� 0 info_rec  1 4��4 L    55 n    676 1   	 ��
�� 
pvis7 o    	���� 0 info_rec  ��  , 898 l     ��������  ��  ��  9 :;: l      ��<=��  < � �!@abstruct
Set creator code and type code to the item.
@param creator_code (text) : creator code which consists of 4 characters
@param type_code (text) : type code which consists of 4 characters
   = �>>� ! @ a b s t r u c t 
 S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m . 
 @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s 
 @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s 
; ?@? i   � �ABA I      ��C���� 0 	set_types  C DED o      ���� 0 creator_code  E F��F o      ���� 0 	type_code  ��  ��  B k     +GG HIH l     ��JK��  J V P difficult to implemented with NSFileManager's setAttributes:ofItemAtPath:error:   K �LL �   d i f f i c u l t   t o   i m p l e m e n t e d   w i t h   N S F i l e M a n a g e r ' s   s e t A t t r i b u t e s : o f I t e m A t P a t h : e r r o r :I M��M Z     +NO��~N H     PP I     �}�|�{�} 0 	is_folder  �|  �{  O k   	 'QQ RSR r   	 TUT I   	 �z�y�x�z 0 as_alias  �y  �x  U o      �w�w 
0 a_file  S VWV O    !XYX k     ZZ [\[ r    ]^] o    �v�v 0 creator_code  ^ n      _`_ 1    �u
�u 
fcrt` o    �t�t 
0 a_file  \ a�sa r     bcb o    �r�r 0 	type_code  c n      ded 1    �q
�q 
astye o    �p�p 
0 a_file  �s  Y m    ff�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  W g�og r   " 'hih m   " #�n
�n 
msngi n     jkj o   $ &�m�m 0 _inforecord _infoRecordk  f   # $�o  �  �~  ��  @ lml l     �l�k�j�l  �k  �j  m non l      �ipq�i  p!@abstruct
Obtain file information.
@description
Do &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().
The size of the target will not be included.
@result file infomation(record) : a result of info for command.
   q �rr( ! @ a b s t r u c t 
 O b t a i n   f i l e   i n f o r m a t i o n . 
 @ d e s c r i p t i o n 
 D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) . 
 T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d . 
 @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . 
o sts i   � �uvu I      �h�g�f�h 0 info  �g  �f  v k     'ww xyx Z     !z{�e�dz =    |}| n    ~~ o    �c�c 0 _inforecord _infoRecord  f     } m    �b
�b 
msng{ k    �� ��� I    �a�`�_�a !0 check_existance_raising_error  �`  �_  � ��^� r    ��� I   �]��
�] .sysonfo4asfe        file� I    �\�[�Z�\ 0 as_furl  �[  �Z  � �Y��X
�Y 
ptsz� m    �W
�W boovfals�X  � n     ��� o    �V�V 0 _inforecord _infoRecord�  f    �^  �e  �d  y ��U� L   " '�� n  " &��� o   # %�T�T 0 _inforecord _infoRecord�  f   " #�U  t ��� l     �S�R�Q�S  �R  �Q  � ��� l      �P���P  �82!@abstruct
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
� ��� i   � ���� I      �O�N�M�O 0 info_with_size  �N  �M  � k     C�� ��� Z     =����L� =    ��� n    ��� o    �K�K 0 _inforecord _infoRecord�  f     � m    �J
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
�3 boovtrue�4  � n     ��� o   6 8�2�2 0 _inforecord _infoRecord�  f   5 6�:  �L  � ��1� L   > C�� n  > B��� o   ? A�0�0 0 _inforecord _infoRecord�  f   > ?�1  � ��� l     �/�.�-�/  �.  �-  � ��� l      �,���,  � � �!@abstruct
Obtain file information again.
@description
Do "info for" command for the item and reset the cache of ((<info>))().
@result file infomation(record) : a result of info for command.
   � ���~ ! @ a b s t r u c t 
 O b t a i n   f i l e   i n f o r m a t i o n   a g a i n . 
 @ d e s c r i p t i o n 
 D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) . 
 @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . 
� ��� i   � ���� I      �+�*�)�+ 0 re_info  �*  �)  � k     ;�� ��� Z     5���(�� F     ��� l    ��'�&� >    ��� n    ��� o    �%�% 0 _inforecord _infoRecord�  f     � m    �$
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
  �	  �  � ��� l      ����  � % !@group Obtain Path Infomation    � ��� > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  � ��� l     ����  �  �  � ��� l      � �    W Q!@abstruct 
Obtain the name of the item referenced by the instance 
@result text
    � � ! @ a b s t r u c t   
 O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   
 @ r e s u l t   t e x t 
�  i   � � I      ��� � 0 	item_name  �  �    L      n    	 n   

 I    �������� 0 	item_name  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo	  f       l     ��������  ��  ��    l      ����   � �!@abstruct 
Obtain the base name (a name which does not include path extension) of the item referenced by the instance.
@result text
    �
 ! @ a b s t r u c t   
 O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ r e s u l t   t e x t 
  i   � � I      �������� 0 basename  ��  ��   L      n     n    I    �������� 0 basename  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f       l     ��������  ��  ��    l      �� !��    � �!@abstruct 
Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.
@result text
   ! �""� ! @ a b s t r u c t   
 O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n . 
 @ r e s u l t   t e x t 
 #$# i   � �%&% I      �������� 0 path_extension  ��  ��  & L     '' n    ()( n   *+* I    �������� 0 path_extension  ��  ��  + o    ���� 0 	_pathinfo 	_pathInfo)  f     $ ,-, l     ��������  ��  ��  - ./. l      ��01��  0 ^ X!@abstruct 
Obtain the volume name of the item referenced by the instance.
@result text
   1 �22 � ! @ a b s t r u c t   
 O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ r e s u l t   t e x t 
/ 343 i   � �565 I      �������� 0 volume_name  ��  ��  6 L     77 n    898 n   :;: I    �������� 0 volume_name  ��  ��  ; o    ���� 0 	_pathinfo 	_pathInfo9  f     4 <=< l     ��������  ��  ��  = >?> l      ��@A��  @ $ !@group Working with a Bundle    A �BB < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e  ? CDC l     ��������  ��  ��  D EFE l      ��GH��  G � �!@abstruct
Obtain an item which is in the bundle resource folder.
@description
This method can be call to a bundle.
@param resource_name (text) : a resource name
@result script object : a XFile instance
   H �II� ! @ a b s t r u c t 
 O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r . 
 @ d e s c r i p t i o n 
 T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e . 
 @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 
F JKJ i   � �LML I      ��N���� 0 bundle_resource  N O��O o      ���� 0 resource_name  ��  ��  M L     PP I     ��Q���� 0 	make_with  Q R��R I   ��ST
�� .sysorpthalis        TEXTS o    ���� 0 resource_name  T ��U��
�� 
in BU l   V����V I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��  K WXW l     ��������  ��  ��  X YZY l      ��[\��  [ j d!@abstruct
Obtain a reference to Info.plist of the bundle.
@result script object : a XFile instance
   \ �]] � ! @ a b s t r u c t 
 O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 
Z ^_^ i   � �`a` I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  a L     bb I     ��c���� 0 child_posix  c d��d m    ee �ff & C o n t e n t s / I n f o . p l i s t��  ��  _ ghg l     ��������  ��  ��  h iji i   � �klk I      �������� 0 bundle_resources_folder  ��  ��  l L     mm I     ��n���� 0 child_posix  n o��o m    pp �qq & C o n t e n t s / R e s o u r c e s /��  ��  j rsr l     ��������  ��  ��  s tut l      ��vw��  v ! !@group File Manipulations    w �xx 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  u yzy l     ��������  ��  ��  z {|{ l      ��}~��  }/)!@abstruct
Check whether the item referenced by the instance exists or not.
@description
A file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.
@result boolean : true if the item exists.
   ~ �R ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t . 
 @ d e s c r i p t i o n 
 A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . 
| ��� i   � ���� I      �������� 0 item_exists  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_exists  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
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
��� n    ��� n   ��� I    ������� 0 change_name  � ���� o    ���� 0 new_name  ��  ��  � o    �� 0 	_pathinfo 	_pathInfo�  f     � o      �~�~ 0 dest  � ��� O    ,��� r    +��� n   )��� I    )�}��|�} <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_� ��� l   ��{�z� n   ��� n   ��� I    �y�x�w�y 0 
posix_path  �x  �w  � o    �v�v 0 	_pathinfo 	_pathInfo�  f    �{  �z  � ��� l   $��u�t� n   $��� I     $�s�r�q�s 0 
posix_path  �r  �q  � o     �p�p 0 dest  �u  �t  � ��o� l  $ %��n�m� m   $ %�l
�l 
msng�n  �m  �o  �|  �  g    � o      �k�k 0 a_result  � n   ��� I    �j�i�h�j  0 defaultmanager defaultManager�i  �h  � o    �g�g 0 nsfilemanager NSFileManager� ��� l  - -�f�e�d�f  �e  �d  � ��� Z   - @���c�b� o   - .�a�a 0 a_result  � k   1 <�� ��� r   1 6��� m   1 2�`
�` 
msng� n     ��� o   3 5�_�_ 0 _inforecord _infoRecord�  f   2 3� ��^� r   7 <��� o   7 8�]�] 0 dest  � n     ��� o   9 ;�\�\ 0 	_pathinfo 	_pathInfo�  f   8 9�^  �c  �b  � ��[� L   A C�� o   A B�Z�Z 0 a_result  �[  � ��� l     �Y�X�W�Y  �X  �W  � ��� l      �V���V  �*$!@abstruct 
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
� ��� i   � ���� I      �U��T�U 0 copy_to  � ��S� o      �R�R 0 a_destination  �S  �T  � k     i�� ��� Z     ���Q�P� >    ��� n     ��� m    �O
�O 
pcls� o     �N�N 0 a_destination  � m    �M
�M 
scpt� r       I    �L�K�L 0 	make_with   �J o   	 
�I�I 0 a_destination  �J  �K   o      �H�H 0 a_destination  �Q  �P  �  l   �G�F�E�G  �F  �E    Z    :	�D�C n   

 I    �B�A�@�B 0 item_exists  �A  �@   o    �?�? 0 a_destination  	 Z    6�> n   " I    "�=�<�;�= 0 	is_folder  �<  �;   o    �:�: 0 a_destination   r   % 1 n  % / I   & /�9�8�9 	0 child   �7 I   & +�6�5�4�6 0 	item_name  �5  �4  �7  �8   o   % &�3�3 0 a_destination   o      �2�2 0 a_destination  �>   L   4 6 m   4 5�1
�1 boovfals�D  �C    l  ; ;�0�/�.�0  �/  �.    O   ; Z r   G Y n  G W !  I   H W�-"�,�- <0 copyitematpath_topath_error_ copyItemAtPath_toPath_error_" #$# l  H M%�+�*% n  H M&'& I   I M�)�(�'�) 0 
posix_path  �(  �'  '  f   H I�+  �*  $ ()( l  M R*�&�%* n  M R+,+ I   N R�$�#�"�$ 0 
posix_path  �#  �"  , o   M N�!�! 0 a_destination  �&  �%  ) -� - l  R S.��. m   R S�
� 
msng�  �  �   �,  !  g   G H o      �� 0 a_result   n  ; D/0/ I   @ D����  0 defaultmanager defaultManager�  �  0 o   ; @�� 0 nsfilemanager NSFileManager 121 Z   [ f34��3 H   [ ]55 o   [ \�� 0 a_result  4 L   ` b66 m   ` a�
� 
msng�  �  2 7�7 L   g i88 o   g h�� 0 a_destination  �  � 9:9 l     ����  �  �  : ;<; i   � �=>= I      �?�� 0 copy_with_replacing  ? @�@ o      �� 0 a_destination  �  �  > k     �AA BCB Z     DE�
�	D >    FGF n     HIH m    �
� 
pclsI o     �� 0 a_destination  G m    �
� 
scptE r    JKJ I    �L�� 0 	make_with  L M�M o   	 
�� 0 a_destination  �  �  K o      �� 0 a_destination  �
  �	  C NON r    PQP m    � 
�  
msngQ o      ���� 0 escaped_item  O RSR Z    nTU����T n   VWV I    �������� 0 item_exists_without_update  ��  ��  W o    ���� 0 a_destination  U Z   ! jXY����X H   ! 'ZZ n  ! &[\[ I   " &�������� 0 	is_folder  ��  ��  \ o   ! "���� 0 a_destination  Y k   * f]] ^_^ r   * 1`a` I   * /�������� 0 	item_name  ��  ��  a o      ���� 	0 uname  _ b��b O   2 fcdc k   : eee fgf r   : =hih  g   : ;i o      ���� 0 escaped_item  g jkj r   > Nlml n  > Lnon n  ? Lpqp I   C L��r���� 0 unique_child  r s��s n  C Htut I   D H�������� 0 	item_name  ��  ��  u  g   C D��  ��  q I   ? C�������� 0 parent_folder  ��  ��  o  g   > ?m o      ���� 
0 uchild  k vwv l  O O��xy��  x    log uchild's posix_path()   y �zz 4   l o g   u c h i l d ' s   p o s i x _ p a t h ( )w {��{ Z   O e|}����| H   O V~~ n  O U� I   P U������� 0 move_to  � ���� o   P Q���� 
0 uchild  ��  ��  �  g   O P} k   Y a�� ��� I  Y ^�����
�� .ascrcmnt****      � ****� m   Y Z�� ��� @ F a i l e d   t o   e s c a p e   e x i s i t i n g   i t e m .��  � ���� L   _ a�� m   _ `��
�� 
msng��  ��  ��  ��  d n  2 7��� I   3 7�������� 0 	deep_copy  ��  ��  � o   2 3���� 0 a_destination  ��  ��  ��  ��  ��  S ��� l  o o��������  ��  ��  � ��� r   o w��� I   o u������� 0 copy_to  � ���� o   p q���� 0 a_destination  ��  ��  � o      ���� 0 a_result  � ��� Z   x ������� =  x {��� o   x y���� 0 a_result  � m   y z��
�� 
msng� l  ~ ����� Z   ~ �������� >  ~ ���� o   ~ ���� 0 escaped_item  � m    ���
�� 
msng� n  � ���� I   � �������� 0 move_to  � ���� o   � ����� 0 a_destination  ��  ��  � o   � ����� 0 escaped_item  ��  ��  �   failed    � ���    f a i l e d  ��  � l  � ����� Z   � �������� >  � ���� o   � ����� 0 escaped_item  � m   � ���
�� 
msng� n  � ���� I   � ��������� 
0 remove  ��  ��  � o   � ����� 0 escaped_item  ��  ��  �   success   � ���    s u c c e s s� ��� l  � ���������  ��  ��  � ���� L   � ��� o   � ����� 0 a_result  ��  < ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 
replace_to  � ���� o      ���� 0 a_destination  ��  ��  � l    y���� k     y�� ��� Z     ������� >    ��� n     ��� m    ��
�� 
pcls� o     ���� 0 a_destination  � m    ��
�� 
scpt� r    ��� I    ������� 0 	make_with  � ���� o   	 
���� 0 a_destination  ��  ��  � o      ���� 0 a_destination  ��  ��  � ��� l   ��������  ��  ��  � ��� Z    :������� n   ��� I    �������� 0 item_exists  ��  ��  � o    ���� 0 a_destination  � Z    6������ n   "��� I    "�������� 0 	is_folder  ��  ��  � o    ���� 0 a_destination  � r   % 1��� n  % /��� I   & /������� 	0 child  � ���� I   & +�������� 0 	item_name  ��  ��  ��  ��  � o   % &���� 0 a_destination  � o      ���� 0 a_destination  ��  � L   4 6�� m   4 5��
�� boovfals��  ��  � ��� l  ; ;��������  ��  ��  � ��� O   ; c��� k   G b�� ��� r   G `��� n  G ^��� I   H ^������� �0 Mreplaceitematurl_withitematurl_backupitemname_options_resultingitemurl_error_ MreplaceItemAtURL_withItemAtURL_backupItemName_options_resultingItemURL_error_� ��� l  H O������ n  H O��� I   K O�������� 0 as_nsurl as_NSURL��  ��  � n  H K��� o   I K�� 0 	_pathinfo 	_pathInfo� o   H I�~�~ 0 a_destination  ��  ��  � ��� l  O V��}�|� n  O V��� n  P V��� I   R V�{�z�y�{ 0 as_nsurl as_NSURL�z  �y  � o   P R�x�x 0 	_pathinfo 	_pathInfo�  f   O P�}  �|  � ��� l  V W �w�v  m   V W�u
�u 
msng�w  �v  �  m   W X�t�t    l  X Y�s�r m   X Y�q
�q 
msng�s  �r   �p l  Y Z�o�n m   Y Z�m
�m 
msng�o  �n  �p  ��  �  g   G H� o      �l�l 0 a_result  � �k l  a a�j�i�h�j  �i  �h  �k  � n  ; D	
	 I   @ D�g�f�e�g  0 defaultmanager defaultManager�f  �e  
 o   ; @�d�d 0 nsfilemanager NSFileManager�  Z   d v�c�b o   d e�a�a 0 a_result   I   h r�`�_�` 0 
change_ref   �^ n  i n I   j n�]�\�[�] 0 item_ref  �\  �[   o   i j�Z�Z 0 a_destination  �^  �_  �c  �b   �Y L   w y o   w x�X�X 0 a_result  �Y  � * $ almost same to move_with_replacing    � � H   a l m o s t   s a m e   t o   m o v e _ w i t h _ r e p l a c i n g  �  l     �W�V�U�W  �V  �U    l      �T�T  60!
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
    �` ! 
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
  i   � �  I      �S!�R�S 0 copy_with_opts  ! "#" o      �Q�Q 0 a_destination  # $�P$ o      �O�O 0 opts  �P  �R    k    8%% &'& l     �N()�N  ( \ V cp : if source and destination are folders and the path of the source ends with "/",    ) �** �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  ' +,+ l     �M-.�M  - ^ X         cp command contents of the source copy under the destination folder like ditto.   . �// �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o ., 010 l     �L23�L  2 U O        The endding "/" of the source path should be removed for stable result.   3 �44 �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .1 565 l     �K78�K  7 5 /        Is the support  of ditto not required ?   8 �99 ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?6 :;: r     <=< m     �J
�J boovtrue= o      �I�I 0 w_replacing  ; >?> r    @A@ m    �H
�H boovfalsA o      �G�G 0 w_admin  ? BCB r    DED m    	�F
�F boovfalsE o      �E�E 0 
w_removing  C FGF l   HIJH r    KLK m    MM �NN  c pL o      �D�D 0 command  I   or "ditto"   J �OO    o r   " d i t t o "G PQP l   �C�B�A�C  �B  �A  Q RSR Z    lTU�@�?T =   VWV n    XYX m    �>
�> 
pclsY o    �=�= 0 opts  W m    �<
�< 
recoU k    hZZ [\[ Q    )]^�;] r     _`_ n    aba o    �:�: 0 with_replacing  b o    �9�9 0 opts  ` o      �8�8 0 w_replacing  ^ R      �7�6�5
�7 .ascrerr ****      � ****�6  �5  �;  \ cdc Q   * ;ef�4e r   - 2ghg n   - 0iji o   . 0�3�3 0 
with_admin  j o   - .�2�2 0 opts  h o      �1�1 0 w_admin  f R      �0�/�.
�0 .ascrerr ****      � ****�/  �.  �4  d klk Q   < Mmn�-m r   ? Dopo n   ? Bqrq o   @ B�,�, 0 with_removing  r o   ? @�+�+ 0 opts  p o      �*�* 0 
w_removing  n R      �)�(�'
�) .ascrerr ****      � ****�(  �'  �-  l s�&s Q   N htu�%t Z   Q _vw�$�#v n   Q Uxyx o   R T�"�" 	0 ditto  y o   Q R�!�! 0 opts  w r   X [z{z m   X Y|| �}} 
 d i t t o{ o      � �  0 command  �$  �#  u R      ���
� .ascrerr ****      � ****�  �  �%  �&  �@  �?  S ~~ l  m m����  �  �   ��� Z   m ������ E  m v��� J   m r�� ��� m   m n�
� 
ctxt� ��� m   n o�
� 
utxt� ��� m   o p�
� 
TEXT�  � n   r u��� m   s u�
� 
pcls� o   r s�� 0 a_destination  � r   y ���� n  y ���� I   ~ ����� 	0 child  � ��� o   ~ �� 0 a_destination  �  �  � I   y ~���� 0 parent_folder  �  �  � o      �
�
 0 a_destination  �  �  � ��� l  � ��	���	  �  �  � ��� Z   � ������ =  � ���� o   � ��� 0 command  � m   � ��� ���  c p� k   � ��� ��� r   � ���� m   � ��� ���  - R p� o      �� 0 com_opts  � ��� Z   � ������ o   � �� �  0 w_replacing  � r   � ���� b   � ���� o   � ����� 0 com_opts  � m   � ��� ���  f� o      ���� 0 com_opts  �  �  �  � ��� =  � ���� o   � ����� 0 command  � m   � ��� ��� 
 d i t t o� ���� r   � ���� m   � ��� ���  - - r s r c� o      ���� 0 com_opts  ��  �  � ��� r   � ���� m   � ���
�� boovfals� o      ���� 0 is_folder_to  � ��� Z   � �������� n  � ���� I   � ��������� 0 item_exists  ��  ��  � o   � ����� 0 a_destination  � Z   � ������� l  � ������� o   � ����� 0 
w_removing  ��  ��  � n  � ���� I   � ��������� 
0 remove  ��  ��  � o   � ����� 0 a_destination  ��  � Z   � �������� =  � ���� o   � ����� 0 command  � m   � ��� ���  c p� r   � ���� n  � ���� I   � ��������� 0 	is_folder  ��  ��  � o   � ����� 0 a_destination  � o      ���� 0 is_folder_to  ��  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� r   � ���� n   � ���� 1   � ���
�� 
strq� n  � ���� I   � ��������� 0 normalized_posix_path  ��  ��  � o   � ����� 0 a_destination  � o      ���� 0 destination_path  � ��� r   ���� n   � ���� 1   � ���
�� 
strq� I   � ��������� 0 normalized_posix_path  ��  ��  � o      ���� 0 source_path  � ��� r  ��� b  ��� b  ��� b  ��� b  ��� b  	��� b  ��� o  ���� 0 command  � 1  ��
�� 
spac� o  ���� 0 com_opts  � 1  	��
�� 
spac� o  ���� 0 source_path  � 1  ��
�� 
spac� o  ���� 0 destination_path  � o      ���� 0 	a_command  � ��� I !����
�� .sysoexecTEXT���     TEXT� o  ���� 0 	a_command  � �����
�� 
badm� o  ���� 0 w_admin  ��  � ��� Z  "5������� o  "#���� 0 is_folder_to  � L  &1�� n &0��� I  '0�� ���� 	0 child    �� I  ',�������� 0 	item_name  ��  ��  ��  ��  � o  &'���� 0 a_destination  ��  ��  � �� L  68 o  67���� 0 a_destination  ��    l     ��������  ��  ��    i   � �	 I      ��
���� 0 finder_copy_to  
  o      ���� 0 a_destination   �� o      ���� 0 with_replacing  ��  ��  	 k     *  r      n     I    �������� 0 as_alias  ��  ��   o     ���� 0 a_destination   o      ���� 0 destination    r     I    �������� 0 as_alias  ��  ��   o      ���� 0 source_alias    O    " r    ! c      l   !����! I   ��"#
�� .coreclon****      � ****" o    ���� 0 source_alias  # ��$%
�� 
insh$ o    ���� 0 destination  % ��&��
�� 
alrp& o    ���� 0 with_replacing  ��  ��  ��    m    ��
�� 
alis o      ���� 0 new_item   m    ''�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   (��( L   # *)) I   # )��*���� 0 	make_with  * +��+ o   $ %���� 0 new_item  ��  ��  ��   ,-, l     ��������  ��  ��  - ./. i   � �010 I      ��2���� 
0 my_log  2 3��3 o      ���� 
0 a_text  ��  ��  1 l    
4564 O    
787 I   	��9��
�� .ascrcmnt****      � ****9 o    ���� 
0 a_text  ��  8 1     ��
�� 
ascr5 E ? use this for debuggingm, because the log command is overrided.   6 �:: ~   u s e   t h i s   f o r   d e b u g g i n g m ,   b e c a u s e   t h e   l o g   c o m m a n d   i s   o v e r r i d e d ./ ;<; l     ��������  ��  ��  < =>= l      ��?@��  ?("!@abstruct
Move the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, moving an item will fail.
@param a_destination (script object) : a XFile instance referencing the destination to move.
@result boolean : true if success.
   @ �AAD ! @ a b s t r u c t 
 M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   m o v i n g   a n   i t e m   w i l l   f a i l . 
 @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . 
> BCB i   � �DED I      ��F���� 0 move_to  F G��G o      ���� 0 a_destination  ��  ��  E k     xHH IJI l     ��KL��  K   log "start move_to"   L �MM (   l o g   " s t a r t   m o v e _ t o "J NON l    PQRP I     �������� 0 item_exists  ��  ��  Q G A even if the item exists, broken symbolic file will return false.   R �SS �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .O TUT l   ��������  ��  ��  U VWV Z    XY���X >   Z[Z n    	\]\ m    	�~
�~ 
pcls] o    �}�} 0 a_destination  [ m   	 
�|
�| 
scptY r    ^_^ I    �{`�z�{ 0 	make_with  ` a�ya o    �x�x 0 a_destination  �y  �z  _ o      �w�w 0 a_destination  ��  �  W bcb l   �v�u�t�v  �u  �t  c ded Z    @fg�s�rf n    hih I     �q�p�o�q 0 item_exists  �p  �o  i o    �n�n 0 a_destination  g Z   # <jk�mlj n  # (mnm I   $ (�l�k�j�l 0 	is_folder  �k  �j  n o   # $�i�i 0 a_destination  k r   + 7opo n  + 5qrq I   , 5�hs�g�h 	0 child  s t�ft I   , 1�e�d�c�e 0 	item_name  �d  �c  �f  �g  r o   + ,�b�b 0 a_destination  p o      �a�a 0 a_destination  �m  l L   : <uu m   : ;�`
�` boovfals�s  �r  e vwv l  A A�_�^�]�_  �^  �]  w xyx O   A bz{z r   M a|}| n  M _~~ I   N _�\��[�\ <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_� ��� l  N U��Z�Y� n  N U��� n  O U��� I   Q U�X�W�V�X 0 
posix_path  �W  �V  � o   O Q�U�U 0 	_pathinfo 	_pathInfo�  f   N O�Z  �Y  � ��� l  U Z��T�S� n  U Z��� I   V Z�R�Q�P�R 0 
posix_path  �Q  �P  � o   U V�O�O 0 a_destination  �T  �S  � ��N� l  Z [��M�L� m   Z [�K
�K 
msng�M  �L  �N  �[    g   M N} o      �J�J 0 a_result  { n  A J��� I   F J�I�H�G�I  0 defaultmanager defaultManager�H  �G  � o   A F�F�F 0 nsfilemanager NSFileManagery ��� Z   c u���E�D� o   c d�C�C 0 a_result  � I   g q�B��A�B 0 
change_ref  � ��@� n  h m��� I   i m�?�>�=�? 0 item_ref  �>  �=  � o   h i�<�< 0 a_destination  �@  �A  �E  �D  � ��;� L   v x�� o   v w�:�: 0 a_result  �;  C ��� l     �9�8�7�9  �8  �7  � ��� l      �6���6  �>8!@abstruct
Move the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, the item will be replaced with the target item.
@param a_destination (script object) : a XFile instance referencing the destination to move.
@result boolean : true if success.
   � ���p ! @ a b s t r u c t 
 M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m . 
 @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . 
� ��� i   � ���� I      �5��4�5 0 move_with_replacing  � ��3� o      �2�2 0 a_destination  �3  �4  � k     ��� ��� r     ��� m     �1
�1 
msng� o      �0�0 0 escaped_item  � ��� Z    Q���/�.� n   	��� I    	�-�,�+�- 0 item_exists_without_update  �,  �+  � o    �*�* 0 a_destination  � Z    M���)�(� H    �� n   ��� I    �'�&�%�' 0 	is_folder  �&  �%  � o    �$�$ 0 a_destination  � O    I��� k    H�� ��� r     ���  g    � o      �#�# 0 escaped_item  � ��� r   ! 1��� n  ! /��� n  " /��� I   & /�"��!�" 0 unique_child  � �� � n  & +��� I   ' +���� 0 	item_name  �  �  � o   & '�� 0 a_destination  �   �!  � I   " &���� 0 parent_folder  �  �  �  g   ! "� o      �� 
0 uchild  � ��� l  2 2����  �    log uchild's posix_path()   � ��� 4   l o g   u c h i l d ' s   p o s i x _ p a t h ( )� ��� Z   2 H����� H   2 9�� n  2 8��� I   3 8���� 0 move_to  � ��� o   3 4�� 
0 uchild  �  �  �  g   2 3� k   < D�� ��� I  < A���
� .ascrcmnt****      � ****� m   < =�� ��� @ F a i l e d   t o   e s c a p e   e x i s i t i n g   i t e m .�  � ��� L   B D�� m   B C�
� boovfals�  �  �  �  � n   ��� I    ��
�	� 0 	deep_copy  �
  �	  � o    �� 0 a_destination  �)  �(  �/  �.  � ��� l  R R����  �  �  � ��� r   R Z��� I   R X���� 0 move_to  � ��� o   S T�� 0 a_destination  �  �  � o      � �  0 a_result  � ��� Z   [ ������� o   [ \���� 0 a_result  � Z   _ n������� >  _ b��� o   _ `���� 0 escaped_item  � m   ` a��
�� 
msng� n  e j��� I   f j�������� 
0 remove  ��  ��  � o   e f���� 0 escaped_item  ��  ��  ��  � Z   q �������� >  q t��� o   q r���� 0 escaped_item  � m   r s��
�� 
msng� n  w }��� I   x }������� 0 move_to  � ���� o   x y���� 0 s_destination  ��  ��  � o   w x���� 0 escaped_item  ��  ��  � ���� L   � ��� o   � ����� 0 a_result  ��  � � � l     ��������  ��  ��     l      ����  !@abstruct
Resolving original item of a alias file.
@description
If the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.
@result script object or missing value
    �
 ! @ a b s t r u c t 
 R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e . 
 @ d e s c r i p t i o n 
 I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e 
  i   � 	 I      �������� 0 resolve_alias  ��  ��  	 k     c

  Z     #���� I     �������� 0 
is_symlink  ��  ��   k      r     I    �������� 0 	deep_copy  ��  ��   o      ���� 0 
x_original   �� Z    �� n    I    �������� 0 item_exists  ��  ��   o    ���� 0 
x_original   L     o    ���� 0 
x_original  ��   L     m    ��
�� 
msng��  ��  ��    l  $ $��������  ��  ��    Z   $ 3 !����  H   $ *"" I   $ )�������� 0 is_alias  ��  ��  ! L   - /##  f   - .��  ��   $%$ l  4 4��������  ��  ��  % &'& r   4 H()( n  4 F*+* I   9 F��,���� Z0 +urlbyresolvingaliasfileaturl_options_error_ +URLByResolvingAliasFileAtURL_options_error_, -.- l  9 @/����/ n  9 @010 n  : @232 I   < @�������� 0 as_nsurl as_NSURL��  ��  3 o   : <���� 0 	_pathinfo 	_pathInfo1  f   9 :��  ��  . 454 m   @ A����  5 6��6 l  A B7����7 m   A B��
�� 
msng��  ��  ��  ��  + o   4 9���� 0 nsurl NSURL) o      ���� 0 original_url  ' 898 Z   I U:;����: =  I L<=< o   I J���� 0 original_url  = m   J K��
�� 
msng; L   O Q>> m   O P��
�� 
msng��  ��  9 ?��? L   V c@@ I   V b��A���� 0 	make_with  A B��B c   W ^CDC n  W \EFE I   X \�������� 0 path  ��  ��  F o   W X���� 0 original_url  D m   \ ]��
�� 
ctxt��  ��  ��   GHG l     ��������  ��  ��  H IJI l      ��KL��  K ! !@abstruct
Put into trash.
   L �MM 6 ! @ a b s t r u c t 
 P u t   i n t o   t r a s h . 
J NON i  PQP I      �������� 0 
into_trash  ��  ��  Q k     7RR STS l     ��UV��  U   log "start into_trash"   V �WW .   l o g   " s t a r t   i n t o _ t r a s h "T XYX O     Z[Z r    \]\ n   ^_^ I    ��`���� P0 &trashitematurl_resultingitemurl_error_ &trashItemAtURL_resultingItemURL_error_` aba l   c����c n   ded n   fgf I    �������� 0 as_nsurl as_NSURL��  ��  g o    ���� 0 	_pathinfo 	_pathInfoe  f    ��  ��  b hih l   j����j m    ��
�� 
msng��  ��  i k��k l   l����l m    ��
�� 
msng��  ��  ��  ��  _  g    ] o      ���� 0 a_result  [ n    	mnm I    	��������  0 defaultmanager defaultManager��  ��  n o     ���� 0 nsfilemanager NSFileManagerY opo l   ��������  ��  ��  p q��q Z    7rs����r o    ���� 0 a_result  s I   " 3��t���� 0 change_pathinfo  t u��u n  # /vwv n  $ /xyx I   & /��z���� 0 change_folder  z {��{ I  & +��|��
�� .earsffdralis        afdr| m   & '�
� afdmtrsh��  ��  ��  y o   $ &�~�~ 0 	_pathinfo 	_pathInfow  f   # $��  ��  ��  ��  ��  O }~} l     �}�|�{�}  �|  �{  ~ � l      �z���z  � X R!@abstruct
Remove the item referd from the target XFile instance.
@result boolean
   � ��� � ! @ a b s t r u c t 
 R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e . 
 @ r e s u l t   b o o l e a n 
� ��� i  ��� I      �y�x�w�y 
0 remove  �x  �w  � k     =�� ��� r     	��� n    ��� n   ��� I    �v�u�t�v 0 as_text  �u  �t  � o    �s�s 0 	_pathinfo 	_pathInfo�  f     � o      �r�r 
0 a_path  � ��� O   
 $��� r    #��� n   !��� I    !�q��p�q 20 removeitematpath_error_ removeItemAtPath_error_� ��� l   ��o�n� n   ��� I    �m�l�k�m 0 
posix_path  �l  �k  �  f    �o  �n  � ��j� l   ��i�h� m    �g
�g 
msng�i  �h  �j  �p  �  g    � o      �f�f 0 a_result  � n  
 ��� I    �e�d�c�e  0 defaultmanager defaultManager�d  �c  � o   
 �b�b 0 nsfilemanager NSFileManager� ��� Z   % :���a�`� o   % &�_�_ 0 a_result  � k   ) 6�� ��� r   ) 0��� o   ) *�^�^ 
0 a_path  � n     ��� n  + /��� o   - /�]�] 0 	_item_ref  � o   + -�\�\ 0 	_pathinfo 	_pathInfo�  f   * +� ��[� r   1 6��� m   1 2�Z
�Z 
msng� n     ��� o   3 5�Y�Y 0 _inforecord _infoRecord�  f   2 3�[  �a  �`  � ��X� L   ; =�� o   ; <�W�W 0 a_result  �X  � ��� l     �V�U�T�V  �U  �T  � ��� l      �S���S  �   !@group Making subfolders    � ��� 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  � ��� l     �R�Q�P�R  �Q  �P  � ��� l      �O���O  � � �!@abstruct
Make a sub folder.
@description
missing value will be returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.
@result script object or missing value : a XFile instance of newly created folder.
   � ���� ! @ a b s t r u c t 
 M a k e   a   s u b   f o l d e r . 
 @ d e s c r i p t i o n 
 m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . 
� ��� i  	��� I      �N��M�N 0 make_folder  � ��L� o      �K�K 0 folder_name  �L  �M  � k     !�� ��� Z     ���J�I� H     �� l    ��H�G� I     �F�E�D�F 0 item_exists  �E  �D  �H  �G  � L   	 �� m   	 
�C
�C 
msng�J  �I  � ��� l   �B�A�@�B  �A  �@  � ��� r    ��� I    �?��>�? 	0 child  � ��=� o    �<�< 0 folder_name  �=  �>  � o      �;�; 0 
new_folder  � ��:� L    !�� n    ��� I     �9��8�9 0 	make_path  � ��7� J    �6�6  �7  �8  � o    �5�5 0 
new_folder  �:  � ��� l     �4�3�2�4  �3  �2  � ��� l      �1���1  ���!@abstruct
Make folders which indicating the path of the XFile instance.
@description
Using a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.
@result script object or missing value : a XFile instance of newly created folder.
   � ��� ! @ a b s t r u c t 
 M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . 
� ��� i  ��� I      �0��/�0 0 	make_path  � ��.� o      �-�- 0 opts  �.  �/  � k     R�� ��� r     ��� m     �,
�, boovfals� o      �+�+ 0 w_admin  � ��� Z    ���*�)� =   	��� n    ��� m    �(
�( 
pcls� o    �'�' 0 opts  � m    �&
�& 
reco� r    ��� n    ��� o    �%�% 0 
with_admin  � o    �$�$ 0 opts  � o      �#�# 0 w_admin  �*  �)  � � � Z    0�"�! I    � ���  0 item_exists  �  �   Z    ,� I    #���� 0 	is_folder  �  �   L   & (  f   & '�   m   + ,�
� 
msng�"  �!     I  1 @�	

� .sysoexecTEXT���     TEXT	 b   1 : m   1 2 �  m k d i r   - p   l  2 9�� n   2 9 1   7 9�
� 
strq I   2 7���� 0 
posix_path  �  �  �  �  
 ��
� 
badm o   ; <�� 0 w_admin  �    Z  A O�� I   A F���
� 0 item_exists  �  �
   L   I K  f   I J�  �   �	 L   P R m   P Q�
� 
msng�	  �  l     ����  �  �    l     ����  �  �    l      � !�    0 *!@group Reading and Writing File Contents    ! �"" T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s   #$# l     � �����   ��  ��  $ %&% l      ��'(��  ' X R!@abstruct
Read file contents as UTF-8 encoded text.
@result Unicode text (UTF-8)
   ( �)) � ! @ a b s t r u c t 
 R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t . 
 @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) 
& *+* i  ,-, I      �������� 0 read_as_utf8  ��  ��  - k     .. /0/ I     �������� !0 check_existance_raising_error  ��  ��  0 1��1 L    22 I   ��34
�� .rdwrread****        ****3 l   5����5 I    �������� 0 as_alias  ��  ��  ��  ��  4 ��6��
�� 
as  6 m    ��
�� 
utf8��  ��  + 787 l     ��������  ��  ��  8 9:9 l      ��;<��  ; u o!@abstruct
Write data into the file as UTF-8 encoded text.
@param a_data (text) : data to write into the file.
   < �== � ! @ a b s t r u c t 
 W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t . 
 @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . 
: >?> i  @A@ I      ��B���� 0 write_as_utf8  B C��C o      ���� 
0 a_data  ��  ��  A k     %DD EFE r     GHG I    ��IJ
�� .rdwropenshor       fileI I     �������� 0 as_furl  ��  ��  J ��K��
�� 
permK m    ��
�� boovtrue��  H o      ���� 
0 output  F LML I   ��NO
�� .rdwrseofnull���     ****N o    ���� 
0 output  O ��P��
�� 
set2P m    ����  ��  M QRQ I   ��ST
�� .rdwrwritnull���     ****S o    ���� 
0 a_data  T ��UV
�� 
refnU o    ���� 
0 output  V ��W��
�� 
as  W m    ��
�� 
utf8��  R X��X I    %��Y��
�� .rdwrclosnull���     ****Y o     !���� 
0 output  ��  ��  ? Z[Z l     ��������  ��  ��  [ \]\ l      ��^_��  ^ " !@group Parent and Children    _ �`` 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  ] aba l     ��������  ��  ��  b cdc l      ��ef��  e � �!@abstruct
Obtain a folder containing the item referenced by the XFile instance.
@result script object : a XFile instance of the parent folder.
   f �gg  ! @ a b s t r u c t 
 O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . 
d hih i  jkj I      �������� 0 parent_folder  ��  ��  k L     ll I     ��m���� 0 make_with_pathinfo  m n��n n   opo n   qrq I    �������� 0 parent_folder  ��  ��  r o    ���� 0 	_pathinfo 	_pathInfop  f    ��  ��  i sts l     ��������  ��  ��  t uvu l      ��wx��  w!@abstruct
Obtain an item in the folder with specifying a sub path from the target.
@description
If this methods is sent to non exsisting folder, missing value is returend.
@param suppath(text) :a sub path to obtain.
@result script object or missing value : a XFile instance
   x �yy& ! @ a b s t r u c t 
 O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t . 
 @ d e s c r i p t i o n 
 I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d . 
 @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n . 
 @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e 
v z{z i   |}| I      ��~���� 	0 child  ~ �� o      ���� 0 subpath  ��  ��  } Z     ������ I     �������� 0 item_exists_without_update  ��  ��  � L    �� I    ������� 0 make_with_pathinfo  � ���� n  	 ��� n  
 ��� I    ������� 	0 child  � ���� o    ���� 0 subpath  ��  ��  � o   
 ���� 0 	_pathinfo 	_pathInfo�  f   	 
��  ��  ��  � L    �� m    ��
�� 
msng{ ��� l     ��������  ��  ��  � ��� i  !$��� I      ������� 0 child_posix  � ���� o      ���� 0 subpath  ��  ��  � Z     "������ I     �������� 0 item_exists  ��  ��  � k    �� ��� r    ��� I    �������� 0 
posix_path  ��  ��  � o      ���� 
0 a_path  � ��� r    ��� b    ��� o    ���� 
0 a_path  � o    ���� 0 subpath  � o      ���� 
0 a_path  � ���� L    �� I    ������� 0 	make_with  � ���� o    ���� 
0 a_path  ��  ��  ��  ��  � L     "�� m     !��
�� 
msng� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct
Obtain a XFile instance reference unique name item in the folder.
@description
If the instance's file reference is not a folder, missing value will be returned.
If this methods is sent to non existing item, error number 1350 will be raised.
@param a_candidate(text or list) :
A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.
@result script object : a XFile instance
   � ���T ! @ a b s t r u c t 
 O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r . 
 @ d e s c r i p t i o n 
 I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d . 
 I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d . 
 @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   : 
 A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 
� ��� i  %(��� I      ������� 0 unique_child  � ���� o      ���� 0 a_candidate  ��  ��  � k     w�� ��� l     ������  �   log "start unique_child"   � ��� 2   l o g   " s t a r t   u n i q u e _ c h i l d "� ��� Z     ������� H     �� I     ��~�}� 0 	is_folder  �~  �}  � k   	 �� ��� l  	 	�|���|  � ' ! log "not folder " & posix_path()   � ��� B   l o g   " n o t   f o l d e r   "   &   p o s i x _ p a t h ( )� ��{� L   	 �� m   	 
�z
�z 
msng�{  ��  ��  � ��� r    )��� n   ��� I    �y��x�y 0 
split_name  � ��w� o    �v�v 0 a_candidate  �w  �x  � o    �u�u 0 pathinfo PathInfo� J      �� ��� o      �t�t 0 
a_basename  � ��s� o      �r�r 0 a_suffix  �s  � ��� Z   * ;���q�� =  * -��� o   * +�p�p 0 a_suffix  � m   + ,�o
�o 
msng� r   0 3��� m   0 1�� ���  � o      �n�n 0 a_suffix  �q  � r   6 ;��� b   6 9��� m   6 7�� ���  .� o   7 8�m�m 0 a_suffix  � o      �l�l 0 a_suffix  � ��� r   < ?��� m   < =�k�k � o      �j�j 0 i  � ��� r   @ C��� m   @ A�� ���  � o      �i�i 0 escape_suffix  � ��� T   D t�� k   I o�� ��� r   I U��� I   I S�h��g�h 	0 child  � ��f� b   J O��� b   J M��� o   J K�e�e 0 
a_basename  � o   K L�d�d 0 escape_suffix  � o   M N�c�c 0 a_suffix  �f  �g  � o      �b�b 0 a_child  � ��a� Z   V o	 	�`		  n  V [			 I   W [�_�^�]�_ 0 item_exists  �^  �]  	 o   V W�\�\ 0 a_child  	 k   ^ k		 			 r   ^ e				 b   ^ c	
		
 1   ^ _�[
�[ 
spac	 l  _ b	�Z�Y	 c   _ b			 o   _ `�X�X 0 i  	 m   ` a�W
�W 
utxt�Z  �Y  		 o      �V�V 0 escape_suffix  	 	�U	 r   f k			 [   f i			 o   f g�T�T 0 i  	 m   g h�S�S 	 o      �R�R 0 i  �U  �`  	 k   n o		 			 l  n n�Q		�Q  	 !  log a_child's posix_path()   	 �		 6   l o g   a _ c h i l d ' s   p o s i x _ p a t h ( )	 	�P	  S   n o�P  �a  � 	�O	 L   u w		 o   u v�N�N 0 a_child  �O  � 			 l     �M�L�K�M  �L  �K  	 		 	 i  ),	!	"	! I      �J�I�H�J 0 list_children  �I  �H  	" L     
	#	# I    	�G	$�F
�G .earslfdrutxt  @    file	$ I     �E�D�C�E 0 as_furl  �D  �C  �F  	  	%	&	% l     �B�A�@�B  �A  �@  	& 	'	(	' l      �?	)	*�?  	)<6!@abstruct
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. 
Each XFile instance in the target folder is passed to the &quot;do&quot; handler.
The do handler must return true or false. When the do handler return false, the process is stoped immediately.
@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
   	* �	+	+l ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   
 E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r . 
 T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y . 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
	( 	,	-	, i  -0	.	/	. I      �>	0�=�> 0 each  	0 	1�<	1 o      �;�; 0 a_script  �<  �=  	/ k     @	2	2 	3	4	3 r     	5	6	5 I     �:�9�8�: 0 list_children  �9  �8  	6 o      �7�7 
0 a_list  	4 	7	8	7 h    �6	9�6 0 listwrapper ListWrapper	9 j     �5	:
�5 
pcnt	: o     �4�4 
0 a_list  	8 	;	<	; l   �3�2�1�3  �2  �1  	< 	=�0	= Y    @	>�/	?	@�.	> k    ;	A	A 	B	C	B r    +	D	E	D I    )�-	F�,�- 	0 child  	F 	G�+	G n    %	H	I	H 4   " %�*	J
�* 
cobj	J o   # $�)�) 0 n  	I n    "	K	L	K 1     "�(
�( 
pcnt	L o     �'�' 0 listwrapper ListWrapper�+  �,  	E o      �&�& 
0 x_item  	C 	M�%	M Z   , ;	N	O�$�#	N H   , 3	P	P n  , 2	Q	R	Q I   - 2�"	S�!�" 0 do  	S 	T� 	T o   - .�� 
0 x_item  �   �!  	R o   , -�� 0 a_script  	O  S   6 7�$  �#  �%  �/ 0 n  	? m    �� 	@ I   �	U�
� .corecnte****       ****	U o    �� 
0 a_list  �  �.  �0  	- 	V	W	V l     ����  �  �  	W 	X	Y	X l      �	Z	[�  	Z * $!@group Working with Shell Commands    	[ �	\	\ H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  	Y 	]	^	] l     ����  �  �  	^ 	_	`	_ l      �	a	b�  	a	!@abstruct
Run passed shell command taking the target as an argument.
@description
&quot;%s&quot; in the command will be replaced with the target's path.
@param a_command(text) : shell command including %s.
@result text : standard output of the shell command
   	b �	c	c ! @ a b s t r u c t 
 R u n   p a s s e d   s h e l l   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n 
 & q u o t ; % s & q u o t ;   i n   t h e   c o m m a n d   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t ' s   p a t h . 
 @ p a r a m   a _ c o m m a n d ( t e x t )   :   s h e l l   c o m m a n d   i n c l u d i n g   % s . 
 @ r e s u l t   t e x t   :   s t a n d a r d   o u t p u t   o f   t h e   s h e l l   c o m m a n d 
	` 	d	e	d i  14	f	g	f I      �	h�� 0 perform_shell  	h 	i�	i o      �� 0 	a_command  �  �  	g k     	j	j 	k	l	k r     	m	n	m n    		o	p	o 1    	�
� 
strq	p n    	q	r	q 1    �
� 
strq	r I     ��
�	� 0 normalized_posix_path  �
  �	  	n o      �� 
0 a_path  	l 	s�	s L    	t	t I   �	u�
� .sysoexecTEXT���     TEXT	u b    	v	w	v b    	x	y	x b    	z	{	z b    	|	}	| m    	~	~ �		  e v a l   $ ( p r i n t f  	} n   	�	�	� 1    �
� 
strq	� o    �� 0 	a_command  	{ 1    �
� 
spac	y o    �� 
0 a_path  	w m    	�	� �	�	�  )�  �  	e 	�	�	� l     � �����   ��  ��  	� 	�	�	� l      ��	�	���  	� � �!@abstruct
Run test command taking the target as an argument.
@param option(text) : 
An option to passed to the test command. See the man page of the test command.
@result boolean : true if test command successfully exits.
   	� �	�	�� ! @ a b s t r u c t 
 R u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ p a r a m   o p t i o n ( t e x t )   :   
 A n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . 
	� 	�	�	� i  58	�	�	� I      ��	����� 0 
shell_test  	� 	���	� o      ���� 
0 option  ��  ��  	� k     	�	� 	�	�	� Q     	�	�	�	� I   ��	���
�� .sysoexecTEXT���     TEXT	� b    	�	�	� b    	�	�	� b    	�	�	� m    	�	� �	�	� 
 t e s t  	� o    ���� 
0 option  	� 1    ��
�� 
spac	� I    �������� 0 quoted_path  ��  ��  ��  	� R      ������
�� .ascrerr ****      � ****��  ��  	� L    	�	� m    ��
�� boovfals	� 	���	� L    	�	� m    ��
�� boovtrue��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	�  == private *   	� �	�	�  = =   p r i v a t e   *	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  9<	�	�	� I      �������� 0 	deep_copy  ��  ��  	� L     	�	� I     ��	����� 0 make_with_pathinfo  	� 	���	� n   	�	�	� n   	�	�	� I    �������� 	0 clone  ��  ��  	� o    ���� 0 	_pathinfo 	_pathInfo	�  f    ��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  =@	�	�	� I      �������� 0 item_ref  ��  ��  	� L     	�	� n    	�	�	� n   	�	�	� I    �������� 0 item_ref  ��  ��  	� o    ���� 0 	_pathinfo 	_pathInfo	�  f     	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  AD	�	�	� I      �������� !0 check_existance_raising_error  ��  ��  	� k     !	�	� 	�	�	� l     ��	�	���  	� 4 . my_log("start check_existance_raising_error")   	� �	�	� \   m y _ l o g ( " s t a r t   c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r " )	� 	���	� Z     !	�	�����	� H     	�	� l    	�����	� n    	�	�	� n   	�	�	� I    �������� 0 item_exists_without_update  ��  ��  	� o    ���� 0 	_pathinfo 	_pathInfo	�  f     ��  ��  	� R    ��	�	�
�� .ascrerr ****      � ****	� b    	�	�	� b    	�	�	� m    	�	� �	�	� 
 i t e m  	� n    	�	�	� 1    ��
�� 
strq	� l   	�����	� n   	�	�	� n   	�	�	� I    �������� 0 as_text  ��  ��  	� o    ���� 0 	_pathinfo 	_pathInfo	�  f    ��  ��  	� m    	�	� �	�	�     d o e s   n o t   e x i s t .	� ��	���
�� 
errn	� m    ����F��  ��  ��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  EH	�	�	� I      �������� 0 update_pathinfo  ��  ��  	� k     $	�	� 	�	�	� r     	�	�	� n    	�	�	� I    ��	����� 0 make_with_opts  	� 	�	�	� n   	�	�	� n   	�	�	� I    �������� 0 item_ref  ��  ��  	� o    ���� 0 	_pathinfo 	_pathInfo	�  f    	� 	���	� K    	�	� ��	����� 0 prefering_posix  	� n   
 

  n   


 I    �������� 0 is_posix  ��  ��  
 o    ���� 0 	_pathinfo 	_pathInfo
  f    ��  ��  ��  	� o     ���� 0 pathinfo PathInfo	� n     


 o    ���� 0 	_pathinfo 	_pathInfo
  f    	� 
��
 L    $

 n   #

	
 o     "���� 0 	_pathinfo 	_pathInfo
	  f     ��  	� 




 l     ��������  ��  ��  
 


 i  IL


 I      ��
���� 0 change_pathinfo  
 
��
 o      ���� 0 
a_pathinfo  ��  ��  
 k     

 


 r     


 o     ���� 0 
a_pathinfo  
 n     


 o    ���� 0 	_pathinfo 	_pathInfo
  f    
 


 r    


 m    ��
�� 
msng
 n     


 o    
���� 0 _inforecord _infoRecord
  f    
 

 
 r    
!
"
! n   
#
$
# n   
%
&
% I    �������� 0 is_posix  ��  ��  
& o    ���� 0 	_pathinfo 	_pathInfo
$  f    
" n     
'
(
' o    ���� 0 _prefer_posix  
(  f    
  
)��
) L    
*
*  f    ��  
 
+
,
+ l     ��������  ��  ��  
, 
-
.
- i  MP
/
0
/ I      ��
1���� 0 
change_ref  
1 
2��
2 o      ���� 0 file_ref  ��  ��  
0 L     
3
3 I     ��
4���� 0 change_pathinfo  
4 
5��
5 n   
6
7
6 I    ��
8���� 0 	make_with  
8 
9��
9 o    ���� 0 file_ref  ��  ��  
7 o    �� 0 pathinfo PathInfo��  ��  
. 
:
;
: l     �~�}�|�~  �}  �|  
; 
<
=
< i  QT
>
?
> I      �{�z�y�{ 0 dump  �z  �y  
? L     
@
@ n    
A
B
A n   
C
D
C I    �x�w�v�x 0 as_text  �w  �v  
D o    �u�u 0 	_pathinfo 	_pathInfo
B  f     
= 
E
F
E l     �t�s�r�t  �s  �r  
F 
G
H
G l      �q
I
J�q  
I C = -- too much side effect
on log
	continue log dump()
end log
   
J �
K
K z   - -   t o o   m u c h   s i d e   e f f e c t 
 o n   l o g 
 	 c o n t i n u e   l o g   d u m p ( ) 
 e n d   l o g 

H 
L
M
L l     �p�o�n�p  �o  �n  
M 
N
O
N i  UX
P
Q
P I      �m�l�k�m 	0 debug  �l  �k  
Q k     /
R
R 
S
T
S n    	
U
V
U I    	�j
W�i�j 	0 setup  
W 
X�h
X  f    �h  �i  
V 4     �g
Y
�g 
scpt
Y m    
Z
Z �
[
[  M o d u l e L o a d e r
T 
\
]
\ r   
 
^
_
^ c   
 
`
a
` m   
 
b
b �
c
c F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d f
a m    �f
�f 
psxf
_ o      �e�e 
0 a_path  
] 
d
e
d r    
f
g
f I    �d
h�c�d 0 	make_with  
h 
i�b
i o    �a�a 
0 a_path  �b  �c  
g o      �`�` 0 a_xfile  
e 
j
k
j l   �_
l
m�_  
l K Ereturn a_result's change_path_extension(missing value)'s posix_path()   
m �
n
n � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )
k 
o
p
o r    %
q
r
q n   #
s
t
s I    #�^
u�]�^ 0 unique_child  
u 
v�\
v m    
w
w �
x
x : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f�\  �]  
t n   
y
z
y I    �[�Z�Y�[ 0 parent_folder  �Z  �Y  
z o    �X�X 0 a_xfile  
r o      �W�W 0 new_named_file  
p 
{�V
{ I  & /�U
|�T
�U .ascrcmnt****      � ****
| n  & +
}
~
} I   ' +�S�R�Q�S 0 	item_name  �R  �Q  
~ o   & '�P�P 0 new_named_file  �T  �V  
O 

�
 l     �O�N�M�O  �N  �M  
� 
�
�
� i  Y\
�
�
� I      �L�K�J�L 0 open_helpbook  �K  �J  
� Q     ,
�
�
�
� O   
�
�
� I   
 �I
��H�I 0 do  
� 
��G
� I   �F
��E
�F .earsffdralis        afdr
�  f    �E  �G  �H  
� 4    �D
�
�D 
scpt
� m    
�
� �
�
�  O p e n H e l p B o o k
� R      �C
�
�
�C .ascrerr ****      � ****
� o      �B�B 0 msg  
� �A
��@
�A 
errn
� o      �?�? 	0 errno  �@  
� k    ,
�
� 
�
�
� I   "�>�=�<
�> .miscactvnull��� ��� null�=  �<  
� 
��;
� I  # ,�:
��9
�: .sysodisAaleR        TEXT
� l  # (
��8�7
� b   # (
�
�
� b   # &
�
�
� o   # $�6�6 0 msg  
� o   $ %�5
�5 
ret 
� o   & '�4�4 	0 errno  �8  �7  �9  �;  
� 
�
�
� l     �3�2�1�3  �2  �1  
� 
�
�
� i  ]`
�
�
� I     �0�/�.
�0 .aevtoappnull  �   � ****�/  �.  
� k     
�
� 
�
�
� l     �-
�
��-  
�  return debug()   
� �
�
�  r e t u r n   d e b u g ( )
� 
��,
� I     �+�*�)�+ 0 open_helpbook  �*  �)  �,  
� 
��(
� l     �'�&�%�'  �&  �%  �(       K�$
�
�
�
�
�
� :�#
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
��$  
� I�"�!� ����������������������
�	��������� ����������������������������������������������������������������������������
�" 
pimr�! 0 pathinfo PathInfo�  0 nsworkspace NSWorkspace� 0 nsfilemanager NSFileManager� 0 nsurl NSURL
� 
pnam� 0 _prefer_posix  � 0 prefer_posix  � 0 	make_with  � 0 make_with_pathinfo  � 0 change_name  � 0 change_folder  � 0 change_path_extension  � 0 as_alias  � 0 as_furl  � 0 hfs_path  � 0 
posix_path  � 0 normalized_posix_path  � 0 quoted_path  � 0 type_identifier  � 0 	is_folder  � 0 
is_package  � 0 is_alias  � 0 
is_symlink  �
 0 
is_visible  �	 0 	set_types  � 0 info  � 0 info_with_size  � 0 re_info  � 0 	item_name  � 0 basename  � 0 path_extension  � 0 volume_name  � 0 bundle_resource  �  $0 bundle_infoplist bundle_InfoPlist�� 0 bundle_resources_folder  �� 0 item_exists  �� 0 item_exists_without_update  
�� .coredoexbool       obj �� 0 	rename_to  �� 0 copy_to  �� 0 copy_with_replacing  �� 0 
replace_to  �� 0 copy_with_opts  �� 0 finder_copy_to  �� 
0 my_log  �� 0 move_to  �� 0 move_with_replacing  �� 0 resolve_alias  �� 0 
into_trash  �� 
0 remove  �� 0 make_folder  �� 0 	make_path  �� 0 read_as_utf8  �� 0 write_as_utf8  �� 0 parent_folder  �� 	0 child  �� 0 child_posix  �� 0 unique_child  �� 0 list_children  �� 0 each  �� 0 perform_shell  �� 0 
shell_test  �� 0 	deep_copy  �� 0 item_ref  �� !0 check_existance_raising_error  �� 0 update_pathinfo  �� 0 change_pathinfo  �� 0 
change_ref  �� 0 dump  �� 	0 debug  �� 0 open_helpbook  
�� .aevtoappnull  �   � ****
� ��
��� 
�  
�
�
�
�
� ��
�
�
�� 
cobj
� 
�
�   �� 
�� 
scpt
� �� ��
�� 
vers��  
� ��
���
�� 
cobj
� 
�
�   ��
�� 
osax��  
� ��
���
�� 
cobj
� 
�
�   �� 
�� 
frmk��  
� ��
���
�� 
cobj
�      �� !
�� 
frmk��  
�    �� 
�� 
scpt
�  ����
�� misccura
�� 
pcls �  N S W o r k s p a c e
�  ����
�� misccura
�� 
pcls �  N S F i l e M a n a g e r
�  ����	
�� misccura
�� 
pcls	 �

 
 N S U R L
�# boovtrue
� �� M�������� 0 prefer_posix  �� ����   ���� 0 bool  ��   ���� 0 bool   ���� 0 _prefer_posix  �� �)�,F
� �� e�������� 0 	make_with  �� ����   ���� 0 file_ref  ��   �������� 0 file_ref  �� 
0 is_hfs  �� 0 	path_info   	�������� ���������
�� 
ctxt
�� 
utxt
�� 
TEXT
�� 
pcls�� 0 make_with_hfs  �� 0 _prefer_posix  �� 0 make_with_posix  �� 0 make_with_pathinfo  �� YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ 
� �� ��������� 0 make_with_pathinfo  �� ����   ���� 0 	path_info  ��   �������� 0 	path_info  �� 0 a_parent  �� 0 xfile XFile �� ��� 0 xfile XFile ��������
�� .ascrinit****      � **** k       �  �  �  �����  ��  ��   ��������
�� 
pare�� 0 	_pathinfo 	_pathInfo�� 0 _inforecord _infoRecord�� 0 _prefer_posix   ������������
�� 
pare�� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� b  N  Ob   �O�Ob   j+ ��� )E�O��K S�O�
� �� ��������� 0 change_name  �� ����   ���� 
0 a_name  ��   ������ 
0 a_name  �� 0 	path_info   �������� 0 	_pathinfo 	_pathInfo�� 0 change_name  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ 
� �� ����� ���� 0 change_folder  �� ��!�� !  ���� 0 
folder_ref  ��   ������ 0 
folder_ref  �� 0 	path_info    ��~�}� 0 	_pathinfo 	_pathInfo�~ 0 change_folder  �} 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ 
� �|�{�z"#�y�| 0 change_path_extension  �{ �x$�x $  �w�w 0 a_suffix  �z  " �v�v 0 a_suffix  # �u�t�s�u 0 	_pathinfo 	_pathInfo�t 0 change_path_extension  �s 0 make_with_pathinfo  �y *)�,�k+ k+ 
� �r3�q�p%&�o�r 0 as_alias  �q  �p  %  & �n�m�l�n !0 check_existance_raising_error  �m 0 	_pathinfo 	_pathInfo�l 0 as_alias  �o *j+  O)�,j+ 
� �kG�j�i'(�h�k 0 as_furl  �j  �i  '  ( �g�f�g 0 	_pathinfo 	_pathInfo�f 0 as_furl  �h 	)�,j+ 
� �eW�d�c)*�b�e 0 hfs_path  �d  �c  )  * �a�`�a 0 	_pathinfo 	_pathInfo�` 0 hfs_path  �b 	)�,j+ 
� �_g�^�]+,�\�_ 0 
posix_path  �^  �]  +  , �[�Z�[ 0 	_pathinfo 	_pathInfo�Z 0 
posix_path  �\ 	)�,j+ 
� �Yw�X�W-.�V�Y 0 normalized_posix_path  �X  �W  -  . �U�T�U 0 	_pathinfo 	_pathInfo�T 0 normalized_posix_path  �V 	)�,j+ 
� �S��R�Q/0�P�S 0 quoted_path  �R  �Q  /  0 �O�N�M�O 0 	_pathinfo 	_pathInfo�N 0 
posix_path  
�M 
strq�P )�,j+ �,E
� �L��K�J12�I�L 0 type_identifier  �K  �J  1  2 �H�G�F�E�D�H "0 sharedworkspace sharedWorkspace�G 0 
posix_path  
�F 
msng�E &0 typeoffile_error_ typeOfFile_error_
�D 
ctxt�I b  j+   *)j+ �l+ �&U
� �C��B�A34�@�C 0 	is_folder  �B  �A  3 �?�>�? 
0 my_uti  �> 0 a_result  4 �=�<����;�= 0 type_identifier  �< "0 sharedworkspace sharedWorkspace�; ,0 type_conformstotype_ type_conformsToType_�@ 3*j+  E�Ob  j+  ��lv� eE�Y *��l+ E�UO�OP
� �:��9�856�7�: 0 
is_package  �9  �8  5  6 �6�5�4�6 "0 sharedworkspace sharedWorkspace�5 0 
posix_path  �4 ,0 isfilepackageatpath_ isFilePackageAtPath_�7 b  j+   *)j+ k+ OPU
� �3�2�178�0�3 0 is_alias  �2  �1  7  8 �/�/ 0 type_identifier  �0 	�*j+  
� �.�-�,9:�+�. 0 
is_symlink  �-  �,  9  : "�*�* 0 type_identifier  �+ 	�*j+  
� �).�(�';<�&�) 0 
is_visible  �(  �'  ; �%�% 0 info_rec  < �$�#�$ 0 info  
�# 
pvis�& *j+  E�O��,E
� �"B�!� =>��" 0 	set_types  �! �?� ?  ��� 0 creator_code  � 0 	type_code  �   = ���� 0 creator_code  � 0 	type_code  � 
0 a_file  > ��f����� 0 	is_folder  � 0 as_alias  
� 
fcrt
� 
asty
� 
msng� 0 _inforecord _infoRecord� ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h
� �v��@A�� 0 info  �  �  @  A �����
�	� 0 _inforecord _infoRecord
� 
msng� !0 check_existance_raising_error  � 0 as_furl  
�
 
ptsz
�	 .sysonfo4asfe        file� ()�,�  *j+ O*j+ �fl )�,FY hO)�,E
� ����BC�� 0 info_with_size  �  �  B  C ����� ��� 0 _inforecord _infoRecord
� 
msng� !0 check_existance_raising_error  � 0 as_furl  
�  
ptsz
�� .sysonfo4asfe        file� D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,E
� �������DE���� 0 re_info  ��  ��  D  E �������������� 0 _inforecord _infoRecord
�� 
msng
�� 
ptsz
�� 
bool�� 0 as_furl  
�� .sysonfo4asfe        file�� <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,E
� ������FG���� 0 	item_name  ��  ��  F  G ������ 0 	_pathinfo 	_pathInfo�� 0 	item_name  �� 	)�,j+ 
� ������HI���� 0 basename  ��  ��  H  I ������ 0 	_pathinfo 	_pathInfo�� 0 basename  �� 	)�,j+ 
� ��&����JK���� 0 path_extension  ��  ��  J  K ������ 0 	_pathinfo 	_pathInfo�� 0 path_extension  �� 	)�,j+ 
� ��6����LM���� 0 volume_name  ��  ��  L  M ������ 0 	_pathinfo 	_pathInfo�� 0 volume_name  �� 	)�,j+ 
� ��M����NO���� 0 bundle_resource  �� ��P�� P  ���� 0 resource_name  ��  N ���� 0 resource_name  O ��������
�� 
in B�� 0 as_alias  
�� .sysorpthalis        TEXT�� 0 	make_with  �� *��*j+ l k+ 
� ��a����QR���� $0 bundle_infoplist bundle_InfoPlist��  ��  Q  R e���� 0 child_posix  �� *�k+ 
� ��l����ST���� 0 bundle_resources_folder  ��  ��  S  T p���� 0 child_posix  �� *�k+ 
� �������UV���� 0 item_exists  ��  ��  U  V ������ 0 	_pathinfo 	_pathInfo�� 0 item_exists  �� 	)�,j+ 
� �������WX���� 0 item_exists_without_update  ��  ��  W  X ������ 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  �� 	)�,j+ 
� �������YZ��
�� .coredoexbool       obj ��  ��  Y  Z ���� 0 item_exists  �� *j+  
� �������[\���� 0 	rename_to  �� ��]�� ]  ���� 0 new_name  ��  [ �������� 0 new_name  �� 0 dest  �� 0 a_result  \ ���������������� 0 	_pathinfo 	_pathInfo�� 0 change_name  ��  0 defaultmanager defaultManager�� 0 
posix_path  
�� 
msng�� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_�� 0 _inforecord _infoRecord�� D)�,�k+ E�Ob  j+  *)�,j+ �j+ �m+ E�UO� �)�,FO�)�,FY hO�
� �������^_���� 0 copy_to  �� ��`�� `  ���� 0 a_destination  ��  ^ ������ 0 a_destination  �� 0 a_result  _ ����������������������
�� 
pcls
�� 
scpt�� 0 	make_with  �� 0 item_exists  �� 0 	is_folder  �� 0 	item_name  �� 	0 child  ��  0 defaultmanager defaultManager�� 0 
posix_path  
�� 
msng�� <0 copyitematpath_topath_error_ copyItemAtPath_toPath_error_�� j��,� *�k+ E�Y hO�j+  �j+  �*j+ k+ E�Y fY hOb  j+  *)j+ �j+ �m+ 
E�UO� �Y hO�
� ��>����ab���� 0 copy_with_replacing  �� ��c�� c  ���� 0 a_destination  ��  a ������������ 0 a_destination  �� 0 escaped_item  �� 	0 uname  �� 
0 uchild  �� 0 a_result  b ��������������������~��}�|�{
�� 
pcls
�� 
scpt�� 0 	make_with  
�� 
msng�� 0 item_exists_without_update  �� 0 	is_folder  �� 0 	item_name  �� 0 	deep_copy  �� 0 parent_folder  � 0 unique_child  �~ 0 move_to  
�} .ascrcmnt****      � ****�| 0 copy_to  �{ 
0 remove  �� ���,� *�k+ E�Y hO�E�O�j+  N�j+  A*j+ E�O�j+  -*E�O*j+ *j+ k+ 	E�O*�k+ 
 �j O�Y hUY hY hO*�k+ E�O��  �� ��k+ 
Y hY �� 
�j+ Y hO�
� �z��y�xde�w�z 0 
replace_to  �y �vf�v f  �u�u 0 a_destination  �x  d �t�s�t 0 a_destination  �s 0 a_result  e �r�q�p�o�n�m�l�k�j�i�h�g�f�e�d
�r 
pcls
�q 
scpt�p 0 	make_with  �o 0 item_exists  �n 0 	is_folder  �m 0 	item_name  �l 	0 child  �k  0 defaultmanager defaultManager�j 0 	_pathinfo 	_pathInfo�i 0 as_nsurl as_NSURL
�h 
msng�g �f �0 Mreplaceitematurl_withitematurl_backupitemname_options_resultingitemurl_error_ MreplaceItemAtURL_withItemAtURL_backupItemName_options_resultingItemURL_error_�e 0 item_ref  �d 0 
change_ref  �w z��,� *�k+ E�Y hO�j+  �j+  �*j+ k+ E�Y fY hOb  j+  *��,j+ 	)�,j+ 	�j���+ E�OPUO� *�j+ k+ Y hO�
� �c �b�agh�`�c 0 copy_with_opts  �b �_i�_ i  �^�]�^ 0 a_destination  �] 0 opts  �a  g �\�[�Z�Y�X�W�V�U�T�S�R�\ 0 a_destination  �[ 0 opts  �Z 0 w_replacing  �Y 0 w_admin  �X 0 
w_removing  �W 0 command  �V 0 com_opts  �U 0 is_folder_to  �T 0 destination_path  �S 0 source_path  �R 0 	a_command  h M�Q�P�O�N�M�L�K�J|�I�H�G�F�E������D�C��B�A�@�?�>�=�<
�Q 
pcls
�P 
reco�O 0 with_replacing  �N  �M  �L 0 
with_admin  �K 0 with_removing  �J 	0 ditto  
�I 
ctxt
�H 
utxt
�G 
TEXT�F 0 parent_folder  �E 	0 child  �D 0 item_exists  �C 
0 remove  �B 0 	is_folder  �A 0 normalized_posix_path  
�@ 
strq
�? 
spac
�> 
badm
�= .sysoexecTEXT���     TEXT�< 0 	item_name  �`9eE�OfE�OfE�O�E�O��,�  U 
��,E�W X  hO 
��,E�W X  hO 
��,E�W X  hO ��,E �E�Y hW X  hY hO���mv��, *j+ �k+ E�Y hO��  a E�O� �a %E�Y hY �a   
a E�Y hOfE�O�j+  $� 
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�
� �;	�:�9jk�8�; 0 finder_copy_to  �: �7l�7 l  �6�5�6 0 a_destination  �5 0 with_replacing  �9  j �4�3�2�1�0�4 0 a_destination  �3 0 with_replacing  �2 0 destination  �1 0 source_alias  �0 0 new_item  k �/'�.�-�,�+�*�)�/ 0 as_alias  
�. 
insh
�- 
alrp�, 
�+ .coreclon****      � ****
�* 
alis�) 0 	make_with  �8 +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ 
� �(1�'�&mn�%�( 
0 my_log  �' �$o�$ o  �#�# 
0 a_text  �&  m �"�" 
0 a_text  n �!� 
�! 
ascr
�  .ascrcmnt****      � ****�% � �j U
� �E��pq�� 0 move_to  � �r� r  �� 0 a_destination  �  p ��� 0 a_destination  � 0 a_result  q ��������������
� 0 item_exists  
� 
pcls
� 
scpt� 0 	make_with  � 0 	is_folder  � 0 	item_name  � 	0 child  �  0 defaultmanager defaultManager� 0 	_pathinfo 	_pathInfo� 0 
posix_path  
� 
msng� <0 moveitematpath_topath_error_ moveItemAtPath_toPath_error_� 0 item_ref  �
 0 
change_ref  � y*j+  O��,� *�k+ E�Y hO�j+   �j+  �*j+ k+ E�Y fY hOb  j+  *)�,j+ 	�j+ 	�m+ E�UO� *�j+ k+ Y hO�
� �	���st��	 0 move_with_replacing  � �u� u  �� 0 a_destination  �  s ���� ��� 0 a_destination  � 0 escaped_item  � 
0 uchild  �  0 a_result  �� 0 s_destination  t ���������������������
�� 
msng�� 0 item_exists_without_update  �� 0 	is_folder  �� 0 	deep_copy  �� 0 parent_folder  �� 0 	item_name  �� 0 unique_child  �� 0 move_to  
�� .ascrcmnt****      � ****�� 
0 remove  � ��E�O�j+  F�j+  9�j+  -*E�O*j+ �j+ k+ E�O*�k+  �j 	OfY hUY hY hO*�k+ E�O� �� 
�j+ 
Y hY �� ��k+ Y hO�
� ��	����vw���� 0 resolve_alias  ��  ��  v ������ 0 
x_original  �� 0 original_url  w ������������������������ 0 
is_symlink  �� 0 	deep_copy  �� 0 item_exists  
�� 
msng�� 0 is_alias  �� 0 	_pathinfo 	_pathInfo�� 0 as_nsurl as_NSURL�� Z0 +urlbyresolvingaliasfileaturl_options_error_ +URLByResolvingAliasFileAtURL_options_error_�� 0 path  
�� 
ctxt�� 0 	make_with  �� d*j+   *j+ E�O�j+  �Y �Y hO*j+  )Y hOb  )�,j+ j�m+ E�O��  �Y hO*�j+ �&k+ 

� ��Q����xy���� 0 
into_trash  ��  ��  x ���� 0 a_result  y 	��������������������  0 defaultmanager defaultManager�� 0 	_pathinfo 	_pathInfo�� 0 as_nsurl as_NSURL
�� 
msng�� P0 &trashitematurl_resultingitemurl_error_ &trashItemAtURL_resultingItemURL_error_
�� afdmtrsh
�� .earsffdralis        afdr�� 0 change_folder  �� 0 change_pathinfo  �� 8b  j+   *)�,j+ ��m+ E�UO� *)�,�j k+ k+ Y h
� �������z{���� 
0 remove  ��  ��  z ������ 
0 a_path  �� 0 a_result  { ������������������ 0 	_pathinfo 	_pathInfo�� 0 as_text  ��  0 defaultmanager defaultManager�� 0 
posix_path  
�� 
msng�� 20 removeitematpath_error_ removeItemAtPath_error_�� 0 	_item_ref  �� 0 _inforecord _infoRecord�� >)�,j+ E�Ob  j+  *)j+ �l+ E�UO� �)�,�,FO�)�,FY hO�
� �������|}���� 0 make_folder  �� ��~�� ~  ���� 0 folder_name  ��  | ������ 0 folder_name  �� 0 
new_folder  } ���������� 0 item_exists  
�� 
msng�� 	0 child  �� 0 	make_path  �� "*j+   �Y hO*�k+ E�O�jvk+ 
� ������������ 0 	make_path  �� ����� �  ���� 0 opts  ��   ������ 0 opts  �� 0 w_admin  � ��������������������
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
O*j+  )Y hO�
� ��-���������� 0 read_as_utf8  ��  ��  �  � ������������ !0 check_existance_raising_error  �� 0 as_alias  
�� 
as  
�� 
utf8
�� .rdwrread****        ****�� *j+  O*j+ ��l 
� ��A���������� 0 write_as_utf8  �� ����� �  ���� 
0 a_data  ��  � ������ 
0 a_data  �� 
0 output  � ������������������������ 0 as_furl  
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

� ��k���������� 0 parent_folder  ��  ��  �  � �������� 0 	_pathinfo 	_pathInfo�� 0 parent_folder  �� 0 make_with_pathinfo  �� *)�,j+ k+ 
� ��}���������� 	0 child  �� ����� �  ���� 0 subpath  ��  � ���� 0 subpath  � ��~�}�|�{� 0 item_exists_without_update  �~ 0 	_pathinfo 	_pathInfo�} 	0 child  �| 0 make_with_pathinfo  
�{ 
msng�� *j+   *)�,�k+ k+ Y �
� �z��y�x���w�z 0 child_posix  �y �v��v �  �u�u 0 subpath  �x  � �t�s�t 0 subpath  �s 
0 a_path  � �r�q�p�o�r 0 item_exists  �q 0 
posix_path  �p 0 	make_with  
�o 
msng�w #*j+   *j+ E�O��%E�O*�k+ Y �
� �n��m�l���k�n 0 unique_child  �m �j��j �  �i�i 0 a_candidate  �l  � �h�g�f�e�d�c�h 0 a_candidate  �g 0 
a_basename  �f 0 a_suffix  �e 0 i  �d 0 escape_suffix  �c 0 a_child  � �b�a�`�_����^�]�\�[�b 0 	is_folder  
�a 
msng�` 0 
split_name  
�_ 
cobj�^ 	0 child  �] 0 item_exists  
�\ 
spac
�[ 
utxt�k x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�
� �Z	"�Y�X���W�Z 0 list_children  �Y  �X  �  � �V�U�V 0 as_furl  
�U .earslfdrutxt  @    file�W *j+  j 
� �T	/�S�R���Q�T 0 each  �S �P��P �  �O�O 0 a_script  �R  � �N�M�L�K�J�N 0 a_script  �M 
0 a_list  �L 0 listwrapper ListWrapper�K 0 n  �J 
0 x_item  � 	�I�H	9��G�F�E�D�C�I 0 list_children  �H 0 listwrapper ListWrapper� �B��A�@���?
�B .ascrinit****      � ****� k     �� 	9�>�>  �A  �@  � �=
�= 
pcnt� �<
�< 
pcnt�? b  �
�G .corecnte****       ****
�F 
pcnt
�E 
cobj�D 	0 child  �C 0 do  �Q A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��
� �;	g�:�9���8�; 0 perform_shell  �: �7��7 �  �6�6 0 	a_command  �9  � �5�4�5 0 	a_command  �4 
0 a_path  � �3�2	~�1	��0�3 0 normalized_posix_path  
�2 
strq
�1 
spac
�0 .sysoexecTEXT���     TEXT�8 *j+  �,�,E�O��,%�%�%�%j 
� �/	��.�-���,�/ 0 
shell_test  �. �+��+ �  �*�* 
0 option  �-  � �)�) 
0 option  � 	��(�'�&�%�$
�( 
spac�' 0 quoted_path  
�& .sysoexecTEXT���     TEXT�%  �$  �,   �%�%*j+ %j W 	X  fOe
� �#	��"�!��� �# 0 	deep_copy  �"  �!  �  � ���� 0 	_pathinfo 	_pathInfo� 	0 clone  � 0 make_with_pathinfo  �  *)�,j+ k+ 
� �	������� 0 item_ref  �  �  �  � ��� 0 	_pathinfo 	_pathInfo� 0 item_ref  � 	)�,j+ 
� �	������� !0 check_existance_raising_error  �  �  �  � ����	���	�� 0 	_pathinfo 	_pathInfo� 0 item_exists_without_update  
� 
errn�F� 0 as_text  
� 
strq� ")�,j+  )��l�)�,j+ �,%�%Y h
� �	���
���	� 0 update_pathinfo  �  �
  �  � ������ 0 	_pathinfo 	_pathInfo� 0 item_ref  � 0 prefering_posix  � 0 is_posix  � 0 make_with_opts  �	 %b  )�,j+ �)�,j+ ll+ )�,FO)�,E
� �
����� � 0 change_pathinfo  � ����� �  ���� 0 
a_pathinfo  �  � ���� 0 
a_pathinfo  � ������������ 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �  �)�,FO�)�,FO)�,j+ )�,FO)
� ��
0���������� 0 
change_ref  �� ����� �  ���� 0 file_ref  ��  � ���� 0 file_ref  � ������ 0 	make_with  �� 0 change_pathinfo  �� *b  �k+  k+ 
� ��
?���������� 0 dump  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 as_text  �� 	)�,j+ 
� ��
Q���������� 	0 debug  ��  ��  � �������� 
0 a_path  �� 0 a_xfile  �� 0 new_named_file  � ��
Z��
b������
w������
�� 
scpt�� 	0 setup  
�� 
psxf�� 0 	make_with  �� 0 parent_folder  �� 0 unique_child  �� 0 	item_name  
�� .ascrcmnt****      � ****�� 0)��/)k+ O��&E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 

� ��
����������� 0 open_helpbook  ��  ��  � ������ 0 msg  �� 	0 errno  � 	��
��������������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  � ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j 
� ��
���������
�� .aevtoappnull  �   � ****��  ��  �  � ���� 0 open_helpbook  �� *j+  ascr  ��ޭ