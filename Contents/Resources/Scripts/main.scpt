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
vers  m       �    1 . 5      l     ��������  ��  ��        j    �� �� 0 pathinfo PathInfo  I   ������
�� .MoloMkMsMoSp    ��� TEXT��  ��        l     ��������  ��  ��        l      ��   ��    � �!@title XFile Reference
* Version : 1.5* Author : Tetsuro KURITA ((<tkurita@mac.com>))@referencesPathInfo || help:openbook='PathInfo Help'      � ! !  ! @ t i t l e   X F i l e   R e f e r e n c e 
  *   V e r s i o n   :   1 . 5  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) )   @ r e f e r e n c e s  P a t h I n f o   | |   h e l p : o p e n b o o k = ' P a t h I n f o   H e l p '    " # " l     ��������  ��  ��   #  $ % $ j    �� &�� 0 _prefer_posix   & m    ��
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
0 a_file  ��   m    **�                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
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
  �	  � ��� l      ����  � ] W!@abstruct Obtain path extension of the item referenced by the instance.@result text   � ��� � ! @ a b s t r u c t    O b t a i n   p a t h   e x t e n s i o n   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   p s��� I      ���� 0 path_extension  �  �  � L     �� n    ��� n   ��� I    ���� 0 path_extension  �  �  � o    �� 0 	_pathinfo 	_pathInfo�  f     � ��� l     � �����   ��  ��  � ��� l      ������  � ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   t w��� I      �������� 0 volume_name  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 volume_name  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     �    l     ��������  ��  ��    l      ����   $ !@group Working with a Bundle     � < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e    l     ��������  ��  ��   	
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
pnam� n   ��� I    �������� 0 item_ref  ��  ��  �  f    � m    ���                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
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
alis� o      ���� 0 new_item  � m    ���                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� L   # *�� I   # )������� 0 	make_with  � ���� o   $ %���� 0 new_item  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstructMove the item referenced by the instance to specified location.@param a_destination (script object) : a XFile instance referencing the destination to move.@result boolean : true if success.   � ���� ! @ a b s t r u c t  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n .  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s . � ��� i   � ���� I      ������� 0 move_to  � ���� o      ���� 0 a_destination  ��  ��  � k     <�� ��� l    ���� I     �������� 0 item_exists  ��  ��  � G A even if the item exists, broken symbolic file will return false.   � ��� �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .� ��� r    ��� n   ��� I    �������� 0 quoted_path  ��  ��  � o    ���� 0 a_destination  � o      ���� 0 destination_path  � ��� r    ��� I    �������� 0 quoted_path  ��  ��  � o      ���� 0 source_path  � ��� Q    9���� I   $�����
�� .sysoexecTEXT���     TEXT� b     ��� b    ��� b    ��� m    �� ���  m v   - f  � o    ���� 0 source_path  � 1    ��
�� 
spac� o    ���� 0 destination_path  ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 msg  ��  � k   , 9�� ��� O  , 6��� I  0 5�����
�� .ascrcmnt****      � ****� o   0 1���� 0 msg  ��  � 1   , -��
�� 
ascr� ���� L   7 9�� m   7 8��
�� boovfals��  � ���� L   : <�� m   : ;��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l      �� ��   !@abstructResolving original item of a alias file.@descriptionIf the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.@result script object or missing value    �
 ! @ a b s t r u c t  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  @ d e s c r i p t i o n  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e �  i   � � I      �������� 0 resolve_alias  ��  ��   k     ^ 	 Z     #
����
 I     �������� 0 
