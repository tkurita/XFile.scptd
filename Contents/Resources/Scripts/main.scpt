FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007, 2008, 2009, 2010, 2011, 2012 Tetsuro KURITA

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	4   C o p y r i g h t   ( C )   2 0 0 7 ,   2 0 0 8 ,   2 0 0 9 ,   2 0 1 0 ,   2 0 1 1 ,   2 0 1 2   T e t s u r o   K U R I T A  
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
 l     ��������  ��  ��        j     �� 
�� 
pnam  m        �   
 X F i l e      j    �� 
�� 
vers  m       �    1 . 6 b      l     ��������  ��  ��        j    �� �� 0 pathinfo PathInfo  I   ������
�� .MoloMkMsMoSp    ��� TEXT��  ��        l     ��������  ��  ��        l      ��   ��    � �!@title XFile Reference
* Version : 1.6* Author : Tetsuro KURITA ((<tkurita@mac.com>))@referencesPathInfo || help:openbook='PathInfo Help'      � ! !  ! @ t i t l e   X F i l e   R e f e r e n c e 
  *   V e r s i o n   :   1 . 6  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) )   @ r e f e r e n c e s  P a t h I n f o   | |   h e l p : o p e n b o o k = ' P a t h I n f o   H e l p '    " # " l     ��������  ��  ��   #  $ % $ j    �� &�� 0 _prefer_posix   & m    ��
�� boovtrue %  ' ( ' l     ��������  ��  ��   (  ) * ) i     + , + I      �� -���� 0 prefer_posix   -  .�� . o      ���� 0 bool  ��  ��   , r      / 0 / o     ���� 0 bool   0 n      1 2 1 o    ���� 0 _prefer_posix   2  f     *  3 4 3 l     ��������  ��  ��   4  5 6 5 l      �� 7 8��   7 c ]!@group ConstractorsMaking a new instance with a reference to a file from the class object.    8 � 9 9 � ! @ g r o u p   C o n s t r a c t o r s  M a k i n g   a   n e w   i n s t a n c e   w i t h   a   r e f e r e n c e   t o   a   f i l e   f r o m   t h e   c l a s s   o b j e c t .  6  : ; : l     ��������  ��  ��   ;  < = < l      �� > ?��   >!@abstruct Make a XFile instance with a file reference@descriptionHFS/POSIX path, alias and file URL can be accepted as file specification.@param file_ref (alias or Unicode text) : a HFS/POSIX path, alias or File URL@result script object : a new instance of XFile    ? � @ @ ! @ a b s t r u c t    M a k e   a   X F i l e   i n s t a n c e   w i t h   a   f i l e   r e f e r e n c e  @ d e s c r i p t i o n  H F S / P O S I X   p a t h ,   a l i a s   a n d   f i l e   U R L   c a n   b e   a c c e p t e d   a s   f i l e   s p e c i f i c a t i o n .  @ p a r a m   f i l e _ r e f   ( a l i a s   o r   U n i c o d e   t e x t )   :   a   H F S / P O S I X   p a t h ,   a l i a s   o r   F i l e   U R L  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  =  A B A i     C D C I      �� E���� 0 	make_with   E  F�� F o      ���� 0 file_ref  ��  ��   D k     X G G  H I H r      J K J m     ��
�� boovfals K o      ���� 
0 is_hfs   I  L M L Z     N O���� N E    P Q P J    	 R R  S T S m    ��
�� 
ctxt T  U V U m    ��
�� 
utxt V  W�� W m    ��
�� 
TEXT��   Q n   	  X Y X m   
 ��
�� 
pcls Y o   	 
���� 0 file_ref   O r     Z [ Z l    \���� \ H     ] ] C     ^ _ ^ o    ���� 0 file_ref   _ m     ` ` � a a  /��  ��   [ o      ���� 
0 is_hfs  ��  ��   M  b c b Z    P d e f g d o    ���� 
0 is_hfs   e r    + h i h n   ) j k j I   $ )�� l���� 0 make_with_hfs   l  m�� m o   $ %���� 0 file_ref  ��  ��   k o    $���� 0 pathinfo PathInfo i o      ���� 0 	path_info   f  n o n n  . 2 p q p o   / 1���� 0 _prefer_posix   q  f   . / o  r�� r r   5 A s t s n  5 ? u v u I   : ?�� w���� 0 make_with_posix   w  x�� x o   : ;���� 0 file_ref  ��  ��   v o   5 :���� 0 pathinfo PathInfo t o      ���� 0 	path_info  ��   g r   D P y z y n  D N { | { I   I N�� }���� 0 make_with_hfs   }  ~�� ~ o   I J���� 0 file_ref  ��  ��   | o   D I���� 0 pathinfo PathInfo z o      ���� 0 	path_info   c   �  l  Q Q��������  ��  ��   �  ��� � L   Q X � � I   Q W�� ����� 0 make_with_pathinfo   �  ��� � o   R S���� 0 	path_info  ��  ��  ��   B  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstructMake a new instance with a ((<PathInfo>)) instance.@param path_info (script) : a ((<PathInfo>)) instance.@result script object : a new instance of XFile     � � � �N ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   a   ( ( < P a t h I n f o > ) )   i n s t a n c e .  @ p a r a m   p a t h _ i n f o   ( s c r i p t )   :   a   ( ( < P a t h I n f o > ) )   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e    �  � � � i     � � � I      �� ����� 0 make_with_pathinfo   �  ��� � o      ���� 0 	path_info  ��  ��   � k      � �  � � � r      � � �  f      � o      ���� 0 a_parent   �  � � � h    �� ��� 0 xfile XFile � k       � �  � � � j     �� �
�� 
pare � o     ���� 0 a_parent   �  � � � j   	 �� ��� 0 	_pathinfo 	_pathInfo � o   	 ���� 0 	path_info   �  � � � j    �� ��� 0 _inforecord _infoRecord � m    ��
�� 
msng �  � � � j    �� ��� 0 _prefer_posix   � n    � � � I    �������� 0 is_posix  ��  ��   � o    ���� 0 	path_info   �  ��� � j     �� ��� 0 _is_symlink   � m    ��
�� 
msng��   �  ��� � L     � � o    ���� 0 xfile XFile��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@group Make a New Instance with Changing Contents of an Instance

Making a new XFile instance with changing a part of the exisiting instance.    � � � �  ! @ g r o u p   M a k e   a   N e w   I n s t a n c e   w i t h   C h a n g i n g   C o n t e n t s   o f   a n   I n s t a n c e  
 
 M a k i n g   a   n e w   X F i l e   i n s t a n c e   w i t h   c h a n g i n g   a   p a r t   o f   t h e   e x i s i t i n g   i n s t a n c e .  �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstructMake a new instance with changing file name of the instance@param a_name (Unicode text or string) : a file name@result script object : a new instance of XFile    � � � �X ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f i l e   n a m e   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :   a   f i l e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i     � � � I      �� ����� 0 change_name   �  ��� � o      ���� 
0 a_name  ��  ��   � k      � �  � � � r     
 � � � n     � � � n    � � � I    � ��~� 0 change_name   �  ��} � o    �|�| 