is_symlink  ��  ��   k      r     I    �������� 0 	deep_copy  ��  ��   o      ���� 0 
x_original   �� Z    �� n    I    �������� 0 item_exists  ��  ��   o    �� 0 
x_original   L     o    �~�~ 0 
x_original  ��   L     m    �}
�} 
msng��  ��  ��  	  l  $ $�|�{�z�|  �{  �z    r   $ + I   $ )�y�x�w�y 0 info  �x  �w   o      �v�v 0 info_rec   �u Z   , ^ !�t"  n   , 0#$# m   - /�s
�s 
alis$ o   , -�r�r 0 info_rec  ! k   3 X%% &'& Q   3 P()*( O   6 F+,+ r   : E-.- c   : C/0/ l  : A1�q�p1 n   : A232 1   ? A�o
�o 
orig3 l  : ?4�n�m4 n  : ?565 I   ; ?�l�k�j�l 0 as_alias  �k  �j  6  f   : ;�n  �m  �q  �p  0 m   A B�i
�i 
alis. o      �h�h 0 original_item  , m   6 777�                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ) R      �g8�f
�g .ascrerr ****      � ****8 o      �e�e 
0 errmsg  �f  * L   N P99 m   N O�d
�d 
msng' :�c: L   Q X;; I   Q W�b<�a�b 0 	make_with  < =�`= o   R S�_�_ 0 original_item  �`  �a  �c  �t  " L   [ ^>> N   [ ]??  f   [ \�u   @A@ l     �^�]�\�^  �]  �\  A BCB l      �[DE�[  D ! !@abstructPut into trash.   E �FF 6 ! @ a b s t r u c t  P u t   i n t o   t r a s h . C GHG i   � �IJI I      �Z�Y�X�Z 0 
into_trash  �Y  �X  J k     KK LML r     NON I     �W�V�U�W 0 as_alias  �V  �U  O o      �T�T 
0 a_file  M PQP O    RSR I   �ST�R
�S .coredeloobj        obj T o    �Q�Q 
0 a_file  �R  S m    	UU�                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  Q V�PV I    �O�N�M�O 0 update_pathinfo  �N  �M  �P  H WXW l     �L�K�J�L  �K  �J  X YZY l      �I[\�I  [ c ]!@abstructRemove the item referd from the target XFile instance.@result script object : me   \ �]] � ! @ a b s t r u c t  R e m o v e   t h e   i t e m   r e f e r d   f r o m   t h e   t a r g e t   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   m e Z ^_^ i   � �`a` I      �H�G�F�H 
0 remove  �G  �F  a k     *bb cdc r     efe I     �E�D�C�E 0 quoted_path  �D  �C  f o      �B�B 
0 a_file  d ghg r    iji n   klk n  	 mnm I    �A�@�?�A 0 as_text  �@  �?  n o   	 �>�> 0 	_pathinfo 	_pathInfol  f    	j o      �=�= 
0 a_path  h opo I   �<q�;
�< .sysoexecTEXT���     TEXTq b    rsr m    tt �uu  r m   - r  s o    �:�: 
0 a_file  �;  p vwv r    !xyx o    �9�9 
0 a_path  y n     z{z n    |}| o     �8�8 0 	_item_ref  } o    �7�7 0 	_pathinfo 	_pathInfo{  f    w ~~ r   " '��� m   " #�6
�6 
msng� n     ��� o   $ &�5�5 0 _inforecord _infoRecord�  f   # $ ��4� L   ( *��  f   ( )�4  _ ��� l     �3�2�1�3  �2  �1  � ��� l      �0���0  �   !@group Making subfolders    � ��� 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  � ��� l     �/�.�-�/  �.  �-  � ��� l      �,���,  � � �!@abstructMake a sub folder.@descriptionmissing value will is returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.@result script object or missing value : a XFile instance of newly created folder.   � ���� ! @ a b s t r u c t  M a k e   a   s u b   f o l d e r .  @ d e s c r i p t i o n  m i s s i n g   v a l u e   w i l l   i s   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 @ p a r a m   f o l d e r _ n a m e   ( t e x t )   :   a   n a m e   o f   n e w   f o l d e r .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . � ��� i   � ���� I      �+��*�+ 0 make_folder  � ��)� o      �(�( 0 folder_name  �)  �*  � k     !�� ��� Z     ���'�&� H     �� l    ��%�$� I     �#�"�!�# 0 item_exists  �"  �!  �%  �$  � L   	 �� m   	 
� 
�  
msng�'  �&  � ��� l   ����  �  �  � ��� r    ��� I    ���� 	0 child  � ��� o    �� 0 folder_name  �  �  � o      �� 0 
new_folder  � ��� L    !�� n    ��� I     ���� 0 	make_path  � ��� J    ��  �  �  � o    �� 0 
new_folder  �  � ��� l     ����  �  �  � ��� l      ����  ���!@abstructMake folders which indicating the path of the XFile instance.@descriptionUsing a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.@result script object or missing value : a XFile instance of newly created folder.   � ��� ! @ a b s t r u c t  M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e .  @ d e s c r i p t i o n  U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . � ��� i   � ���� I      ���� 0 	make_path  � ��� o      �
�
 0 opts  �  �  � k     R�� ��� r     ��� m     �	
�	 boovfals� o      �� 0 w_admin  � ��� Z    ����� =   	��� n    ��� m    �
� 
pcls� o    �� 0 opts  � m    �
� 
reco� r    ��� n    ��� o    �� 0 
with_admin  � o    �� 0 opts  � o      � �  0 w_admin  �  �  � ��� Z    0������� I    �������� 0 item_exists  ��  ��  � Z    ,������ I    #�������� 0 	is_folder  ��  ��  � L   & (��  f   & '��  � m   + ,��
�� 
msng��  ��  � ��� I  1 @����
�� .sysoexecTEXT���     TEXT� b   1 :��� m   1 2�� ���  m k d i r   - p  � l  2 9������ n   2 9��� 1   7 9��
�� 
strq� I   2 7�������� 0 
posix_path  ��  ��  ��  ��  � �����
�� 
badm� o   ; <���� 0 w_admin  ��  � ��� Z  A O������� I   A F�������� 0 item_exists  ��  ��  � L   I K��  f   I J��  ��  � ���� L   P R�� m   P Q��
�� 
msng��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � 0 *!@group Reading and Writing File Contents    � ��� T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  � ��� l     ��������  ��  ��  � ��� l      ������  � X R!@abstructRead file contents as UTF-8 encoded text.@result Unicode text (UTF-8)   � ��� � ! @ a b s t r u c t  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) � ��� i   � ���� I      �������� 0 read_as_utf8  ��  ��  � k     �� ��� I     �������� !0 check_existance_raising_error  ��  ��  �  ��  L     I   ��
�� .rdwrread****        **** l   ���� I    �������� 0 as_alias  ��  ��  ��  ��   ����
�� 
as   m    ��
�� 
utf8��  ��  �  l     ��������  ��  ��   	 l      ��
��  
 u o!@abstructWrite data into the file as UTF-8 encoded text.@param a_data (text) : data to write into the file.    � � ! @ a b s t r u c t  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  @ p a r a m   a _ d a t a   ( t e x t )   :   d a t a   t o   w r i t e   i n t o   t h e   f i l e . 	  i   � � I      ������ 0 write_as_utf8   �� o      ���� 
0 a_data  ��  ��   k     %  r      I    ��
�� .rdwropenshor       file I     �������� 0 as_furl  ��  ��   ����
�� 
perm m    ��
�� boovtrue��   o      ���� 
0 output    I   ��
�� .rdwrseofnull���     **** o    ���� 
0 output   ����
�� 
set2 m    ����  ��    !  I   ��"#
�� .rdwrwritnull���     ****" o    ���� 
0 a_data  # ��$%
�� 
refn$ o    ���� 
0 output  % ��&��
�� 
as  & m    ��
�� 
utf8��  ! '��' I    %��(��
�� .rdwrclosnull���     ****( o     !���� 
0 output  ��  ��   )*) l     ��������  ��  ��  * +,+ l      ��-.��  - " !@group Parent and Children    . �// 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  , 010 l     ��������  ��  ��  1 232 l      ��45��  4 � �!@abstructObtain a folder containing the item referenced by the XFile instance.@result script object : a XFile instance of the parent folder.   5 �66  ! @ a b s t r u c t  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . 3 787 i   � �9:9 I      �������� 0 parent_folder  ��  ��  : L     ;; I     ��<���� 0 make_with_pathinfo  < =��= n   >?> n   @A@ I    �������� 0 parent_folder  ��  ��  A o    ���� 0 	_pathinfo 	_pathInfo?  f    ��  ��  8 BCB l     ��������  ��  ��  C DED l      ��FG��  F!@abstructObtain an item in the folder with specifying a sub path from the target.@descriptionIf this methods is sent to non exsisting folder, missing value is returend.@param suppath(text) :a sub path to obtain.@result script object or missing value : a XFile instance   G �HH& ! @ a b s t r u c t  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  @ d e s c r i p t i o n  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  @ p a r a m   s u p p a t h ( t e x t )   : a   s u b   p a t h   t o   o b t a i n .  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e E IJI i   � �KLK I      ��M���� 	0 child  M N��N o      ���� 0 subpath  ��  ��  L Z     OP��QO I     �������� 0 item_exists_without_update  ��  ��  P L    RR I    ��S���� 0 make_with_pathinfo  S T��T n  	 UVU n  
 WXW I    ��Y���� 	0 child  Y Z��Z o    ���� 0 subpath  ��  ��  X o   
 ���� 0 	_pathinfo 	_pathInfoV  f   	 