0 a_name  �}  �~   � o    �{�{ 0 	_pathinfo 	_pathInfo �  f      � o      �z�z 0 	path_info   �  ��y � L     � � I    �x ��w�x 0 make_with_pathinfo   �  ��v � o    �u�u 0 	path_info  �v  �w  �y   �  � � � l     �t�s�r�t  �s  �r   �  � � � l      �q � ��q   � � �!@abstructMake a new instance with changing folder of the instance@param a_name (alias, Unicode text, file URL, file specification) : a reference to folder@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f o l d e r   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( a l i a s ,   U n i c o d e   t e x t ,   f i l e   U R L ,   f i l e   s p e c i f i c a t i o n )   :   a   r e f e r e n c e   t o   f o l d e r  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i     # � � � I      �p ��o�p 0 change_folder   �  ��n � o      �m�m 0 
folder_ref  �n  �o   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �l ��k�l 0 change_folder   �  ��j � o    �i�i 0 
folder_ref  �j  �k   � o    �h�h 0 	_pathinfo 	_pathInfo �  f      � o      �g�g 0 	path_info   �  ��f � L     � � I    �e ��d�e 0 make_with_pathinfo   �  ��c � o    �b�b 0 	path_info  �c  �d  �f   �  � � � l     �a�`�_�a  �`  �_   �  � � � l      �^ � ��^   � � �!@abstructMake a new instance with changing path extension of the instance@param a_name (Unicode text or string) :a path extension, should not start with a dot ".".<!-- end locale -->@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   p a t h   e x t e n s i o n   o f   t h e   i n s t a n c e  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   : a   p a t h   e x t e n s i o n ,   s h o u l d   n o t   s t a r t   w i t h   a   d o t   " . " .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   $ ' � � � I      �] ��\�] 0 change_path_extension   �  ��[ � o      �Z�Z 0 a_suffix  �[  �\   � L      � � I     �Y ��X�Y 0 make_with_pathinfo   �  ��W � n   	 � � � n   	   I    	�V�U�V 0 change_path_extension   �T o    �S�S 0 a_suffix  �T  �U   o    �R�R 0 	_pathinfo 	_pathInfo �  f    �W  �X   �  l     �Q�P�O�Q  �P  �O    l      �N	�N   q k!@group Getting a File Reference form an Instance

Obtain a reference to a file which XFile reference to.   	 �

 � ! @ g r o u p   G e t t i n g   a   F i l e   R e f e r e n c e   f o r m   a n   I n s t a n c e  
 
 O b t a i n   a   r e f e r e n c e   t o   a   f i l e   w h i c h   X F i l e   r e f e r e n c e   t o .   l     �M�L�K�M  �L  �K    l      �J�J   � �!@abstructObtain a reference to a file as alias class@descriptionAn error raise, If a file or a folder does not exists.@result alias    � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   a l i a s   c l a s s  @ d e s c r i p t i o n  A n   e r r o r   r a i s e ,   I f   a   f i l e   o r   a   f o l d e r   d o e s   n o t   e x i s t s .  @ r e s u l t   a l i a s   i   ( + I      �I�H�G�I 0 as_alias  �H  �G   k       I     �F�E�D�F !0 check_existance_raising_error  �E  �D   �C L     n    n    I   	 �B�A�@�B 0 as_alias  �A  �@   o    	�?�? 0 	_pathinfo 	_pathInfo  f    �C     l     �>�=�<�>  �=  �<    !"! l      �;#$�;  # Q K!@abstructObtain a reference to a file as File URL class@result File URL   $ �%% � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   F i l e   U R L   c l a s s  @ r e s u l t   F i l e   U R L " &'& i   , /()( I      �:�9�8�: 0 as_furl  �9  �8  ) L     ** n    +,+ n   -.- I    �7�6�5�7 0 as_furl  �6  �5  . o    �4�4 0 	_pathinfo 	_pathInfo,  f     ' /0/ l     �3�2�1�3  �2  �1  0 121 l      �034�0  3 / )!@abstruct Obtain HFS path@result text   4 �55 R ! @ a b s t r u c t    O b t a i n   H F S   p a t h  @ r e s u l t   t e x t 2 676 i   0 3898 I      �/�.�-�/ 0 hfs_path  �.  �-  9 L     :: n    ;<; n   =>= I    �,�+�*�, 0 hfs_path  �+  �*  > o    �)�) 0 	_pathinfo 	_pathInfo<  f     7 ?@? l     �(�'�&�(  �'  �&  @ ABA l      �%CD�%  C 1 +!@abstruct Obtain POSIX path@result text   D �EE V ! @ a b s t r u c t    O b t a i n   P O S I X   p a t h  @ r e s u l t   t e x t B FGF i   4 7HIH I      �$�#�"�$ 0 
posix_path  �#  �"  I L     JJ n    KLK n   MNM I    �!� ��! 0 
posix_path  �   �  N o    �� 0 	_pathinfo 	_pathInfoL  f     G OPO l     ����  �  �  P QRQ l      �ST�  S M G!@abstruct
Obtain POSIX path which does not end with "/".
@result text   T �UU � ! @ a b s t r u c t 
 O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 @ r e s u l t   t e x t R VWV i   8 ;XYX I      ���� 0 normalized_posix_path  �  �  Y L     ZZ n    [\[ n   ]^] I    ���� 0 normalized_posix_path  �  �  ^ o    �� 0 	_pathinfo 	_pathInfo\  f     W _`_ l     ����  �  �  ` aba i   < ?cdc I      ���� 0 quoted_path  �  �  d L     ee n    
fgf n   	hih 1    	�
� 
strqi n   jkj I    ��
�	� 0 
posix_path  �
  �	  k o    �� 0 	_pathinfo 	_pathInfog  f     b lml l     ����  �  �  m non l      �pq�  p &  !@group Working with Attributes    q �rr @ ! @ g r o u p   W o r k i n g   w i t h   A t t r i b u t e s  o sts l     ����  �  �  t uvu l      � wx�   w n h!@abstructCheck whether the item is a folder or not.@result boolean : true if the the item is folder.   x �yy � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   f o l d e r   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   t h e   i t e m   i s   f o l d e r . v z{z i   @ C|}| I      �������� 0 	is_folder  ��  ��  } k     ~~ � l      ������  � � �	if item_ref()'s class is not alias then		check_existance_raising_error()		update_pathinfo()	end if	return my _pathInfo's is_folder()
	   � ���  	 i f   i t e m _ r e f ( ) ' s   c l a s s   i s   n o t   a l i a s   t h e n  	 	 c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r ( )  	 	 u p d a t e _ p a t h i n f o ( )  	 e n d   i f  	 r e t u r n   m y   _ p a t h I n f o ' s   i s _ f o l d e r ( ) 
 	� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
asdr� o    	���� 0 info_rec  ��  { ��� l     ��������  ��  ��  � ��� l      ������  � n h!@abstructCheck whether the item is a package or not.@result boolean : true if the item is a package.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   p a c k a g e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   p a c k a g e . � ��� i   D G��� I      �������� 0 
is_package  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
ispk� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � v p!@abstructCheck whether the item is an alias file or not.@result boolean : true if the item is an alias file.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . � ��� i   H K��� I      �������� 0 is_alias  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� m   	 ��
�� 
alis� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � z t!@abstructCheck whether the item is a symbolic link or not.@result boolean : true if the item is a symbolic link.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k . � ��� i   L O��� I      �������� 0 
is_symlink  ��  ��  � k     3�� ��� Z     -������� =    ��� n    ��� o    ���� 0 _is_symlink  �  f     � m    ��
�� 
msng� Q    )���� k    �� ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  t e s t   - L  � I    �������� 0 quoted_path  ��  ��  ��  � ���� r    ��� m    ��
�� boovtrue� n     ��� o    ���� 0 _is_symlink  �  f    ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r   $ )��� m   $ %��
�� boovfals� n     ��� o   & (���� 0 _is_symlink  �  f   % &��  ��  � ���� L   . 3�� n  . 2��� o   / 1���� 0 _is_symlink  �  f   . /��  � ��� l     ��������  ��  ��  � ��� l      ������  � j d!@abstructCheck whether the item is visible or not.@result boolean : true if the item is visible.   � ��� � ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e . � ��� i   P S��� I      �������� 0 
is_visible  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
pvis� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� i   T W��� I      �������� 0 type_identifier  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L       n     1   	 ��
�� 
utid o    	���� 0 info_rec  ��  �  l     ��������  ��  ��    l      ����   � �!@abstructSet creator code and type code to the item.@param creator_code (text) : creator code which consists of 4 characters<!-- end locale -->@param type_code (text) : type code which consists of 4 characters    �		� ! @ a b s t r u c t  S e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m .  @ p a r a m   c r e a t o r _ c o d e   ( t e x t )   :   c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   t y p e _ c o d e   ( t e x t )   :   t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  

 i   X [ I      ������ 0 	set_types    o      ���� 0 creator_code   �� o      ���� 0 	type_code  ��  ��   Z     +���� H      I     �������� 0 	is_folder  ��  ��   k   	 '  r   	  I   	 �������� 0 as_alias  ��  ��   o      ���� 
0 a_file    O    ! k        r    !"! o    ���� 0 creator_code  " n      #$# 1    ��
�� 
fcrt$ o    ���� 
0 a_file    %��% r     &'& o    ���� 0 	type_code  ' n      ()( 1    ��
�� 
asty) o    ���� 
0 a_file  ��   m    **�                                                                                  MACS  alis    t  Macintosh HD               �:1�H+  38�o
Finder.app                                                     3:p͡nX        ����  	                CoreServices    �9�S      ͠��    38�o38�i38�h  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   +��+ r   " ',-, m   " #��
�� 
msng- n     ./. o   $ &���� 0 _inforecord _infoRecord/  f   # $��  ��  ��   010 l     ��������  ��  ��  1 232 l      ��45��  4!@abstructObtain file information.@descriptionDo &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().The size of the target will not be included.@result file infomation(record) : a result of info for command.   5 �66( ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m . 
 T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) .  T h e   s i z e   o f   t h e   t a r g e t   w i l l   n o t   b e   i n c l u d e d .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . 3 787 i   \ _9:9 I      �������� 0 info  ��  ��  : k     ';; <=< Z     !>?���> =    @A@ n    BCB o    �~�~ 0 _inforecord _infoRecordC  f     A m    �}
�} 
msng? k    DD EFE I    �|�{�z�| !0 check_existance_raising_error  �{  �z  F G�yG r    HIH I   �xJK
�x .sysonfo4asfe        fileJ I    �w�v�u�w 0 as_furl  �v  �u  K �tL�s
�t 
ptszL m    �r
�r boovfals�s  I n     MNM o    �q�q 0 _inforecord _infoRecordN  f    �y  ��  �  = O�pO L   " 'PP n  " &QRQ o   # %�o�o 0 _inforecord _infoRecordR  f   " #�p  8 STS l     �n�m�l�n  �m  �l  T UVU l      �kWX�k  W82!@abstructObtain file information including its size.@descriptionDo &quot;info for&quot; command for the item with &quot;size&quot; option. The result is cached and same value is returned at next calling info_with_size() or ((<info>))().@result file infomation(record) : a result of info for command.   X �YYd ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   i n c l u d i n g   i t s   s i z e .  @ d e s c r i p t i o n  D o   & q u o t ; i n f o   f o r & q u o t ;   c o m m a n d   f o r   t h e   i t e m   w i t h   & q u o t ; s i z e & q u o t ;   o p t i o n .    T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o _ w i t h _ s i z e ( )   o r   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . V Z[Z i   ` c\]\ I      �j�i�h�j 0 info_with_size  �i  �h  ] k     C^^ _`_ Z     =abc�ga =    ded n    fgf o    �f�f 0 _inforecord _infoRecordg  f     e m    �e
�e 
msngb k    hh iji I    �d�c�b�d !0 check_existance_raising_error  �c  �b  j k�ak r    lml I   �`no
�` .sysonfo4asfe        filen I    �_�^�]�_ 0 as_furl  �^  �]  o �\p�[
�\ 
ptszp m    �Z
�Z boovtrue�[  m n     qrq o    �Y�Y 0 _inforecord _infoRecordr  f    �a  c sts =    'uvu n     %wxw 1   # %�X
�X 
ptszx n    #yzy o   ! #�W�W 0 _inforecord _infoRecordz  f     !v m   % &�V
�V 
msngt {�U{ r   * 9|}| I  * 5�T~
�T .sysonfo4asfe        file~ I   * /�S�R�Q�S 0 as_furl  �R  �Q   �P��O
�P 
ptsz� m   0 1�N
�N boovtrue�O  } n     ��� o   6 8�M�M 0 _inforecord _infoRecord�  f   5 6�U  �g  ` ��L� L   > C�� n  > B��� o   ? A�K�K 0 _inforecord _infoRecord�  f   > ?�L  [ ��� l     �J�I�H�J  �I  �H  � ��� l      �G���G  � � �!@abstructObtain file information again.@descriptionDo "info for" command for the item and reset the cache of ((<info>))().@result file infomation(record) : a result of info for command.   � ���~ ! @ a b s t r u c t  O b t a i n   f i l e   i n f o r m a t i o n   a g a i n .  @ d e s c r i p t i o n  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) .  @ r e s u l t   f i l e   i n f o m a t i o n ( r e c o r d )   :   a   r e s u l t   o f   i n f o   f o r   c o m m a n d . � ��� i   d g��� I      �F�E�D�F 0 re_info  �E  �D  � k     ;�� ��� Z     5���C�� F     ��� l    ��B�A� >    ��� n    ��� o    �@�@ 0 _inforecord _infoRecord�  f     � m    �?
�? 
msng�B  �A  � l 	  ��>�=� l   ��<�;� >   ��� n    ��� 1    �:
�: 
ptsz� n   ��� o   	 �9�9 0 _inforecord _infoRecord�  f    	� m    �8
�8 
msng�<  �;  �>  �=  � r    #��� I   �7��
�7 .sysonfo4asfe        file� I    �6�5�4�6 0 as_furl  �5  �4  � �3��2
�3 
ptsz� m    �1
�1 boovtrue�2  � n     ��� o     "�0�0 0 _inforecord _infoRecord�  f     �C  � r   & 5��� I  & 1�/��
�/ .sysonfo4asfe        file� I   & +�.�-�,�. 0 as_furl  �-  �,  � �+��*
�+ 
ptsz� m   , -�)
�) boovfals�*  � n     ��� o   2 4�(�( 0 _inforecord _infoRecord�  f   1 2� ��'� L   6 ;�� n  6 :��� o   7 9�&�& 0 _inforecord _infoRecord�  f   6 7�'  � ��� l     �%�$�#�%  �$  �#  � ��� l      �"���"  � % !@group Obtain Path Infomation    � ��� > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  � ��� l     �!� ��!  �   �  � ��� l      ����  � W Q!@abstruct Obtain the name of the item referenced by the instance @result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e    @ r e s u l t   t e x t � ��� i   h k��� I      ���� 0 	item_name  �  �  � L     �� n    ��� n   ��� I    ���� 0 	item_name  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct Obtain the base name (a name which does not include path extension) of the item referenced by the instance.@result text   � ���
 ! @ a b s t r u c t    O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   l o��� I      ���� 0 basename  �  �  � L     �� n    ��� n   ��� I    ���� 0 basename  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��
�	�  �
  �	  � ��� l      ����  � � �!@abstruct Obtain path extension of the item referenced by the instance.
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.@result text   � ���� ! @ a b s t r u c t    O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t � ��� i   p s��� I      ���� 0 path_extension  �  �  � L     �� n    ��� n   ��� I    ���� 0 path_extension  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     � �����   ��  ��  � ��� l      ������  � ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   t w��� I      �������� 0 volume_name  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 volume_name  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     �    l     ��������  ��  ��    l      ����   $ !@group Working with a Bundle     � < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e    l     ��������  ��  ��   	
	 l      ����   � �!@abstructObtain an item which is in the bundle resource folder.@descriptionThis method can be call to a bundle.@param resource_name (text) : a resource name@result script object : a XFile instance    �� ! @ a b s t r u c t  O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r .  @ d e s c r i p t i o n  T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e .  @ p a r a m   r e s o u r c e _ n a m e   ( t e x t )   :   a   r e s o u r c e   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e 
  i   x { I      ������ 0 bundle_resource   �� o      ���� 0 resource_name  ��  ��   L      I     ������ 0 	make_with   �� I   ��
�� .sysorpthalis        TEXT o    ���� 0 resource_name   ����
�� 
in B l   ���� I    �������� 0 as_alias  ��  ��  ��  ��  ��  ��  ��    l     ��������  ��  ��    l      �� ��   j d!@abstructObtain a reference to Info.plist of the bundle.@result script object : a XFile instance     �!! � ! @ a b s t r u c t  O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e  "#" i   | $%$ I      �������� $0 bundle_infoplist bundle_InfoPlist��  ��  % L     && I     ��'���� 0 child_posix  ' (��( m    )) �** & C o n t e n t s / I n f o . p l i s t��  ��  # +,+ l     ��������  ��  ��  , -.- i   � �/0/ I      �������� 0 bundle_resources_folder  ��  ��  0 L     11 I     ��2���� 0 child_posix  2 3��3 m    44 �55 & C o n t e n t s / R e s o u r c e s /��  ��  . 676 l     ��������  ��  ��  7 898 l      ��:;��  : ! !@group File Manipulations    ; �<< 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  9 =>= l     ��������  ��  ��  > ?@? l      ��AB��  A/)!@abstructCheck whether the item referenced by the instance exists or not.@descriptionA file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.@result boolean : true if the item exists.   B �CCR ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . @ DED i   � �FGF I      �������� 0 item_exists  ��  ��  G L     HH n    IJI n   KLK I    �������� 0 item_exists  ��  ��  L o    ���� 0 	_pathinfo 	_pathInfoJ  f     E MNM l     ��������  ��  ��  N OPO l      ��QR��  Q � �!@abstructCheck whether the item referenced by the instance exists or not.@descriptionThe internal file reference will not be changed unlike ((<item_exists>)).@result boolean : true if the item exists.   R �SS� ! @ a b s t r u c t  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ d e s c r i p t i o n  T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . P TUT i   � �VWV I      �������� 0 item_exists_without_update  ��  ��  W L     XX n    YZY n   [\[ I    �������� 0 item_exists_without_update  ��  ��  \ o    ���� 0 	_pathinfo 	_pathInfoZ  f     U ]^] l     ��������  ��  ��  ^ _`_ l      ��ab��  a � �!@abstructSynonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.@result boolean : true if the item exists.   b �cc* ! @ a b s t r u c t  S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  @ r e s u l t   b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s . ` ded i   � �fgf I     ������
�� .coredoexbool       obj ��  ��  g L     hh I     �������� 0 item_exists  ��  ��  e iji l     ��������  ��  ��  j klk l      ��mn��  m l f!@abstructRename an item which referenced by the XFile instance.@result boolean : true if succeded.   n �oo � ! @ a b s t r u c t  R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e d e d . l pqp i   � �rsr I      ��t���� 0 	rename_to  t u��u o      ���� 0 new_name  ��  ��  s k     0vv wxw Z     yz����y H     {{ l    |����| I     �������� 0 item_exists  ��  ��  ��  ��  z L   	 }} m   	 
��
�� boovfals��  ��  x ~~ l   ��������  ��  ��   ��� O    ��� r    ��� o    ���� 0 new_name  � n      ��� 1    ��
�� 
pnam� n   ��� I    �������� 0 item_ref  ��  ��  �  f    � m    ���                                                                                  MACS  alis    t  Macintosh HD               �:1�H+  38�o
Finder.app                                                     3:p͡nX        ����  	                CoreServices    �9�S      ͠��    38�o38�i38�h  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l   ��������  ��  ��  � ��� r    $��� m     ��
�� 
msng� n     ��� o   ! #���� 0 _inforecord _infoRecord�  f     !� ��� n  % -��� n  & -��� I   ( -������� 0 set_name  � ���� o   ( )���� 0 new_name  ��  ��  � o   & (���� 0 	_pathinfo 	_pathInfo�  f   % &� ���� L   . 0�� m   . /��
�� boovtrue��  q ��� l     ��������  ��  ��  � ��� l      ����  �*$!@abstruct Copy the item to specified location@descriptionSame name item in the destination is replaced.@param a_destination (script object or text) : a XFile instance referencing the copy destination or a relative path.@result script object : a XFile instance referencing copied item.   � ���H ! @ a b s t r u c t    C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n  @ d e s c r i p t i o n  S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :    a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �~��}�~ 0 copy_to  � ��|� o      �{�{ 0 a_destination  �|  �}  � L     �� I     �z��y�z 0 copy_with_opts  � ��� o    �x�x 0 a_destination  � ��w� m    �v
�v 
msng�w  �y  � ��� l     �u�t�s�u  �t  �s  � ��� l      �r���r  �71!
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
 @ p a r a m   o p t s   (   r e c o r d ) :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . � ��� i   � ���� I      �q��p�q 0 copy_with_opts  � ��� o      �o�o 0 a_destination  � ��n� o      �m�m 0 opts  �n  �p  � k    8�� ��� l     �l���l  � \ V cp : if source and destination are folders and the path of the source ends with "/",    � ��� �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  � ��� l     �k���k  � ^ X         cp command contents of the source copy under the destination folder like ditto.   � ��� �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .� ��� l     �j���j  � U O        The endding "/" of the source path should be removed for stable result.   � ��� �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .� ��� l     �i���i  � 5 /        Is the support  of ditto not required ?   � ��� ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?� ��� r     ��� m     �h
�h boovtrue� o      �g�g 0 w_replacing  � ��� r    ��� m    �f
�f boovfals� o      �e�e 0 w_admin  � ��� r    ��� m    	�d
�d boovfals� o      �c�c 0 
w_removing  � ��� l   ���� r    ��� m    �� ���  c p� o      �b�b 0 command  �   or "ditto"   � ���    o r   " d i t t o "� ��� l   �a�`�_�a  �`  �_  � ��� Z    l���^�]� =   ��� n    ��� m    �\
�\ 
pcls� o    �[�[ 0 opts  � m    �Z
�Z 
reco� k    h�� ��� Q    )���Y� r     ��� n    ��� o    �X�X 0 with_replacing  � o    �W�W 0 opts  � o      �V�V 0 w_replacing  � R      �U�T�S
�U .ascrerr ****      � ****�T  �S  �Y  � ��� Q   * ;���R� r   - 2   n   - 0 o   . 0�Q�Q 0 
with_admin   o   - .�P�P 0 opts   o      �O�O 0 w_admin  � R      �N�M�L
�N .ascrerr ****      � ****�M  �L  �R  �  Q   < M�K r   ? D	 n   ? B

 o   @ B�J�J 0 with_removing   o   ? @�I�I 0 opts  	 o      �H�H 0 
w_removing   R      �G�F�E
�G .ascrerr ****      � ****�F  �E  �K   �D Q   N h�C Z   Q _�B�A n   Q U o   R T�@�@ 	0 ditto   o   Q R�?�? 0 opts   r   X [ m   X Y � 
 d i t t o o      �>�> 0 command  �B  �A   R      �=�<�;
�= .ascrerr ****      � ****�<  �;  �C  �D  �^  �]  �  l  m m�:�9�8�:  �9  �8    Z   m ��7�6 E  m v J   m r  !  m   m n�5
�5 
ctxt! "#" m   n o�4
�4 
utxt# $�3$ m   o p�2
�2 
TEXT�3   n   r u%&% m   s u�1
�1 
pcls& o   r s�0�0 0 a_destination   r   y �'(' n  y �)*) I   ~ ��/+�.�/ 	0 child  + ,�-, o   ~ �,�, 0 a_destination  �-  �.  * I   y ~�+�*�)�+ 0 parent_folder  �*  �)  ( o      �(�( 0 a_destination  �7  �6   -.- l  � ��'�&�%�'  �&  �%  . /0/ Z   � �123�$1 =  � �454 o   � ��#�# 0 command  5 m   � �66 �77  c p2 k   � �88 9:9 r   � �;<; m   � �== �>>  - R p< o      �"�" 0 com_opts  : ?�!? Z   � �@A� �@ o   � ��� 0 w_replacing  A r   � �BCB b   � �DED o   � ��� 0 com_opts  E m   � �FF �GG  fC o      �� 0 com_opts  �   �  �!  3 HIH =  � �JKJ o   � ��� 0 command  K m   � �LL �MM 
 d i t t oI N�N r   � �OPO m   � �QQ �RR  - - r s r cP o      �� 0 com_opts  �  �$  0 STS r   � �UVU m   � ��
� boovfalsV o      �� 0 is_folder_to  T WXW Z   � �YZ��Y n  � �[\[ I   � ����� 0 item_exists  �  �  \ o   � ��� 0 a_destination  Z Z   � �]^�_] l  � �`��` o   � ��� 0 
w_removing  �  �  ^ n  � �aba I   � ����
� 
0 remove  �  �
  b o   � ��	�	 0 a_destination  �  _ Z   � �cd��c =  � �efe o   � ��� 0 command  f m   � �gg �hh  c pd r   � �iji n  � �klk I   � ����� 0 	is_folder  �  �  l o   � ��� 0 a_destination  j o      �� 0 is_folder_to  �  �  �  �  X mnm l  � �� �����   ��  ��  n opo r   � �qrq n   � �sts 1   � ���
�� 
strqt n  � �uvu I   � ��������� 0 normalized_posix_path  ��  ��  v o   � ����� 0 a_destination  r o      ���� 0 destination_path  p wxw r   �yzy n   � �{|{ 1   � ���
�� 
strq| I   � ��������� 0 normalized_posix_path  ��  ��  z o      ���� 0 source_path  x }~} r  � b  ��� b  ��� b  ��� b  ��� b  	��� b  ��� o  ���� 0 command  � 1  ��
�� 
spac� o  ���� 0 com_opts  � 1  	��
�� 
spac� o  ���� 0 source_path  � 1  ��
�� 
spac� o  ���� 0 destination_path  � o      ���� 0 	a_command  ~ ��� I !����
�� .sysoexecTEXT���     TEXT� o  ���� 0 	a_command  � �����
�� 
badm� o  ���� 0 w_admin  ��  � ��� Z  "5������� o  "#���� 0 is_folder_to  � L  &1�� n &0��� I  '0������� 	0 child  � ���� I  ',�������� 0 	item_name  ��  ��  ��  ��  � o  &'���� 0 a_destination  ��  ��  � ���� L  68�� o  67���� 0 a_destination  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 finder_copy_to  � ��� o      ���� 0 a_destination  � ���� o      ���� 0 with_replacing  ��  ��  � k     *�� ��� r     ��� n    ��� I    �������� 0 as_alias  ��  ��  � o     ���� 0 a_destination  � o      ���� 0 destination  � ��� r    ��� I    �������� 0 as_alias  ��  ��  � o      ���� 0 source_alias  � ��� O    "��� r    !��� c    ��� l   ������ I   ����
�� .coreclon****      � ****� o    ���� 0 source_alias  � ����
�� 
insh� o    ���� 0 destination  � �����
�� 
alrp� o    ���� 0 with_replacing  ��  ��  ��  � m    ��
�� 
alis� o      ���� 0 new_item  � m    ���                                                                                  MACS  alis    t  Macintosh HD               �:1�H+  38�o
Finder.app                                                     3:p͡nX        ����  	                CoreServices    �9�S      ͠��    38�o38�i38�h  6Macintosh HD:System: Library: CoreServices: Finder.app   
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
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l      �� ��   >8!@abstructMove the item referenced by the instance to specified location.
@description
If an same name item exists in the destination, the item will be replaced with the target item.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.    �p ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n . 
 @ d e s c r i p t i o n 
 I f   a n   s a m e   n a m e   i t e m   e x i s t s   i n   t h e   d e s t i n a t i o n ,   t h e   i t e m   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t   i t e m .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . �  i   � � I      ������ 0 move_with_replacing   �� o      ���� 0 a_destination  ��  ��   k     <		 

 l     I     �������� 0 item_exists  ��  ��   G A even if the item exists, broken symbolic file will return false.    � �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .  r     n    I    �������� 0 quoted_path  ��  ��   o    ���� 0 a_destination   o      ���� 0 destination_path    r     I    �������� 0 quoted_path  ��  ��   o      ���� 0 source_path    Q    9 I   $���
�� .sysoexecTEXT���     TEXT b      !  b    "#" b    $%$ m    && �''  m v   - f  % o    �~�~ 0 source_path  # 1    �}
�} 
spac! o    �|�| 0 destination_path  �   R      �{(�z
�{ .ascrerr ****      � ****( o      �y�y 0 msg  �z   k   , 9)) *+* O  , 6,-, I  0 5�x.�w
�x .ascrcmnt****      � ****. o   0 1�v�v 0 msg  �w  - 1   , -�u
�u 
ascr+ /�t/ L   7 900 m   7 8�s
�s boovfals�t   1�r1 L   : <22 m   : ;�q
�q boovtrue�r   343 l     �p�o�n�p  �o  �n  4 565 l      �m78�m  7!@abstructResolving original item of a alias file.@descriptionIf the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.@result script object or missing value   8 �99
 ! @ a b s t r u c t  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  @ d e s c r i p t i o n  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e 6 :;: i   � �<=< I      �l�k�j�l 0 resolve_alias  �k  �j  = k     ^>> ?@? Z     #AB�i�hA I     �g�f�e�g 0 
is_symlink  �f  �e  B k    CC DED r    FGF I    �d�c�b�d 0 	deep_copy  �c  �b  G o      �a�a 0 
x_original  E H�`H Z    IJ�_KI n   LML I    �^�]�\�^ 0 item_exists  �]  �\  M o    �[�[ 0 
x_original  J L    NN o    �Z�Z 0 
x_original  �_  K L    OO m    �Y
�Y 
msng�`  �i  �h  @ PQP l  $ $�X�W�V�X  �W  �V  Q RSR r   $ +TUT I   $ )�U�T�S�U 0 info  �T  �S  U o      �R�R 0 info_rec  S V�QV Z   , ^WX�PYW n   , 0Z[Z m   - /�O
�O 
alis[ o   , -�N�N 0 info_rec  X k   3 X\\ ]^] Q   3 P_`a_ O   6 Fbcb r   : Eded c   : Cfgf l  : Ah�M�Lh n   : Aiji 1   ? A�K
�K 
origj l  : ?k�J�Ik n  : ?lml I   ; ?�H�G�F�H 0 as_alias  �G  �F  m  f   : ;�J  �I  �M  �L  g m   A B�E
�E 
alise o      �D�D 0 original_item  c m   6 7nn�                                                                                  MACS  alis    t  Macintosh HD               �:1�H+  38�o
Finder.app                                                     3:p͡nX        ����  	                CoreServices    �9�S      ͠��    38�o38�i38�h  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ` R      �Co�B
�C .ascrerr ****      � ****o o      �A�A 
0 errmsg  �B  a L   N Ppp m   N O�@
�@ 
msng^ q�?q L   Q Xrr I   Q W�>s�=�> 0 	make_with  s t�<t o   R S�;�; 0 original_item  �<  �=  �?  �P  Y L   [ ^uu N   [ ]vv  f   [ \�Q  ; wxw l     �:�9�8�:  �9  �8  x yzy l      �7{|�7  { ! !@abstructPut into trash.   | �}} 6 ! @ a b s t r u c t  P u t   i n t o   t r a s h . z ~~ i   � ���� I      �6�5�4�6 0 
into_trash  �5  �4  � k     �� ��� r     ��� I     �3�2�1�3 0 as_alias  �2  �1  � o      �0�0 
0 a_file  � ��� O    ��� I   �/��.
�/ .coredeloobj        obj � o    �-�- 
0 a_file  �.  � m    	���                                                                                  MACS  alis    t  Macintosh HD               �:1�H+  38�o
Finder.app                                                     3:p͡nX        ����  	                CoreServices    �9�S      ͠��    38�o38�i38�h  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��,� I    �+�*�)�+ 0 update_pathinfo  �*  �)  �,   ��� l     �(�'�&�(  �'  �&  � ��� l      �%���%  � c ]!@abstructRemove the item referd from the target XFile instance.@result script object : me   � ��� � ! @ a b s t r u c t  R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   m e � ��� i   � ���� I      �$�#�"�$ 
0 remove  �#  �"  � k     *�� ��� r     ��� I     �!� ��! 0 quoted_path  �   �  � o      �� 
0 a_file  � ��� r    ��� n   ��� n  	 ��� I    ���� 0 as_text  �  �  � o   	 �� 0 	_pathinfo 	_pathInfo�  f    	� o      �� 
0 a_path  � ��� I   ���
� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  r m   - r  � o    �� 
0 a_file  �  � ��� r    !��� o    �� 
0 a_path  � n     ��� n    ��� o     �� 0 	_item_ref  � o    �� 0 	_pathinfo 	_pathInfo�  f    � ��� r   " '��� m   " #�
� 
msng� n     ��� o   $ &�� 0 _inforecord _infoRecord�  f   # $� ��� L   ( *��  f   ( )�  � ��� l     ����  �  �  � ��� l      ����  �   !@group Making subfolders    � ��� 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  � ��� l     ��
�	�  �
  �	  � ��� l      ����  � � �!@abstructMake a sub folder.@descriptionmissing value will is returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.@result script object or missing value : a XFile instance of newly created folder.   � ���� ! @ a b s t r u c t  M a k e   a   s u b   f o l d e r .  @ d e s c r i p t i o n  m i s s i n g   v a l u e   w i l l   i s   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . � ��� i   � ���� I      ���� 0 make_folder  � ��� o      �� 0 folder_name  �  �  � k     !�� ��� Z     ����� H     �� l    ��� � I     �������� 0 item_exists  ��  ��  �  �   � L   	 �� m   	 
��
�� 
msng�  �  � ��� l   ��������  ��  ��  � ��� r    ��� I    ������� 	0 child  � ���� o    ���� 0 folder_name  ��  ��  � o      ���� 0 
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
�� boovfals� o      ���� 0 w_admin  � ��� Z    ������� =   	��� n    � � m    ��
�� 
pcls  o    ���� 0 opts  � m    ��
�� 
reco� r     n     o    ���� 0 
with_admin   o    ���� 0 opts   o      ���� 0 w_admin  ��  ��  �  Z    0���� I    �������� 0 item_exists  ��  ��   Z    ,	
��	 I    #�������� 0 	is_folder  ��  ��  
 L   & (  f   & '��   m   + ,��
�� 
msng��  ��    I  1 @��
�� .sysoexecTEXT���     TEXT b   1 : m   1 2 �  m k d i r   - p   l  2 9���� n   2 9 1   7 9��
�� 
strq I   2 7�������� 0 
posix_path  ��  ��  ��  ��   ����
�� 
badm o   ; <���� 0 w_admin  ��    Z  A O���� I   A F�������� 0 item_exists  ��  ��   L   I K  f   I J��  ��   �� L   P R m   P Q��
�� 
msng��  �  !  l     ��������  ��  ��  ! "#" l     ��������  ��  ��  # $%$ l      ��&'��  & 0 *!@group Reading and Writing File Contents    ' �(( T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  % )*) l     ��������  ��  ��  * +,+ l      ��-.��  - X R!@abstructRead file contents as UTF-8 encoded text.@result Unicode text (UTF-8)   . �// � ! @ a b s t r u c t  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) , 010 i   � �232 I      �������� 0 read_as_utf8  ��  ��  3 k     44 565 I     �������� !0 check_existance_raising_error  ��  ��  6 7��7 L    88 I   ��9:
�� .rdwrread****        ****9 l   ;����; I    �������� 0 as_alias  ��  ��  ��  ��  : ��<��
�� 
as  < m    ��
�� 
utf8��  ��  1 =>= l     ��������  ��  ��  > ?@? l      ��AB��  A u o!@abstructWrite data into the file as UTF-8 encoded text.@param a_data (text) : data to write into the file.   B �CC � ! @ a b s t r u c t  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . @ DED i   � �FGF I      ��H���� 0 write_as_utf8  H I��I o      ���� 
0 a_data  ��  ��  G k     %JJ KLK r     MNM I    ��OP
�� .rdwropenshor       fileO I     �������� 0 as_furl  ��  ��  P ��Q��
�� 
permQ m    ��
�� boovtrue��  N o      ���� 
0 output  L RSR I   ��TU
�� .rdwrseofnull���     ****T o    ���� 
0 output  U ��V��
�� 
set2V m    ����  ��  S WXW I   ��YZ
�� .rdwrwritnull���     ****Y o    ���� 
0 a_data  Z ��[\
�� 
refn[ o    ���� 
0 output  \ ��]��
�� 
as  ] m    ��
�� 
utf8��  X ^��^ I    %��_��
�� .rdwrclosnull���     ****_ o     !���� 
0 output  ��  ��  E `a` l     ��������  ��  ��  a bcb l      ��de��  d " !@group Parent and Children    e �ff 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  c ghg l     �������  ��  �  h iji l      �~kl�~  k � �!@abstructObtain a folder containing the item referenced by the XFile instance.@result script object : a XFile instance of the parent folder.   l �mm  ! @ a b s t r u c t  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . j non i   � �pqp I      �}�|�{�} 0 parent_folder  �|  �{  q L     rr I     �zs�y�z 0 make_with_pathinfo  s t�xt n   uvu n   wxw I    �w�v�u�w 0 parent_folder  �v  �u  x o    �t�t 0 	_pathinfo 	_pathInfov  f    �x  �y  o yzy l     �s�r�q�s  �r  �q  z {|{ l      �p}~�p  }!@abstructObtain an item in the folder with specifying a sub path from the target.@descriptionIf this methods is sent to non exsisting folder, missing value is returend.@param suppath(text) :a sub path to obtain.@result script object or missing value : a XFile instance   ~ �& ! @ a b s t r u c t  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  @ d e s c r i p t i o n  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e | ��� i   � ���� I      �o��n�o 	0 child  � ��m� o      �l�l 0 subpath  �m  �n  � Z     ���k�� I     �j�i�h�j 0 item_exists_without_update  �i  �h  � L    �� I    �g��f�g 0 make_with_pathinfo  � ��e� n  	 ��� n  
 ��� I    �d��c�d 	0 child  � ��b� o    �a�a 0 subpath  �b  �c  � o   
 �`�` 0 	_pathinfo 	_pathInfo�  f   	 
�e  �f  �k  � L    �� m    �_
�_ 
msng� ��� l     �^�]�\�^  �]  �\  � ��� i   � ���� I      �[��Z�[ 0 child_posix  � ��Y� o      �X�X 0 subpath  �Y  �Z  � Z     "���W�� I     �V�U�T�V 0 item_exists  �U  �T  � k    �� ��� r    ��� I    �S�R�Q�S 0 
posix_path  �R  �Q  � o      �P�P 
0 a_path  � ��� r    ��� b    ��� o    �O�O 
0 a_path  � o    �N�N 0 subpath  � o      �M�M 
0 a_path  � ��L� L    �� I    �K��J�K 0 	make_with  � ��I� o    �H�H 
0 a_path  �I  �J  �L  �W  � L     "�� m     !�G
�G 
msng� ��� l     �F�E�D�F  �E  �D  � ��� l     �C�B�A�C  �B  �A  � ��� l      �@���@  ���!@abstructObtain a XFile instance reference unique name item in the folder.@descriptionIf the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.@param a_candidate(text or list) :A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.@result script object : a XFile instance   � ���T ! @ a b s t r u c t  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  @ d e s c r i p t i o n  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   :  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e � ��� i   � ���� I      �?��>�? 0 unique_child  � ��=� o      �<�< 0 a_candidate  �=  �>  � k     w�� ��� Z     ���;�:� H     �� I     �9�8�7�9 0 	is_folder  �8  �7  � L   	 �� m   	 
�6
�6 
msng�;  �:  � ��� r    )��� n   ��� I    �5��4�5 0 
split_name  � ��3� o    �2�2 0 a_candidate  �3  �4  � o    �1�1 0 pathinfo PathInfo� J      �� ��� o      �0�0 0 
a_basename  � ��/� o      �.�. 0 a_suffix  �/  � ��� Z   * ;���-�� =  * -��� o   * +�,�, 0 a_suffix  � m   + ,�+
�+ 
msng� r   0 3��� m   0 1�� ���  � o      �*�* 0 a_suffix  �-  � r   6 ;��� b   6 9��� m   6 7�� ���  .� o   7 8�)�) 0 a_suffix  � o      �(�( 0 a_suffix  � ��� r   < ?��� m   < =�'�' � o      �&�& 0 i  � ��� r   @ C��� m   @ A�� ���  � o      �%�% 0 escape_suffix  � ��� T   D t�� k   I o�� ��� r   I U��� I   I S�$��#�$ 	0 child  � ��"� b   J O��� b   J M��� o   J K�!�! 0 
a_basename  � o   K L� �  0 escape_suffix  � o   M N�� 0 a_suffix  �"  �#  � o      �� 0 a_child  � ��� Z   V o����� n  V [��� I   W [���� 0 item_exists  �  �  � o   V W�� 0 a_child  � k   ^ k��    r   ^ e b   ^ c 1   ^ _�
� 
spac l  _ b�� c   _ b o   _ `�� 0 i   m   ` a�
� 
utxt�  �   o      �� 0 escape_suffix   	�	 r   f k

 [   f i o   f g�� 0 i   m   g h��  o      �� 0 i  �  �  �  S   n o�  � � L   u w o   u v�� 0 a_child  �  �  l     ��
�	�  �
  �	    i   � � I      ���� 0 list_children  �  �   L     
 I    	��
� .earslfdrutxt  @    file I     ���� 0 as_furl  �  �  �    l     � �����   ��  ��    l      ����  <6!@abstruct
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. Each XFile instance in the target folder is passed to the &quot;do&quot; handler.The do handler must return true or false. When the do handler return false, the process is stoped immediately.@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
    �l ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .    E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r .  T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y .  @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
   i   � �!"! I      ��#���� 0 each  # $��$ o      ���� 0 a_script  ��  ��  " k     @%% &'& r     ()( I     �������� 0 list_children  ��  ��  ) o      ���� 
0 a_list  ' *+* h    ��,�� 0 listwrapper ListWrapper, j     ��-
�� 
pcnt- o     ���� 
0 a_list  + ./. l   ��������  ��  ��  / 0��0 Y    @1��23��1 k    ;44 565 r    +787 I    )��9���� 	0 child  9 :��: n    %;<; 4   " %��=
�� 
cobj= o   # $���� 0 n  < n    ">?> 1     "��
�� 
pcnt? o     ���� 0 listwrapper ListWrapper��  ��  8 o      ���� 
0 x_item  6 @��@ Z   , ;AB����A H   , 3CC n  , 2DED I   - 2��F���� 0 do  F G��G o   - .���� 
0 x_item  ��  ��  E o   , -���� 0 a_script  B  S   6 7��  ��  ��  �� 0 n  2 m    ���� 3 I   ��H��
�� .corecnte****       ****H o    ���� 
0 a_list  ��  ��  ��    IJI l     ��������  ��  ��  J KLK l      ��MN��  M * $!@group Working with Shell Commands    N �OO H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  L PQP l     ��������  ��  ��  Q RSR l      ��TU��  T	!@abstruct
Run passed shell command taking the target as an argument.
@description
&quot;%s&quot; in the command will be replaced with the target's path.
@param a_command(text) : shell command including %s.
@result text : standard output of the shell command
   U �VV ! @ a b s t r u c t 
 R u n   p a s s e d   s h e l l   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n 
 & q u o t ; % s & q u o t ;   i n   t h e   c o m m a n d   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t ' s   p a t h . 
 @ p a r a m   a _ c o m m a n d ( t e x t )   :   s h e l l   c o m m a n d   i n c l u d i n g   % s . 
 @ r e s u l t   t e x t   :   s t a n d a r d   o u t p u t   o f   t h e   s h e l l   c o m m a n d 
S WXW i   � �YZY I      ��[���� 0 perform_shell  [ \��\ o      ���� 0 	a_command  ��  ��  Z k     ]] ^_^ r     `a` n    	bcb 1    	��
�� 
strqc n    ded 1    ��
�� 
strqe I     �������� 0 normalized_posix_path  ��  ��  a o      ���� 
0 a_path  _ f��f L    gg I   ��h��
�� .sysoexecTEXT���     TEXTh b    iji b    klk b    mnm b    opo m    qq �rr  e v a l   $ ( p r i n t f  p n   sts 1    ��
�� 
strqt o    ���� 0 	a_command  n 1    ��
�� 
spacl o    ���� 
0 a_path  j m    uu �vv  )��  ��  X wxw l     ��������  ��  ��  x yzy l      ��{|��  { � �!@abstruct
Run test command taking the target as an argument.
@param option(text) : 
An option to passed to the test command. See the man page of the test command.
@result boolean : true if test command successfully exits.
   | �}}� ! @ a b s t r u c t 
 R u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ p a r a m   o p t i o n ( t e x t )   :   
 A n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . 
z ~~ i   � ���� I      ������� 0 
shell_test  � ���� o      ���� 
0 option  ��  ��  � k     �� ��� Q     ���� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� m    �� ��� 
 t e s t  � o    ���� 
0 option  � 1    ��
�� 
spac� I    �������� 0 quoted_path  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    ��
�� boovfals� ���� L    �� m    ��
�� boovtrue��   ��� l     ��������  ��  ��  � ��� l      ������  �  == private *   � ���  = =   p r i v a t e   *� ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 	deep_copy  ��  ��  � L     �� I     ������� 0 make_with_pathinfo  � ���� n   ��� n   ��� I    �������� 	0 clone  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 item_ref  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_ref  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� !0 check_existance_raising_error  ��  ��  � Z     !������� H     �� l    ������ n    ��� n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     ��  ��  � R    ����
�� .ascrerr ****      � ****� b    ��� b    ��� m    �� ��� 
 i t e m  � n    ��� 1    �
� 
strq� l   ��~�}� n   ��� n   ��� I    �|�{�z�| 0 as_text  �{  �z  � o    �y�y 0 	_pathinfo 	_pathInfo�  f    �~  �}  � m    �� ���     d o e s   n o t   e x i s t .� �x��w
�x 
errn� m    �v�vF�w  ��  ��  � ��� l     �u�t�s�u  �t  �s  � ��� i   � ���� I      �r�q�p�r 0 update_pathinfo  �q  �p  � k     $�� ��� r     ��� n    ��� I    �o��n�o 0 make_with_opts  � ��� n   ��� n   ��� I    �m�l�k�m 0 item_ref  �l  �k  � o    �j�j 0 	_pathinfo 	_pathInfo�  f    � ��i� K    �� �h��g�h 0 prefering_posix  � n   ��� n   ��� I    �f�e�d�f 0 is_posix  �e  �d  � o    �c�c 0 	_pathinfo 	_pathInfo�  f    �g  �i  �n  � o     �b�b 0 pathinfo PathInfo� n     ��� o    �a�a 0 	_pathinfo 	_pathInfo�  f    � ��`� L    $�� n   #��� o     "�_�_ 0 	_pathinfo 	_pathInfo�  f     �`  � ��� l     �^�]�\�^  �]  �\  � ��� i   � ���� I      �[�Z�Y�[ 0 dump  �Z  �Y  � L     �� n    ��� n   � � I    �X�W�V�X 0 as_text  �W  �V    o    �U�U 0 	_pathinfo 	_pathInfo�  f     �  l     �T�S�R�T  �S  �R    i   � � I     �Q�P�O
�Q .ascrcmnt****      � ****�P  �O   M      I     �N�M
�N .ascrcmnt****      � **** I    �L�K�J�L 0 dump  �K  �J  �M   	
	 l     �I�H�G�I  �H  �G  
  i   � � I      �F�E�D�F 	0 debug  �E  �D   k     1  I    �C
�C .MoloBootscpt        scpt l    �B�A I    �@�?�>
�@ .MoloMKloscpt    ��� null�?  �>  �B  �A   �=�<
�= 
forM  f    �<    r     c     m     � F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d f m    �;
�; 
psxf o      �:�: 
0 a_path    r     !  I    �9"�8�9 0 	make_with  " #�7# o    �6�6 
0 a_path  �7  �8  ! o      �5�5 0 a_xfile   $%$ l   �4&'�4  & K Ereturn a_result's change_path_extension(missing value)'s posix_path()   ' �(( � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )% )*) r    '+,+ n   %-.- I     %�3/�2�3 0 unique_child  / 0�10 m     !11 �22 : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f�1  �2  . n    343 I     �0�/�.�0 0 parent_folder  �/  �.  4 o    �-�- 0 a_xfile  , o      �,�, 0 new_named_file  * 5�+5 I  ( 1�*6�)
�* .ascrcmnt****      � ****6 n  ( -787 I   ) -�(�'�&�( 0 	item_name  �'  �&  8 o   ( )�%�% 0 new_named_file  �)  �+   9:9 l     �$�#�"�$  �#  �"  : ;<; i   =>= I     �!� �
�! .aevtoappnull  �   � ****�   �  > k     ?? @A@ l     �BC�  B  return debug()   C �DD  r e t u r n   d e b u g ( )A E�E Q     FGHF I   �IJ
� .HBsushHBTEXT    ��� fileI l   K��K I   �L�
� .earsffdralis        afdrL  f    �  �  �  J �M�
� 
rcIPM m   	 
�
� boovtrue�  G R      �NO
� .ascrerr ****      � ****N o      �� 0 msg  O �P�
� 
errnP o      �� 	0 errno  �  H I   �Q�
� .sysodisAaleR        TEXTQ l   R��R b    STS b    UVU o    �� 0 msg  V o    �

�
 
ret T o    �	�	 	0 errno  �  �  �  �  < W�W l     ����  �  �  �       C�X  Y�Z[\]^_`abcdefghijklmnopqrstuvwxyz{|}~������������������������  X A��� ����������������������������������������������������������������������������������������������������������������������������
� 
pnam
� 
vers�  0 pathinfo PathInfo�� 0 _prefer_posix  �� 0 prefer_posix  �� 0 	make_with  �� 0 make_with_pathinfo  �� 0 change_name  �� 0 change_folder  �� 0 change_path_extension  �� 0 as_alias  �� 0 as_furl  �� 0 hfs_path  �� 0 
posix_path  �� 0 normalized_posix_path  �� 0 quoted_path  �� 0 	is_folder  �� 0 
is_package  �� 0 is_alias  �� 0 
is_symlink  �� 0 
is_visible  �� 0 type_identifier  �� 0 	set_types  �� 0 info  �� 0 info_with_size  �� 0 re_info  �� 0 	item_name  �� 0 basename  �� 0 path_extension  �� 0 volume_name  �� 0 bundle_resource  �� $0 bundle_infoplist bundle_InfoPlist�� 0 bundle_resources_folder  �� 0 item_exists  �� 0 item_exists_without_update  
�� .coredoexbool       obj �� 0 	rename_to  �� 0 copy_to  �� 0 copy_with_opts  �� 0 finder_copy_to  �� 0 move_to  �� 0 move_with_replacing  �� 0 resolve_alias  �� 0 
into_trash  �� 
0 remove  �� 0 make_folder  �� 0 	make_path  �� 0 read_as_utf8  �� 0 write_as_utf8  �� 0 parent_folder  �� 	0 child  �� 0 child_posix  �� 0 unique_child  �� 0 list_children  �� 0 each  �� 0 perform_shell  �� 0 
shell_test  �� 0 	deep_copy  �� 0 item_ref  �� !0 check_existance_raising_error  �� 0 update_pathinfo  �� 0 dump  
�� .ascrcmnt****      � ****�� 	0 debug  
�� .aevtoappnull  �   � ****Y ������
�� 
pcls
�� 
MoSp��  
� boovtrueZ �� ,���������� 0 prefer_posix  �� ����� �  ���� 0 bool  ��  � ���� 0 bool  � ���� 0 _prefer_posix  �� �)�,F[ �� D���������� 0 	make_with  �� ����� �  ���� 0 file_ref  ��  � �������� 0 file_ref  �� 
0 is_hfs  �� 0 	path_info  � 	�������� `��������
�� 
ctxt
�� 
utxt
�� 
TEXT
�� 
pcls�� 0 make_with_hfs  �� 0 _prefer_posix  �� 0 make_with_posix  �� 0 make_with_pathinfo  �� YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ \ �� ����������� 0 make_with_pathinfo  �� ����� �  ���� 0 	path_info  ��  � �������� 0 	path_info  �� 0 a_parent  �� 0 xfile XFile� �� ���� 0 xfile XFile� �����������
�� .ascrinit****      � ****� k      ��  ���  ���  ���  ���  �����  ��  ��  � ����������
�� 
pare�� 0 	_pathinfo 	_pathInfo�� 0 _inforecord _infoRecord�� 0 _prefer_posix  �� 0 _is_symlink  � ��������������
�� 
pare�� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� 0 _is_symlink  �� !b  N  Ob   �O�Ob   j+ �O��� )E�O��K S�O�] �� ����������� 0 change_name  �� ����� �  ���� 
0 a_name  ��  � ������ 
0 a_name  �� 0 	path_info  � �������� 0 	_pathinfo 	_pathInfo�� 0 change_name  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ ^ � ��~�}���|� 0 change_folder  �~ �{��{ �  �z�z 0 
folder_ref  �}  � �y�x�y 0 
folder_ref  �x 0 	path_info  � �w�v�u�w 0 	_pathinfo 	_pathInfo�v 0 change_folder  �u 0 make_with_pathinfo  �| )�,�k+ E�O*�k+ _ �t ��s�r���q�t 0 change_path_extension  �s �p��p �  �o�o 0 a_suffix  �r  � �n�n 0 a_suffix  � �m�l�k�m 0 	_pathinfo 	_pathInfo�l 0 change_path_extension  �k 0 make_with_pathinfo  �q *)�,�k+ k+ ` �j�i�h���g�j 0 as_alias  �i  �h  �  � �f�e�d�f !0 check_existance_raising_error  �e 0 	_pathinfo 	_pathInfo�d 0 as_alias  �g *j+  O)�,j+ a �c)�b�a���`�c 0 as_furl  �b  �a  �  � �_�^�_ 0 	_pathinfo 	_pathInfo�^ 0 as_furl  �` 	)�,j+ b �]9�\�[���Z�] 0 hfs_path  �\  �[  �  � �Y�X�Y 0 	_pathinfo 	_pathInfo�X 0 hfs_path  �Z 	)�,j+ c �WI�V�U���T�W 0 
posix_path  �V  �U  �  � �S�R�S 0 	_pathinfo 	_pathInfo�R 0 
posix_path  �T 	)�,j+ d �QY�P�O���N�Q 0 normalized_posix_path  �P  �O  �  � �M�L�M 0 	_pathinfo 	_pathInfo�L 0 normalized_posix_path  �N 	)�,j+ e �Kd�J�I���H�K 0 quoted_path  �J  �I  �  � �G�F�E�G 0 	_pathinfo 	_pathInfo�F 0 
posix_path  
�E 
strq�H )�,j+ �,Ef �D}�C�B���A�D 0 	is_folder  �C  �B  � �@�@ 0 info_rec  � �?�>�? 0 info  
�> 
asdr�A *j+  E�O��,Eg �=��<�;���:�= 0 
is_package  �<  �;  � �9�9 0 info_rec  � �8�7�8 0 info  
�7 
ispk�: *j+  E�O��,Eh �6��5�4���3�6 0 is_alias  �5  �4  � �2�2 0 info_rec  � �1�0�1 0 info  
�0 
alis�3 *j+  E�O��,Ei �/��.�-���,�/ 0 
is_symlink  �.  �-  �  � �+�*��)�(�'�&�+ 0 _is_symlink  
�* 
msng�) 0 quoted_path  
�( .sysoexecTEXT���     TEXT�'  �&  �, 4)�,�  & �*j+ %j Oe)�,FW X  f)�,FY hO)�,Ej �%��$�#���"�% 0 
is_visible  �$  �#  � �!�! 0 info_rec  � � ��  0 info  
� 
pvis�" *j+  E�O��,Ek �������� 0 type_identifier  �  �  � �� 0 info_rec  � ��� 0 info  
� 
utid� *j+  E�O��,El ������� 0 	set_types  � ��� �  ��� 0 creator_code  � 0 	type_code  �  � ���� 0 creator_code  � 0 	type_code  � 
0 a_file  � ��*��
�	�� 0 	is_folder  � 0 as_alias  
� 
fcrt
�
 
asty
�	 
msng� 0 _inforecord _infoRecord� ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY hm �:������ 0 info  �  �  �  � ���� ����� 0 _inforecord _infoRecord
� 
msng� !0 check_existance_raising_error  �  0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file� ()�,�  *j+ O*j+ �fl )�,FY hO)�,En ��]���������� 0 info_with_size  ��  ��  �  � �������������� 0 _inforecord _infoRecord
�� 
msng�� !0 check_existance_raising_error  �� 0 as_furl  
�� 
ptsz
�� .sysonfo4asfe        file�� D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,Eo ������������� 0 re_info  ��  ��  �  � �������������� 0 _inforecord _infoRecord
�� 
msng
�� 
ptsz
�� 
bool�� 0 as_furl  
�� .sysonfo4asfe        file�� <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,Ep ������������� 0 	item_name  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 	item_name  �� 	)�,j+ q ������������� 0 basename  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 basename  �� 	)�,j+ r ������������� 0 path_extension  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 path_extension  �� 	)�,j+ s ������������� 0 volume_name  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 volume_name  �� 	)�,j+ t ������������ 0 bundle_resource  �� ����� �  ���� 0 resource_name  ��  � ���� 0 resource_name  � ��������
�� 
in B�� 0 as_alias  
�� .sysorpthalis        TEXT�� 0 	make_with  �� *��*j+ l k+ u ��%���������� $0 bundle_infoplist bundle_InfoPlist��  ��  �  � )���� 0 child_posix  �� *�k+ v ��0���������� 0 bundle_resources_folder  ��  ��  �  � 4���� 0 child_posix  �� *�k+ w ��G���������� 0 item_exists  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 item_exists  �� 	)�,j+ x ��W���������� 0 item_exists_without_update  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  �� 	)�,j+ y ��g��������
�� .coredoexbool       obj ��  ��  �  � ���� 0 item_exists  �� *j+  z ��s���������� 0 	rename_to  �� ����� �  ���� 0 new_name  ��  � ���� 0 new_name  � ����������������� 0 item_exists  �� 0 item_ref  
�� 
pnam
�� 
msng�� 0 _inforecord _infoRecord�� 0 	_pathinfo 	_pathInfo�� 0 set_name  �� 1*j+   fY hO� �)j+ �,FUO�)�,FO)�,�k+ Oe{ ������������� 0 copy_to  �� ����� �  ���� 0 a_destination  ��  � ���� 0 a_destination  � ����
�� 
msng�� 0 copy_with_opts  �� 	*��l+ | ������������� 0 copy_with_opts  �� ����� �  ������ 0 a_destination  �� 0 opts  ��  � ������������������������ 0 a_destination  �� 0 opts  �� 0 w_replacing  �� 0 w_admin  �� 0 
w_removing  �� 0 command  �� 0 com_opts  �� 0 is_folder_to  �� 0 destination_path  �� 0 source_path  �� 0 	a_command  � ���������~�}�|�{�z�y�x�w�v6=FLQ�u�tg�s�r�q�p�o�n�m
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
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�} �l��k�j���i�l 0 finder_copy_to  �k �h��h �  �g�f�g 0 a_destination  �f 0 with_replacing  �j  � �e�d�c�b�a�e 0 a_destination  �d 0 with_replacing  �c 0 destination  �b 0 source_alias  �a 0 new_item  � �`��_�^�]�\�[�Z�` 0 as_alias  
�_ 
insh
�^ 
alrp�] 
�\ .coreclon****      � ****
�[ 
alis�Z 0 	make_with  �i +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ ~ �Y��X�W���V�Y 0 move_to  �X �U��U �  �T�T 0 a_destination  �W  � �S�R�Q�P�S 0 a_destination  �R 0 destination_path  �Q 0 source_path  �P 0 msg  � 	�O�N��M�L�K�J�I�H�O 0 item_exists  �N 0 quoted_path  
�M 
spac
�L .sysoexecTEXT���     TEXT�K 0 msg  �J  
�I 
ascr
�H .ascrcmnt****      � ****�V =*j+  O�j+ E�O*j+ E�O �%�%�%j W X  � �j UOfOe �G�F�E���D�G 0 move_with_replacing  �F �C��C �  �B�B 0 a_destination  �E  � �A�@�?�>�A 0 a_destination  �@ 0 destination_path  �? 0 source_path  �> 0 msg  � 	�=�<&�;�:�9�8�7�6�= 0 item_exists  �< 0 quoted_path  
�; 
spac
�: .sysoexecTEXT���     TEXT�9 0 msg  �8  
�7 
ascr
�6 .ascrcmnt****      � ****�D =*j+  O�j+ E�O*j+ E�O �%�%�%j W X  � �j UOfOe� �5=�4�3���2�5 0 resolve_alias  �4  �3  � �1�0�/�.�1 0 
x_original  �0 0 info_rec  �/ 0 original_item  �. 
0 errmsg  � �-�,�+�*�)�(n�'�&�%�$�#�- 0 
is_symlink  �, 0 	deep_copy  �+ 0 item_exists  
�* 
msng�) 0 info  
�( 
alis�' 0 as_alias  
�& 
orig�% 
0 errmsg  �$  �# 0 	make_with  �2 _*j+   *j+ E�O�j+  �Y �Y hO*j+ E�O��,E * � )j+ �,�&E�UW 	X 	 
�O*�k+ Y )� �"��!� ����" 0 
into_trash  �!  �   � �� 
0 a_file  � ����� 0 as_alias  
� .coredeloobj        obj � 0 update_pathinfo  � *j+  E�O� �j UO*j+ � �������� 
0 remove  �  �  � ��� 
0 a_file  � 
0 a_path  � ��������� 0 quoted_path  � 0 	_pathinfo 	_pathInfo� 0 as_text  
� .sysoexecTEXT���     TEXT� 0 	_item_ref  
� 
msng� 0 _inforecord _infoRecord� +*j+  E�O)�,j+ E�O�%j O�)�,�,FO�)�,FO)� ����	 	�
� 0 make_folder  � �		�	 	  �� 0 folder_name  �  	  ��� 0 folder_name  � 0 
new_folder  	 ����� 0 item_exists  
� 
msng� 	0 child  � 0 	make_path  �
 "*j+   �Y hO*�k+ E�O�jvk+ � ��� ��		��� 0 	make_path  �  ��	�� 	  ���� 0 opts  ��  	 ������ 0 opts  �� 0 w_admin  	 ��������������������
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
O*j+  )Y hO�� ��3����		���� 0 read_as_utf8  ��  ��  	  	 ������������ !0 check_existance_raising_error  �� 0 as_alias  
�� 
as  
�� 
utf8
�� .rdwrread****        ****�� *j+  O*j+ ��l � ��G����			���� 0 write_as_utf8  �� ��	
�� 	
  ���� 
0 a_data  ��  	 ������ 
0 a_data  �� 
0 output  		 ������������������������ 0 as_furl  
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
� ��q����		���� 0 parent_folder  ��  ��  	  	 �������� 0 	_pathinfo 	_pathInfo�� 0 parent_folder  �� 0 make_with_pathinfo  �� *)�,j+ k+ � �������		���� 	0 child  �� ��	�� 	  ���� 0 subpath  ��  	 ���� 0 subpath  	 ������������ 0 item_exists_without_update  �� 0 	_pathinfo 	_pathInfo�� 	0 child  �� 0 make_with_pathinfo  
�� 
msng�� *j+   *)�,�k+ k+ Y �� �������		���� 0 child_posix  �� ��	�� 	  ���� 0 subpath  ��  	 ������ 0 subpath  �� 
0 a_path  	 ���������� 0 item_exists  �� 0 
posix_path  �� 0 	make_with  
�� 
msng�� #*j+   *j+ E�O��%E�O*�k+ Y �� �������		���� 0 unique_child  �� ��	�� 	  ���� 0 a_candidate  ��  	 �������������� 0 a_candidate  �� 0 
a_basename  �� 0 a_suffix  �� 0 i  �� 0 escape_suffix  �� 0 a_child  	 ��������������������� 0 	is_folder  
�� 
msng�� 0 
split_name  
�� 
cobj�� 	0 child  �� 0 item_exists  
�� 
spac
�� 
utxt�� x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�� ������		���� 0 list_children  ��  ��  	  	 ������ 0 as_furl  
�� .earslfdrutxt  @    file�� *j+  j � ��"����		���� 0 each  �� ��	�� 	  ���� 0 a_script  ��  	 ������������ 0 a_script  �� 
0 a_list  �� 0 listwrapper ListWrapper�� 0 n  �� 
0 x_item  	 	����,	������������ 0 list_children  �� 0 listwrapper ListWrapper	 ��	����		��
�� .ascrinit****      � ****	 k     		 ,����  ��  ��  	 ��
�� 
pcnt	 ��
�� 
pcnt�� b  �
�� .corecnte****       ****
�� 
pcnt
�� 
cobj�� 	0 child  �� 0 do  �� A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��� ��Z���	 	!�~�� 0 perform_shell  �� �}	"�} 	"  �|�| 0 	a_command  �  	  �{�z�{ 0 	a_command  �z 
0 a_path  	! �y�xq�wu�v�y 0 normalized_posix_path  
�x 
strq
�w 
spac
�v .sysoexecTEXT���     TEXT�~ *j+  �,�,E�O��,%�%�%�%j � �u��t�s	#	$�r�u 0 
shell_test  �t �q	%�q 	%  �p�p 
0 option  �s  	# �o�o 
0 option  	$ ��n�m�l�k�j
�n 
spac�m 0 quoted_path  
�l .sysoexecTEXT���     TEXT�k  �j  �r   �%�%*j+ %j W 	X  fOe� �i��h�g	&	'�f�i 0 	deep_copy  �h  �g  	&  	' �e�d�c�e 0 	_pathinfo 	_pathInfo�d 	0 clone  �c 0 make_with_pathinfo  �f *)�,j+ k+ � �b��a�`	(	)�_�b 0 item_ref  �a  �`  	(  	) �^�]�^ 0 	_pathinfo 	_pathInfo�] 0 item_ref  �_ 	)�,j+ � �\��[�Z	*	+�Y�\ !0 check_existance_raising_error  �[  �Z  	*  	+ �X�W�V�U��T�S��X 0 	_pathinfo 	_pathInfo�W 0 item_exists_without_update  
�V 
errn�UF�T 0 as_text  
�S 
strq�Y ")�,j+  )��l�)�,j+ �,%�%Y h� �R��Q�P	,	-�O�R 0 update_pathinfo  �Q  �P  	,  	- �N�M�L�K�J�N 0 	_pathinfo 	_pathInfo�M 0 item_ref  �L 0 prefering_posix  �K 0 is_posix  �J 0 make_with_opts  �O %b  )�,j+ �)�,j+ ll+ )�,FO)�,E� �I��H�G	.	/�F�I 0 dump  �H  �G  	.  	/ �E�D�E 0 	_pathinfo 	_pathInfo�D 0 as_text  �F 	)�,j+ � �C�B�A	0	1�@
�C .ascrcmnt****      � ****�B  �A  	0  	1 �?�>�? 0 dump  
�> .ascrcmnt****      � ****�@ )jd*j+   � �=�<�;	2	3�:�= 	0 debug  �<  �;  	2 �9�8�7�9 
0 a_path  �8 0 a_xfile  �7 0 new_named_file  	3 �6�5�4�3�2�11�0�/�.
�6 .MoloMKloscpt    ��� null
�5 
forM
�4 .MoloBootscpt        scpt
�3 
psxf�2 0 	make_with  �1 0 parent_folder  �0 0 unique_child  �/ 0 	item_name  
�. .ascrcmnt****      � ****�: 2*j  �)l O��&E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
� �->�,�+	4	5�*
�- .aevtoappnull  �   � ****�,  �+  	4 �)�(�) 0 msg  �( 	0 errno  	5 �'�&�%�$	6�#�"
�' .earsffdralis        afdr
�& 
rcIP
�% .HBsushHBTEXT    ��� file�$ 0 msg  	6 �!� �
�! 
errn�  	0 errno  �  
�# 
ret 
�" .sysodisAaleR        TEXT�*   )j  �el W X  ��%�%j  ascr  ��ޭ