��  ��  ��  Q L    [[ m    ��
�� 
msngJ \]\ l     ��������  ��  ��  ] ^_^ i   � �`a` I      �b�~� 0 child_posix  b c�}c o      �|�| 0 subpath  �}  �~  a Z     "de�{fd I     �z�y�x�z 0 item_exists  �y  �x  e k    gg hih r    jkj I    �w�v�u�w 0 
posix_path  �v  �u  k o      �t�t 
0 a_path  i lml r    non b    pqp o    �s�s 
0 a_path  q o    �r�r 0 subpath  o o      �q�q 
0 a_path  m r�pr L    ss I    �ot�n�o 0 	make_with  t u�mu o    �l�l 
0 a_path  �m  �n  �p  �{  f L     "vv m     !�k
�k 
msng_ wxw l     �j�i�h�j  �i  �h  x yzy l     �g�f�e�g  �f  �e  z {|{ l      �d}~�d  }��!@abstructObtain a XFile instance reference unique name item in the folder.@descriptionIf the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.@param a_candidate(text or list) :A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.@result script object : a XFile instance   ~ �T ! @ a b s t r u c t  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  @ d e s c r i p t i o n  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  @ p a r a m   a _ c a n d i d a t e ( t e x t   o r   l i s t )   :  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e | ��� i   � ���� I      �c��b�c 0 unique_child  � ��a� o      �`�` 0 a_candidate  �a  �b  � k     w�� ��� Z     ���_�^� H     �� I     �]�\�[�] 0 	is_folder  �\  �[  � L   	 �� m   	 
�Z
�Z 
msng�_  �^  � ��� r    )��� n   ��� I    �Y��X�Y 0 
split_name  � ��W� o    �V�V 0 a_candidate  �W  �X  � o    �U�U 0 pathinfo PathInfo� J      �� ��� o      �T�T 0 
a_basename  � ��S� o      �R�R 0 a_suffix  �S  � ��� Z   * ;���Q�� =  * -��� o   * +�P�P 0 a_suffix  � m   + ,�O
�O 
msng� r   0 3��� m   0 1�� ���  � o      �N�N 0 a_suffix  �Q  � r   6 ;��� b   6 9��� m   6 7�� ���  .� o   7 8�M�M 0 a_suffix  � o      �L�L 0 a_suffix  � ��� r   < ?��� m   < =�K�K � o      �J�J 0 i  � ��� r   @ C��� m   @ A�� ���  � o      �I�I 0 escape_suffix  � ��� T   D t�� k   I o�� ��� r   I U��� I   I S�H��G�H 	0 child  � ��F� b   J O��� b   J M��� o   J K�E�E 0 
a_basename  � o   K L�D�D 0 escape_suffix  � o   M N�C�C 0 a_suffix  �F  �G  � o      �B�B 0 a_child  � ��A� Z   V o���@�� n  V [��� I   W [�?�>�=�? 0 item_exists  �>  �=  � o   V W�<�< 0 a_child  � k   ^ k�� ��� r   ^ e��� b   ^ c��� 1   ^ _�;
�; 
spac� l  _ b��:�9� c   _ b��� o   _ `�8�8 0 i  � m   ` a�7
�7 
utxt�:  �9  � o      �6�6 0 escape_suffix  � ��5� r   f k��� [   f i��� o   f g�4�4 0 i  � m   g h�3�3 � o      �2�2 0 i  �5  �@  �  S   n o�A  � ��1� L   u w�� o   u v�0�0 0 a_child  �1  � ��� l     �/�.�-�/  �.  �-  � ��� i   � ���� I      �,�+�*�, 0 list_children  �+  �*  � L     
�� I    	�)��(
�) .earslfdrutxt  @    file� I     �'�&�%�' 0 as_furl  �&  �%  �(  � ��� l     �$�#�"�$  �#  �"  � ��� l      �!���!  �<6!@abstruct
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. Each XFile instance in the target folder is passed to the &quot;do&quot; handler.The do handler must return true or false. When the do handler return false, the process is stoped immediately.@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
   � ���l ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .    E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r .  T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y .  @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
� ��� i   � ���� I      � ���  0 each  � ��� o      �� 0 a_script  �  �  � k     @�� ��� r     ��� I     ���� 0 list_children  �  �  � o      �� 
0 a_list  � ��� h    ��� 0 listwrapper ListWrapper� j     ��
� 
pcnt� o     �� 
0 a_list  � ��� l   ����  �  �  � ��� Y    @������ k    ;�� ��� r    +   I    )��� 	0 child   � n    % 4   " %�
� 
cobj o   # $�� 0 n   n    " 1     "�

�
 
pcnt o     �	�	 0 listwrapper ListWrapper�  �   o      �� 
0 x_item  � 	�	 Z   , ;
��
 H   , 3 n  , 2 I   - 2��� 0 do   � o   - .�� 
0 x_item  �  �   o   , -� �  0 a_script    S   6 7�  �  �  � 0 n  � m    ���� � I   ����
�� .corecnte****       **** o    ���� 
0 a_list  ��  �  �  �  l     ��������  ��  ��    l      ����   * $!@group Working with Shell Commands     � H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s    l     ��������  ��  ��    l      ����  	!@abstruct
Run passed shell command taking the target as an argument.
@description
&quot;%s&quot; in the command will be replaced with the target's path.
@param a_command(text) : shell command including %s.
@result text : standard output of the shell command
    � ! @ a b s t r u c t 
 R u n   p a s s e d   s h e l l   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n 
 & q u o t ; % s & q u o t ;   i n   t h e   c o m m a n d   w i l l   b e   r e p l a c e d   w i t h   t h e   t a r g e t ' s   p a t h . 
 @ p a r a m   a _ c o m m a n d ( t e x t )   :   s h e l l   c o m m a n d   i n c l u d i n g   % s . 
 @ r e s u l t   t e x t   :   s t a n d a r d   o u t p u t   o f   t h e   s h e l l   c o m m a n d 
  !  i   � �"#" I      ��$���� 0 perform_shell  $ %��% o      ���� 0 	a_command  ��  ��  # k     && '(' r     )*) n    	+,+ 1    	��
�� 
strq, n    -.- 1    ��
�� 
strq. I     �������� 0 normalized_posix_path  ��  ��  * o      ���� 
0 a_path  ( /��/ L    00 I   ��1��
�� .sysoexecTEXT���     TEXT1 b    232 b    454 b    676 b    898 m    :: �;;  e v a l   $ ( p r i n t f  9 n   <=< 1    ��
�� 
strq= o    ���� 0 	a_command  7 1    ��
�� 
spac5 o    ���� 
0 a_path  3 m    >> �??  )��  ��  ! @A@ l     ��������  ��  ��  A BCB l      ��DE��  D � �!@abstruct
Run test command taking the target as an argument.
@param option(text) : 
An option to passed to the test command. See the man page of the test command.
@result boolean : true if test command successfully exits.
   E �FF� ! @ a b s t r u c t 
 R u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 @ p a r a m   o p t i o n ( t e x t )   :   
 A n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . 
C GHG i   � �IJI I      ��K���� 0 
shell_test  K L��L o      ���� 
0 option  ��  ��  J k     MM NON Q     PQRP I   ��S��
�� .sysoexecTEXT���     TEXTS b    TUT b    VWV b    XYX m    ZZ �[[ 
 t e s t  Y o    ���� 
0 option  W 1    ��
�� 
spacU I    �������� 0 quoted_path  ��  ��  ��  Q R      ������
�� .ascrerr ****      � ****��  ��  R L    \\ m    ��
�� boovfalsO ]��] L    ^^ m    ��
�� boovtrue��  H _`_ l     ��������  ��  ��  ` aba l      ��cd��  c  == private *   d �ee  = =   p r i v a t e   *b fgf l     ��������  ��  ��  g hih i   � �jkj I      �������� 0 	deep_copy  ��  ��  k L     ll I     ��m���� 0 make_with_pathinfo  m n��n n   opo n   qrq I    �������� 	0 clone  ��  ��  r o    ���� 0 	_pathinfo 	_pathInfop  f    ��  ��  i sts l     ��������  ��  ��  t uvu i   � �wxw I      �������� 0 item_ref  ��  ��  x L     yy n    z{z n   |}| I    �������� 0 item_ref  ��  ��  } o    ���� 0 	_pathinfo 	_pathInfo{  f     v ~~ l     ��������  ��  ��   ��� i   � ���� I      �������� !0 check_existance_raising_error  ��  ��  � Z     !������� H     �� l    ������ n    ��� n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     ��  ��  � R    ����
�� .ascrerr ****      � ****� b    ��� b    ��� m    �� ��� 
 i t e m  � n    ��� 1    ��
�� 
strq� l   ������ n   ��� n   ��� I    �������� 0 as_text  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  � m    �� ���     d o e s   n o t   e x i s t .� �����
�� 
errn� m    ����F��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 update_pathinfo  ��  ��  � k     $�� ��� r     ��� n    ��� I    ������� 0 make_with_opts  � ��� n   ��� n   ��� I    �������� 0 item_ref  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    � ���� K    �� ������� 0 prefering_posix  � n   ��� n   ��� I    �������� 0 is_posix  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  ��  � o     ���� 0 pathinfo PathInfo� n     ��� o    ���� 0 	_pathinfo 	_pathInfo�  f    � ���� L    $�� n   #��� o     "���� 0 	_pathinfo 	_pathInfo�  f     ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ��~�}� 0 dump  �~  �}  � L     �� n    ��� n   ��� I    �|�{�z�| 0 as_text  �{  �z  � o    �y�y 0 	_pathinfo 	_pathInfo�  f     � ��� l     �x�w�v�x  �w  �v  � ��� i   � ���� I     �u�t�s
�u .ascrcmnt****      � ****�t  �s  � M     �� I     �r��q
�r .ascrcmnt****      � ****� I    �p�o�n�p 0 dump  �o  �n  �q  � ��� l     �m�l�k�m  �l  �k  � ��� i   � ���� I      �j�i�h�j 	0 debug  �i  �h  � k     2�� ��� I    �g��
�g .MoloBootscpt        scpt� l    ��f�e� I    �d�c�b
�d .MoloMKloscpt    ��� null�c  �b  �f  �e  � �a��`
�a 
forM�  f    �`  � ��� r    ��� 4    �_�
�_ 
psxf� m    �� ��� F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d f� o      �^�^ 
0 a_path  � ��� r    ��� I    �]��\�] 0 	make_with  � ��[� o    �Z�Z 
0 a_path  �[  �\  � o      �Y�Y 0 a_xfile  � ��� l   �X���X  � K Ereturn a_result's change_path_extension(missing value)'s posix_path()   � ��� � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )� ��� r    (��� n   &��� I   ! &�W��V�W 0 unique_child  � ��U� m   ! "�� ��� : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f�U  �V  � n   !��� I    !�T�S�R�T 0 parent_folder  �S  �R  � o    �Q�Q 0 a_xfile  � o      �P�P 0 new_named_file  � ��O� I  ) 2�N��M
�N .ascrcmnt****      � ****� n  ) .� � I   * .�L�K�J�L 0 	item_name  �K  �J    o   ) *�I�I 0 new_named_file  �M  �O  �  l     �H�G�F�H  �G  �F    i   � � I     �E�D�C
�E .aevtoappnull  �   � ****�D  �C   k      	 l     �B
�B  
  return debug()    �  r e t u r n   d e b u g ( )	 �A Q      I   �@
�@ .HBsushHBTEXT    ��� file l   �?�> I   �=�<
�= .earsffdralis        afdr  f    �<  �?  �>   �;�:
�; 
rcIP m   	 
�9
�9 boovtrue�:   R      �8
�8 .ascrerr ****      � **** o      �7�7 0 msg   �6�5
�6 
errn o      �4�4 	0 errno  �5   I   �3�2
�3 .sysodisAaleR        TEXT l   �1�0 b     b     o    �/�/ 0 msg   o    �.
�. 
ret  o    �-�- 	0 errno  �1  �0  �2  �A   �, l     �+�*�)�+  �*  �)  �,       B�(   !�'"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]�(    @�&�%�$�#�"�!� ����������������������
�	��������� ��������������������������������������������������
�& 
pnam
�% 
vers�$ 0 pathinfo PathInfo�# 0 _prefer_posix  �" 0 prefer_posix  �! 0 	make_with  �  0 make_with_pathinfo  � 0 change_name  � 0 change_folder  � 0 change_path_extension  � 0 as_alias  � 0 as_furl  � 0 hfs_path  � 0 
posix_path  � 0 normalized_posix_path  � 0 quoted_path  � 0 	is_folder  � 0 
is_package  � 0 is_alias  � 0 
is_symlink  � 0 
is_visible  � 0 type_identifier  � 0 	set_types  � 0 info  � 0 info_with_size  � 0 re_info  � 0 	item_name  � 0 basename  �
 0 path_extension  �	 0 volume_name  � 0 bundle_resource  � $0 bundle_infoplist bundle_InfoPlist� 0 bundle_resources_folder  � 0 item_exists  � 0 item_exists_without_update  
� .coredoexbool       obj � 0 	rename_to  � 0 copy_to  �  0 copy_with_opts  �� 0 finder_copy_to  �� 0 move_to  �� 0 resolve_alias  �� 0 
into_trash  �� 
0 remove  �� 0 make_folder  �� 0 	make_path  �� 0 read_as_utf8  �� 0 write_as_utf8  �� 0 parent_folder  �� 	0 child  �� 0 child_posix  �� 0 unique_child  �� 0 list_children  �� 0 each  �� 0 perform_shell  �� 0 
shell_test  �� 0 	deep_copy  �� 0 item_ref  �� !0 check_existance_raising_error  �� 0 update_pathinfo  �� 0 dump  
�� .ascrcmnt****      � ****�� 	0 debug  
�� .aevtoappnull  �   � ****! ������
�� 
pcls
�� 
MoSp��  
�' boovtrue" �� ,����^_���� 0 prefer_posix  �� ��`�� `  ���� 0 bool  ��  ^ ���� 0 bool  _ ���� 0 _prefer_posix  �� �)�,F# �� D����ab���� 0 	make_with  �� ��c�� c  ���� 0 file_ref  ��  a �������� 0 file_ref  �� 
0 is_hfs  �� 0 	path_info  b 	�������� `��������
�� 
ctxt
�� 
utxt
�� 
TEXT
�� 
pcls�� 0 make_with_hfs  �� 0 _prefer_posix  �� 0 make_with_posix  �� 0 make_with_pathinfo  �� YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ $ �� �����de���� 0 make_with_pathinfo  �� ��f�� f  ���� 0 	path_info  ��  d �������� 0 	path_info  �� 0 a_parent  �� 0 xfile XFilee �� �g�� 0 xfile XFileg ��h����ij��
�� .ascrinit****      � ****h k      kk  �ll  �mm  �nn  �oo  �����  ��  ��  i ����������
�� 
pare�� 0 	_pathinfo 	_pathInfo�� 0 _inforecord _infoRecord�� 0 _prefer_posix  �� 0 _is_symlink  j ��������������
�� 
pare�� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� 0 _is_symlink  �� !b  N  Ob   �O�Ob   j+ �O��� )E�O��K S�O�% �� �����pq���� 0 change_name  �� ��r�� r  ���� 
0 a_name  ��  p ������ 
0 a_name  �� 0 	path_info  q �������� 0 	_pathinfo 	_pathInfo�� 0 change_name  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ & �� �����st���� 0 change_folder  �� ��u�� u  ���� 0 
folder_ref  ��  s ������ 0 
folder_ref  �� 0 	path_info  t �������� 0 	_pathinfo 	_pathInfo�� 0 change_folder  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ ' �� �����vw���� 0 change_path_extension  �� ��x�� x  ���� 0 a_suffix  ��  v ���� 0 a_suffix  w �������� 0 	_pathinfo 	_pathInfo�� 0 change_path_extension  �� 0 make_with_pathinfo  �� *)�,�k+ k+ ( ������yz���� 0 as_alias  ��  ��  y  z �������� !0 check_existance_raising_error  �� 0 	_pathinfo 	_pathInfo�� 0 as_alias  �� *j+  O)�,j+ ) ��)����{|���� 0 as_furl  ��  ��  {  | ������ 0 	_pathinfo 	_pathInfo�� 0 as_furl  �� 	)�,j+ * ��9����}~��� 0 hfs_path  ��  ��  }  ~ �~�}�~ 0 	_pathinfo 	_pathInfo�} 0 hfs_path  � 	)�,j+ + �|I�{�z��y�| 0 
posix_path  �{  �z    � �x�w�x 0 	_pathinfo 	_pathInfo�w 0 
posix_path  �y 	)�,j+ , �vY�u�t���s�v 0 normalized_posix_path  �u  �t  �  � �r�q�r 0 	_pathinfo 	_pathInfo�q 0 normalized_posix_path  �s 	)�,j+ - �pd�o�n���m�p 0 quoted_path  �o  �n  �  � �l�k�j�l 0 	_pathinfo 	_pathInfo�k 0 
posix_path  
�j 
strq�m )�,j+ �,E. �i}�h�g���f�i 0 	is_folder  �h  �g  � �e�e 0 info_rec  � �d�c�d 0 info  
�c 
asdr�f *j+  E�O��,E/ �b��a�`���_�b 0 
is_package  �a  �`  � �^�^ 0 info_rec  � �]�\�] 0 info  
�\ 
ispk�_ *j+  E�O��,E0 �[��Z�Y���X�[ 0 is_alias  �Z  �Y  � �W�W 0 info_rec  � �V�U�V 0 info  
�U 
alis�X *j+  E�O��,E1 �T��S�R���Q�T 0 
is_symlink  �S  �R  �  � �P�O��N�M�L�K�P 0 _is_symlink  
�O 
msng�N 0 quoted_path  
�M .sysoexecTEXT���     TEXT�L  �K  �Q 4)�,�  & �*j+ %j Oe)�,FW X  f)�,FY hO)�,E2 �J��I�H���G�J 0 
is_visible  �I  �H  � �F�F 0 info_rec  � �E�D�E 0 info  
�D 
pvis�G *j+  E�O��,E3 �C��B�A���@�C 0 type_identifier  �B  �A  � �?�? 0 info_rec  � �>�=�> 0 info  
�= 
utid�@ *j+  E�O��,E4 �<�;�:���9�< 0 	set_types  �; �8��8 �  �7�6�7 0 creator_code  �6 0 	type_code  �:  � �5�4�3�5 0 creator_code  �4 0 	type_code  �3 
0 a_file  � �2�1*�0�/�.�-�2 0 	is_folder  �1 0 as_alias  
�0 
fcrt
�/ 
asty
�. 
msng�- 0 _inforecord _infoRecord�9 ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h5 �,:�+�*���)�, 0 info  �+  �*  �  � �(�'�&�%�$�#�( 0 _inforecord _infoRecord
�' 
msng�& !0 check_existance_raising_error  �% 0 as_furl  
�$ 
ptsz
�# .sysonfo4asfe        file�) ()�,�  *j+ O*j+ �fl )�,FY hO)�,E6 �"]�!� ����" 0 info_with_size  �!  �   �  � ������� 0 _inforecord _infoRecord
� 
msng� !0 check_existance_raising_error  � 0 as_furl  
� 
ptsz
� .sysonfo4asfe        file� D)�,�  *j+ O*j+ �el )�,FY )�,�,�  *j+ �el )�,FY hO)�,E7 �������� 0 re_info  �  �  �  � ������� 0 _inforecord _infoRecord
� 
msng
� 
ptsz
� 
bool� 0 as_furl  
� .sysonfo4asfe        file� <)�,�	 )�,�,��& *j+ �el )�,FY *j+ �fl )�,FO)�,E8 �������� 0 	item_name  �  �  �  � �
�	�
 0 	_pathinfo 	_pathInfo�	 0 	item_name  � 	)�,j+ 9 �������� 0 basename  �  �  �  � ��� 0 	_pathinfo 	_pathInfo� 0 basename  � 	)�,j+ : ���� ����� 0 path_extension  �  �   �  � ������ 0 	_pathinfo 	_pathInfo�� 0 path_extension  �� 	)�,j+ ; ������������� 0 volume_name  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 volume_name  �� 	)�,j+ < ������������ 0 bundle_resource  �� ����� �  ���� 0 resource_name  ��  � ���� 0 resource_name  � ��������
�� 
in B�� 0 as_alias  
�� .sysorpthalis        TEXT�� 0 	make_with  �� *��*j+ l k+ = ��%���������� $0 bundle_infoplist bundle_InfoPlist��  ��  �  � )���� 0 child_posix  �� *�k+ > ��0���������� 0 bundle_resources_folder  ��  ��  �  � 4���� 0 child_posix  �� *�k+ ? ��G���������� 0 item_exists  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 item_exists  �� 	)�,j+ @ ��W���������� 0 item_exists_without_update  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  �� 	)�,j+ A ��g��������
�� .coredoexbool       obj ��  ��  �  � ���� 0 item_exists  �� *j+  B ��s���������� 0 	rename_to  �� ����� �  ���� 0 new_name  ��  � ���� 0 new_name  � ����������������� 0 item_exists  �� 0 item_ref  
�� 
pnam
�� 
msng�� 0 _inforecord _infoRecord�� 0 	_pathinfo 	_pathInfo�� 0 set_name  �� 1*j+   fY hO� �)j+ �,FUO�)�,FO)�,�k+ OeC ������������� 0 copy_to  �� ����� �  ���� 0 a_destination  ��  � ���� 0 a_destination  � ����
�� 
msng�� 0 copy_with_opts  �� 	*��l+ D ������������� 0 copy_with_opts  �� ����� �  ������ 0 a_destination  �� 0 opts  ��  � ������������������������ 0 a_destination  �� 0 opts  �� 0 w_replacing  �� 0 w_admin  �� 0 
w_removing  �� 0 command  �� 0 com_opts  �� 0 is_folder_to  �� 0 destination_path  �� 0 source_path  �� 0 	a_command  � ���������������������������6=FLQ����g��������������
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
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�E ������������� 0 finder_copy_to  �� ����� �  ������ 0 a_destination  �� 0 with_replacing  ��  � ������������ 0 a_destination  �� 0 with_replacing  �� 0 destination  �� 0 source_alias  �� 0 new_item  � ���������������� 0 as_alias  
�� 
insh
�� 
alrp�� 
�� .coreclon****      � ****
�� 
alis� 0 	make_with  �� +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ F �~��}�|���{�~ 0 move_to  �} �z��z �  �y�y 0 a_destination  �|  � �x�w�v�u�x 0 a_destination  �w 0 destination_path  �v 0 source_path  �u 0 msg  � 	�t�s��r�q�p�o�n�m�t 0 item_exists  �s 0 quoted_path  
�r 
spac
�q .sysoexecTEXT���     TEXT�p 0 msg  �o  
�n 
ascr
�m .ascrcmnt****      � ****�{ =*j+  O�j+ E�O*j+ E�O �%�%�%j W X  � �j UOfOeG �l�k�j���i�l 0 resolve_alias  �k  �j  � �h�g�f�e�h 0 
x_original  �g 0 info_rec  �f 0 original_item  �e 
0 errmsg  � �d�c�b�a�`�_7�^�]�\�[�Z�d 0 
is_symlink  �c 0 	deep_copy  �b 0 item_exists  
�a 
msng�` 0 info  
�_ 
alis�^ 0 as_alias  
�] 
orig�\ 
0 errmsg  �[  �Z 0 	make_with  �i _*j+   *j+ E�O�j+  �Y �Y hO*j+ E�O��,E * � )j+ �,�&E�UW 	X 	 
�O*�k+ Y )H �YJ�X�W���V�Y 0 
into_trash  �X  �W  � �U�U 
0 a_file  � �TU�S�R�T 0 as_alias  
�S .coredeloobj        obj �R 0 update_pathinfo  �V *j+  E�O� �j UO*j+ I �Qa�P�O���N�Q 
0 remove  �P  �O  � �M�L�M 
0 a_file  �L 
0 a_path  � �K�J�It�H�G�F�E�K 0 quoted_path  �J 0 	_pathinfo 	_pathInfo�I 0 as_text  
�H .sysoexecTEXT���     TEXT�G 0 	_item_ref  
�F 
msng�E 0 _inforecord _infoRecord�N +*j+  E�O)�,j+ E�O�%j O�)�,�,FO�)�,FO)J �D��C�B���A�D 0 make_folder  �C �@��@ �  �?�? 0 folder_name  �B  � �>�=�> 0 folder_name  �= 0 
new_folder  � �<�;�:�9�< 0 item_exists  
�; 
msng�: 	0 child  �9 0 	make_path  �A "*j+   �Y hO*�k+ E�O�jvk+ K �8��7�6���5�8 0 	make_path  �7 �4��4 �  �3�3 0 opts  �6  � �2�1�2 0 opts  �1 0 w_admin  � �0�/�.�-�,�+��*�)�(�'
�0 
pcls
�/ 
reco�. 0 
with_admin  �- 0 item_exists  �, 0 	is_folder  
�+ 
msng�* 0 
posix_path  
�) 
strq
�( 
badm
�' .sysoexecTEXT���     TEXT�5 SfE�O��,�  
��,E�Y hO*j+  *j+  )Y �Y hO�*j+ �,%�l 
O*j+  )Y hO�L �&��%�$���#�& 0 read_as_utf8  �%  �$  �  � �"�!� ���" !0 check_existance_raising_error  �! 0 as_alias  
�  
as  
� 
utf8
� .rdwrread****        ****�# *j+  O*j+ ��l M ������� 0 write_as_utf8  � ��� �  �� 
0 a_data  �  � ��� 
0 a_data  � 
0 output  � ������������ 0 as_furl  
� 
perm
� .rdwropenshor       file
� 
set2
� .rdwrseofnull���     ****
� 
refn
� 
as  
� 
utf8� 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****� &*j+  �el E�O��jl O����� 	O�j 
N �
:�	�����
 0 parent_folder  �	  �  �  � ���� 0 	_pathinfo 	_pathInfo� 0 parent_folder  � 0 make_with_pathinfo  � *)�,j+ k+ O �L����� � 	0 child  � ����� �  ���� 0 subpath  �  � ���� 0 subpath  � ������������ 0 item_exists_without_update  �� 0 	_pathinfo 	_pathInfo�� 	0 child  �� 0 make_with_pathinfo  
�� 
msng�  *j+   *)�,�k+ k+ Y �P ��a���������� 0 child_posix  �� ����� �  ���� 0 subpath  ��  � ������ 0 subpath  �� 
0 a_path  � ���������� 0 item_exists  �� 0 
posix_path  �� 0 	make_with  
�� 
msng�� #*j+   *j+ E�O��%E�O*�k+ Y �Q ������������� 0 unique_child  �� ����� �  ���� 0 a_candidate  ��  � �������������� 0 a_candidate  �� 0 
a_basename  �� 0 a_suffix  �� 0 i  �� 0 escape_suffix  �� 0 a_child  � ��������������������� 0 	is_folder  
�� 
msng�� 0 
split_name  
�� 
cobj�� 	0 child  �� 0 item_exists  
�� 
spac
�� 
utxt�� x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�R ������������� 0 list_children  ��  ��  �  � ������ 0 as_furl  
�� .earslfdrutxt  @    file�� *j+  j S ������������� 0 each  �� ����� �  ���� 0 a_script  ��  � ������������ 0 a_script  �� 
0 a_list  �� 0 listwrapper ListWrapper�� 0 n  �� 
0 x_item  � 	������������������ 0 list_children  �� 0 listwrapper ListWrapper� �����������
�� .ascrinit****      � ****� k     �� �����  ��  ��  � ��
�� 
pcnt� ��
�� 
pcnt�� b  �
�� .corecnte****       ****
�� 
pcnt
�� 
cobj�� 	0 child  �� 0 do  �� A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��T ��#���������� 0 perform_shell  �� ����� �  ���� 0 	a_command  ��  � ������ 0 	a_command  �� 
0 a_path  � ����:��>���� 0 normalized_posix_path  
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� *j+  �,�,E�O��,%�%�%�%j U ��J���������� 0 
shell_test  �� ����� �  ���� 
0 option  ��  � ���� 
0 option  � Z����������
�� 
spac�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  ��   �%�%*j+ %j W 	X  fOeV ��k���������� 0 	deep_copy  ��  ��  �  � �������� 0 	_pathinfo 	_pathInfo�� 	0 clone  �� 0 make_with_pathinfo  �� *)�,j+ k+ W ��x���������� 0 item_ref  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 	)�,j+ X ������������� !0 check_existance_raising_error  ��  ��  �  � ���������������� 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  
�� 
errn��F�� 0 as_text  
�� 
strq�� ")�,j+  )��l�)�,j+ �,%�%Y hY ������������� 0 update_pathinfo  ��  ��  �  � ������������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 prefering_posix  �� 0 is_posix  �� 0 make_with_opts  �� %b  )�,j+ �)�,j+ ll+ )�,FO)�,EZ �����~���}�� 0 dump  �  �~  �  � �|�{�| 0 	_pathinfo 	_pathInfo�{ 0 as_text  �} 	)�,j+ [ �z��y�x���w
�z .ascrcmnt****      � ****�y  �x  �  � �v�u�v 0 dump  
�u .ascrcmnt****      � ****�w )jd*j+   \ �t��s�r���q�t 	0 debug  �s  �r  � �p�o�n�p 
0 a_path  �o 0 a_xfile  �n 0 new_named_file  � �m�l�k�j��i�h��g�f�e
�m .MoloMKloscpt    ��� null
�l 
forM
�k .MoloBootscpt        scpt
�j 
psxf�i 0 	make_with  �h 0 parent_folder  �g 0 unique_child  �f 0 	item_name  
�e .ascrcmnt****      � ****�q 3*j  �)l O)��/E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
] �d�c�b���a
�d .aevtoappnull  �   � ****�c  �b  � �`�_�` 0 msg  �_ 	0 errno  � �^�]�\�[��Z�Y
�^ .earsffdralis        afdr
�] 
rcIP
�\ .HBsushHBTEXT    ��� file�[ 0 msg  � �X�W�V
�X 
errn�W 	0 errno  �V  
�Z 
ret 
�Y .sysodisAaleR        TEXT�a   )j  �el W X  ��%�%j ascr  ��ޭ