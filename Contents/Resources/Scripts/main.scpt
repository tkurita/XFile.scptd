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
vers  m       �    1 . 5 b      l     ��������  ��  ��        j    �� �� 0 pathinfo PathInfo  I   ������
�� .MoloMkMsMoSp    ��� TEXT��  ��        l     ��������  ��  ��        l      ��   ��    � �!@title XFile Reference
* Version : 1.5b* Author : Tetsuro KURITA ((<tkurita@mac.com>))@referencesPathInfo || help:openbook='PathInfo Help'      � ! !" ! @ t i t l e   X F i l e   R e f e r e n c e 
  *   V e r s i o n   :   1 . 5 b  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) )   @ r e f e r e n c e s  P a t h I n f o   | |   h e l p : o p e n b o o k = ' P a t h I n f o   H e l p '    " # " l     ��������  ��  ��   #  $ % $ j    �� &�� 0 _prefer_posix   & m    ��
�� boovtrue %  ' ( ' l     ��������  ��  ��   (  ) * ) i     + , + I      �� -���� 0 prefer_posix   -  .�� . o      ���� 0 bool  ��  ��   , r      / 0 / o     ���� 0 bool   0 n      1 2 1 o    ���� 0 _prefer_posix   2  f     *  3 4 3 l     ��������  ��  ��   4  5 6 5 l      �� 7 8��   7 � �!@group Constractors<!-- begin locale ja -->�N���X�I�u�W�F�N�g����w�肵���t�@�C�����Q�Ƃ��� XFile �̃C���X�^���X�����܂��B<!-- begin locale en -->Making a new instance with a reference to a file from a class object.<!-- end locale -->    8 � 9 9� ! @ g r o u p   C o n s t r a c t o r s  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0�0K0�c[�0W0_0�0�0�0�0�S�qg0W0_   X F i l e  0n0�0�0�0�0�0�0�O\0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k i n g   a   n e w   i n s t a n c e   w i t h   a   r e f e r e n c e   t o   a   f i l e   f r o m   a   c l a s s   o b j e c t .  < ! - -   e n d   l o c a l e   - - >  6  : ; : l     ��������  ��  ��   ;  < = < l      �� > ?��   >��!@abstruct <!-- begin locale ja -->�t�@�C���̎Q�Ƃ��� XFile �̃C���X�^���X�����܂��B<!-- begin locale en -->Make a XFile instance with a file reference<!-- end locale -->@description<!-- begin locale ja -->�t�@�C���ւ̎Q�ƂƂ��āAHFS/POSIX �`���̃p�X�������������alias, File URL���󂯕t���܂��B<!-- begin locale en -->HFS/POSIX path, alias and file URL can be accepted as file specification.<!-- end locale -->@param file_ref (alias or Unicode text) : <!-- begin locale ja -->HFS/POSIX �`���̃p�X�������������alias�AFile URL<!-- begin locale en -->a HFS/POSIX path, alias or File URL<!-- end locale -->@result script object : a new instance of XFile    ? � @ @� ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0nS�qg0K0�   X F i l e  0n0�0�0�0�0�0�0�O\0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   a   X F i l e   i n s t a n c e   w i t h   a   f i l e   r e f e r e n c e  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0x0nS�qg0h0W0f0 H F S / P O S I X  _b_0n0�0�e�[WR0�0W0O0o a l i a s ,   F i l e   U R L0�S�0QN�0Q0~0Y0   < ! - -   b e g i n   l o c a l e   e n   - - >  H F S / P O S I X   p a t h ,   a l i a s   a n d   f i l e   U R L   c a n   b e   a c c e p t e d   a s   f i l e   s p e c i f i c a t i o n .   < ! - -   e n d   l o c a l e   - - >  @ p a r a m   f i l e _ r e f   ( a l i a s   o r   U n i c o d e   t e x t )   :    < ! - -   b e g i n   l o c a l e   j a   - - > H F S / P O S I X  _b_0n0�0�e�[WR0�0W0O0o a l i a s0 F i l e   U R L  < ! - -   b e g i n   l o c a l e   e n   - - > a   H F S / P O S I X   p a t h ,   a l i a s   o r   F i l e   U R L  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  =  A B A i     C D C I      �� E���� 0 	make_with   E  F�� F o      ���� 0 file_ref  ��  ��   D k     X G G  H I H r      J K J m     ��
�� boovfals K o      ���� 
0 is_hfs   I  L M L Z     N O���� N E    P Q P J    	 R R  S T S m    ��
�� 
ctxt T  U V U m    ��
�� 
utxt V  W�� W m    ��
�� 
TEXT��   Q n   	  X Y X 1   
 ��
�� 
pcls Y o   	 
���� 0 file_ref   O r     Z [ Z l    \���� \ H     ] ] C     ^ _ ^ o    ���� 0 file_ref   _ m     ` ` � a a  /��  ��   [ o      ���� 
0 is_hfs  ��  ��   M  b c b Z    P d e f g d o    ���� 
0 is_hfs   e r    + h i h n   ) j k j I   $ )�� l���� 0 make_with_hfs   l  m�� m o   $ %���� 0 file_ref  ��  ��   k o    $���� 0 pathinfo PathInfo i o      ���� 0 	path_info   f  n o n n  . 2 p q p o   / 1���� 0 _prefer_posix   q  f   . / o  r�� r r   5 A s t s n  5 ? u v u I   : ?�� w���� 0 make_with_posix   w  x�� x o   : ;���� 0 file_ref  ��  ��   v o   5 :���� 0 pathinfo PathInfo t o      ���� 0 	path_info  ��   g r   D P y z y n  D N { | { I   I N�� }���� 0 make_with_hfs   }  ~�� ~ o   I J���� 0 file_ref  ��  ��   | o   D I���� 0 pathinfo PathInfo z o      ���� 0 	path_info   c   �  l  Q Q��������  ��  ��   �  ��� � L   Q X � � I   Q W�� ����� 0 make_with_pathinfo   �  ��� � o   R S���� 0 	path_info  ��  ��  ��   B  � � � l     ��������  ��  ��   �  � � � l      �� � ���   ���!@abstruct<!-- begin locale ja -->((<PathInfo>)) �̕Ԃ�l���� XFile �̃C���X�^���X�𐶐����܂��B<!-- begin locale en -->Make a new instance with a record returned by ((<PathInfo>))<!-- end locale -->@param path_record (record) :<!-- begin locale ja -->PathInfo �̕Ԃ�l<!-- begin locale en -->a result of PathInfo<!-- end locale -->@result script object : a new instance of XFile     � � � �� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - >  ( ( < P a t h I n f o > ) )  0n��0�P$0K0�   X F i l e  0n0�0�0�0�0�0�0�ub0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   a   n e w   i n s t a n c e   w i t h   a   r e c o r d   r e t u r n e d   b y   ( ( < P a t h I n f o > ) )  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   p a t h _ r e c o r d   ( r e c o r d )   :  < ! - -   b e g i n   l o c a l e   j a   - - > P a t h I n f o  0n��0�P$  < ! - -   b e g i n   l o c a l e   e n   - - > a   r e s u l t   o f   P a t h I n f o  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e    �  � � � i     � � � I      �� ����� 0 make_with_pathinfo   �  ��� � o      ���� 0 	path_info  ��  ��   � k      � �  � � � r      � � �  f      � o      ���� 0 a_parent   �  � � � h    �� ��� 0 xfile XFile � k       � �  � � � j     �� �
�� 
pare � o     ���� 0 a_parent   �  � � � j   	 �� ��� 0 	_pathinfo 	_pathInfo � o   	 ���� 0 	path_info   �  � � � j    �� ��� 0 _inforecord _infoRecord � m    ��
�� 
msng �  � � � j    �� ��� 0 _prefer_posix   � n    � � � I    �������� 0 is_posix  ��  ��   � o    ���� 0 	path_info   �  ��� � j     �� ��� 0 _is_symlink   � m    ��
�� 
msng��   �  ��� � L     � � o    ���� 0 xfile XFile��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �%!@group Make a New Instance with Changing Contents of an Instance<!-- begin locale ja -->�����̃C���X�^���X�̈ꕔ�̓��e��ύX���āA�V�����C���X�^���X�𐶐����܂��B<!-- begin locale en -->Making a new XFile instance with changing a part of the exisiting instance.<!-- end locale -->    � � � �� ! @ g r o u p   M a k e   a   N e w   I n s t a n c e   w i t h   C h a n g i n g   C o n t e n t s   o f   a n   I n s t a n c e  < ! - -   b e g i n   l o c a l e   j a   - - > e�[X0n0�0�0�0�0�0�0nN ��0nQ�[�0�Y	f�0W0f0e�0W0D0�0�0�0�0�0�0�ub0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k i n g   a   n e w   X F i l e   i n s t a n c e   w i t h   c h a n g i n g   a   p a r t   o f   t h e   e x i s i t i n g   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   ���!@abstruct<!-- begin locale ja -->�Q�Ƃ���t�@�C���̃t�@�C������ύX���� XFile ������܂��B<!-- begin locale en -->Make a new instance with changing file name of the instance<!-- end locale -->@param a_name (Unicode text or string) : <!-- begin locale ja -->�Q�Ƃ������t�@�C����<!-- begin locale en -->a file name<!-- end locale -->@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S�qg0Y0�0�0�0�0�0n0�0�0�0�T0�Y	f�0W0_   X F i l e  0�0d0O0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f i l e   n a m e   o f   t h e   i n s t a n c e  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :    < ! - -   b e g i n   l o c a l e   j a   - - >S�qg0W0_0D0�0�0�0�T  < ! - -   b e g i n   l o c a l e   e n   - - > a   f i l e   n a m e  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i     � � � I      �� ����� 0 change_name   �  ��� � o      ���� 
0 a_name  ��  ��   � k      � �  � � � r     
 � � � n     � � � n    � � � I    � ��~� 0 change_name   �  ��} � o    �|�| 
0 a_name  �}  �~   � o    �{�{ 0 	_pathinfo 	_pathInfo �  f      � o      �z�z 0 	path_info   �  ��y � L     � � I    �x ��w�x 0 make_with_pathinfo   �  ��v � o    �u�u 0 	path_info  �v  �w  �y   �  � � � l     �t�s�r�t  �s  �r   �  � � � l      �q � ��q   ���!@abstruct<!-- begin locale ja -->�Q�Ƃ���t�@�C���̃t�H���_��ύX���� XFile ������܂��B<!-- begin locale en -->Make a new instance with changing folder of the instance<!-- end locale -->@param a_name (alias, Unicode text, file URL, file specification) :<!-- begin locale ja -->�t�H���_�ւ̎Q��<!-- begin locale en -->a reference to folder<!-- end locale -->@result script object : a new instance of XFile    � � � � ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S�qg0Y0�0�0�0�0�0n0�0�0�0�0�Y	f�0W0_   X F i l e  0�0d0O0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f o l d e r   o f   t h e   i n s t a n c e  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ n a m e   ( a l i a s ,   U n i c o d e   t e x t ,   f i l e   U R L ,   f i l e   s p e c i f i c a t i o n )   :  < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0x0nS�qg  < ! - -   b e g i n   l o c a l e   e n   - - > a   r e f e r e n c e   t o   f o l d e r  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i     # � � � I      �p ��o�p 0 change_folder   �  ��n � o      �m�m 0 
folder_ref  �n  �o   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �l ��k�l 0 change_folder   �  ��j � o    �i�i 0 
folder_ref  �j  �k   � o    �h�h 0 	_pathinfo 	_pathInfo �  f      � o      �g�g 0 	path_info   �  ��f � L     � � I    �e ��d�e 0 make_with_pathinfo   �  ��c � o    �b�b 0 	path_info  �c  �d  �f   �  � � � l     �a�`�_�a  �`  �_   �  � � � l      �^ � ��^   ���!@abstruct<!-- begin locale ja -->�Q�Ƃ���t�@�C���̊g���q��ύX���� XFile ������܂��B<!-- begin locale en -->Make a new instance with changing path extension of the instance<!-- end locale -->@param a_name (Unicode text or string) :<!-- begin locale ja -->�t�@�C���̊g���q�B�h�b�h "." �Ŏn�܂��Ă���K�v������܂��B<!-- begin locale en -->path extension, should be starts with a dot ".".<!-- end locale -->@result script object : a new instance of XFile    � � � �B ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S�qg0Y0�0�0�0�0�0nb�_5[P0�Y	f�0W0_   X F i l e  0�0d0O0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   p a t h   e x t e n s i o n   o f   t h e   i n s t a n c e  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :  < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0nb�_5[P00�0�0�   " . "  0gY�0~0c0f0D0�_ŉ�0L0B0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - > p a t h   e x t e n s i o n ,   s h o u l d   b e   s t a r t s   w i t h   a   d o t   " . " .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   $ ' � � � I      �] ��\�] 0 change_path_extension   �  ��[ � o      �Z�Z 0 a_suffix  �[  �\   � L      � � I     �Y ��X�Y 0 make_with_pathinfo   �  ��W � n   	 � � � n   	   I    	�V�U�V 0 change_path_extension   �T o    �S�S 0 a_suffix  �T  �U   o    �R�R 0 	_pathinfo 	_pathInfo �  f    �W  �X   �  l     �Q�P�O�Q  �P  �O    l      �N	�N   � �!@group Getting a File Reference form an Instance<!-- begin locale ja -->XFile �C���X�^���X���Q�Ƃ��Ă���t�@�C���ւ̎Q�Ƃ��擾���܂��B<!-- begin locale en -->Obtain a reference to a file which XFile reference to.<!-- end locale -->   	 �

� ! @ g r o u p   G e t t i n g   a   F i l e   R e f e r e n c e   f o r m   a n   I n s t a n c e  < ! - -   b e g i n   l o c a l e   j a   - - >  X F i l e  0�0�0�0�0�0�0LS�qg0W0f0D0�0�0�0�0�0x0nS�qg0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   w h i c h   X F i l e   r e f e r e n c e   t o .  < ! - -   e n d   l o c a l e   - - >   l     �M�L�K�M  �L  �K    l      �J�J  }w!@abstruct<!-- begin locale ja -->�G�C���A�X���擾���܂��B<!-- begin locale en -->Obtain a reference to a file as alias class<!-- end locale -->@description<!-- begin locale ja -->���݂��Ȃ��t�@�C���������̓t�H���_�ɑ΂��Ď��s����ƃG���[���������܂��B<!-- begin locale en -->An error raise, If a file or a folder does not exists.<!-- end locale -->@result alias    �� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   a l i a s   c l a s s  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > [XW(0W0j0D0�0�0�0�0�0W0O0o0�0�0�0�0k[�0W0f[��L0Y0�0h0�0�0�0Lvzu0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  A n   e r r o r   r a i s e ,   I f   a   f i l e   o r   a   f o l d e r   d o e s   n o t   e x i s t s .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   a l i a s   i   ( + I      �I�H�G�I 0 as_alias  �H  �G   k       I     �F�E�D�F !0 check_existance_raising_error  �E  �D   �C L     n    n    I   	 �B�A�@�B 0 as_alias  �A  �@   o    	�?�? 0 	_pathinfo 	_pathInfo  f    �C     l     �>�=�<�>  �=  �<    !"! l      �;#$�;  # � �!@abstruct<!-- begin locale ja -->File URL �N���X�̃t�@�C���Q�Ƃ��擾���܂��B<!-- begin locale en -->Obtain a reference to a file as File URL class<!-- end locale --><!-- end locale -->@result File URL   $ �%%� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - >  F i l e   U R L  0�0�0�0n0�0�0�0�S�qg0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   F i l e   U R L   c l a s s  < ! - -   e n d   l o c a l e   - - >  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   F i l e   U R L " &'& i   , /()( I      �:�9�8�: 0 as_furl  �9  �8  ) L     ** n    +,+ n   -.- I    �7�6�5�7 0 as_furl  �6  �5  . o    �4�4 0 	_pathinfo 	_pathInfo,  f     ' /0/ l     �3�2�1�3  �2  �1  0 121 l      �034�0  3 � �!@abstruct <!-- begin locale ja -->HFS �`���̃p�X���擾���܂��B<!-- begin locale en -->Obtain HFS path<!-- end locale -->@result Unicode text   4 �55 ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - >  H F S  _b_0n0�0�0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   H F S   p a t h  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t 2 676 i   0 3898 I      �/�.�-�/ 0 hfs_path  �.  �-  9 L     :: n    ;<; n   =>= I    �,�+�*�, 0 hfs_path  �+  �*  > o    �)�) 0 	_pathinfo 	_pathInfo<  f     7 ?@? l     �(�'�&�(  �'  �&  @ ABA l      �%CD�%  C � �!@abstruct <!-- begin locale ja -->POSIX�`���̃p�X���擾���܂��B<!-- begin locale en -->Obtain POSIX path<!-- end locale -->@result Unicode text   D �EE ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - >  P O S I X_b_0n0�0�0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   P O S I X   p a t h  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t B FGF i   4 7HIH I      �$�#�"�$ 0 
posix_path  �#  �"  I L     JJ n    KLK n   MNM I    �!� ��! 0 
posix_path  �   �  N o    �� 0 	_pathinfo 	_pathInfoL  f     G OPO l     ����  �  �  P QRQ l      �ST�  S � �!@abstruct
<!-- begin locale ja -->
�p�X������̍Ō��"/"���폜���� POSIX �p�X���擾���܂��B
<!-- begin locale en -->
Obtain POSIX path which does not end with "/".
<!-- end locale -->
@result text   T �UU^ ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�e�[WR0ng _�0n " / "0�RJ�d0W0_   P O S I X  0�0�0�S�_�0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   t e x t R VWV i   8 ;XYX I      ���� 0 normalized_posix_path  �  �  Y L     ZZ n    [\[ n   ]^] I    ���� 0 normalized_posix_path  �  �  ^ o    �� 0 	_pathinfo 	_pathInfo\  f     W _`_ l     ����  �  �  ` aba i   < ?cdc I      ���� 0 quoted_path  �  �  d L     ee n    
fgf n   	hih 1    	�
� 
strqi n   jkj I    ��
�	� 0 
posix_path  �
  �	  k o    �� 0 	_pathinfo 	_pathInfog  f     b lml l     ����  �  �  m non l      �pq�  p &  !@group Working with Attributes    q �rr @ ! @ g r o u p   W o r k i n g   w i t h   A t t r i b u t e s  o sts l     ����  �  �  t uvu l      � wx�   w0*!@abstruct<!-- begin locale ja -->�t�H���_�ł��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item is a folder or not.<!-- end locale -->@result boolean : <!-- begin locale ja -->�t�H���_�ł���� true <!-- begin locale en -->true if the the item is folder.<!-- end locale -->   x �yy$ ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0g0B0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   i s   a   f o l d e r   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0g0B0�0p   t r u e    < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   t h e   t h e   i t e m   i s   f o l d e r . < ! - -   e n d   l o c a l e   - - > v z{z i   @ C|}| I      �������� 0 	is_folder  ��  ��  } k     ~~ � l      ������  � � �	if item_ref()'s class is not alias then		check_existance_raising_error()		update_pathinfo()	end if	return my _pathInfo's is_folder()
	   � ���  	 i f   i t e m _ r e f ( ) ' s   c l a s s   i s   n o t   a l i a s   t h e n  	 	 c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r ( )  	 	 u p d a t e _ p a t h i n f o ( )  	 e n d   i f  	 r e t u r n   m y   _ p a t h I n f o ' s   i s _ f o l d e r ( ) 
 	� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
asdr� o    	���� 0 info_rec  ��  { ��� l     ��������  ��  ��  � ��� l      ������  �2,!@abstruct<!-- begin locale ja -->�p�b�P�[�W�ł��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item is a package or not.<!-- end locale -->@result boolean :<!-- begin locale ja -->�p�b�P�[�W�ł���� true<!-- begin locale en -->true if the item is a package.<!-- end locale -->   � ���$ ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0g0B0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   i s   a   p a c k a g e   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :  < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0�0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   t h e   i t e m   i s   a   p a c k a g e . < ! - -   e n d   l o c a l e   - - > � ��� i   D G��� I      �������� 0 
is_package  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
ispk� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �JD!@abstruct<!-- begin locale ja -->�G�C���A�X�t�@�C���ł��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item is an alias file or not.<!-- end locale -->@result boolean :<!-- begin locale ja -->�G�C���A�X�t�@�C���ł���� true<!-- begin locale en -->true if the item is an alias file.<!-- end locale -->   � ���D ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0�0g0B0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :  < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0�0�0�0�0�0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e . < ! - -   e n d   l o c a l e   - - > � ��� i   H K��� I      �������� 0 is_alias  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� m   	 ��
�� 
alis� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �NH!@abstruct<!-- begin locale ja -->�V���{���b�N�����N�ł��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item is a symbolic link or not.<!-- end locale -->@result boolean : <!-- begin locale ja -->�V���{���b�N�����O�ł���� true<!-- begin locale en -->true if the item is a symbolic link<!-- end locale -->   � ���L ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0�0g0B0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0�0�0�0�0�0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k < ! - -   e n d   l o c a l e   - - > � ��� i   L O��� I      �������� 0 
is_symlink  ��  ��  � k     3�� ��� Z     -������� =    ��� n    ��� o    ���� 0 _is_symlink  �  f     � m    ��
�� 
msng� Q    )���� k    �� ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  t e s t   - L  � I    �������� 0 quoted_path  ��  ��  ��  � ���� r    ��� m    ��
�� boovtrue� n     ��� o    ���� 0 _is_symlink  �  f    ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r   $ )��� m   $ %��
�� boovfals� n     ��� o   & (���� 0 _is_symlink  �  f   % &��  ��  � ���� L   . 3�� n  . 2��� o   / 1���� 0 _is_symlink  �  f   . /��  � ��� l     ��������  ��  ��  � ��� l      ������  �;5!@abstruct<!-- begin locale ja -->���t�@�C��/�t�@�C���ł��邩�ǂ���<!-- begin locale en -->Check whether the item is visible or not.<!-- end locale -->@result boolean : <!-- begin locale ja -->���t�@�C��/�t�H���_�ł���� true<!-- begin locale en -->true if the item is visible.<!-- end locale -->   � ���, ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S0�0�0�0� /0�0�0�0�0g0B0�0K0i0F0K  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :    < ! - -   b e g i n   l o c a l e   j a   - - >S0�0�0�0� /0�0�0�0�0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   t h e   i t e m   i s   v i s i b l e . < ! - -   e n d   l o c a l e   - - > � ��� i   P S��� I      �������� 0 
is_visible  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
pvis� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� i   T W��� I      �������� 0 type_identifier  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L       n     1   	 ��
�� 
utid o    	���� 0 info_rec  ��  �  l     ��������  ��  ��    l     ��������  ��  ��    l      ��	
��  	!@abstruct<!-- begin locale ja -->�N���G�[�^�R�[�h�ƃ^�C�v�R�[�h��ݒ肵�܂��B<!-- begin locale en -->set creator code and type code to the item.<!-- end locale -->@param creator_code (Unicode text or string) : <!-- begin locale ja -->�N���G�[�^�R�[�h<!-- begin locale en -->creator code which consists of 4 characters<!-- end locale -->@param type_code (Unicode text or string) : <!-- begin locale ja -->�^�C�v�R�[�h<!-- begin locale en -->type code which consists of 4 characters<!-- end locale -->   
 �� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0h0�0�0�0�0�0�0��-[�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  s e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   c r e a t o r _ c o d e   ( U n i c o d e   t e x t   o r   s t r i n g )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   t y p e _ c o d e   ( U n i c o d e   t e x t   o r   s t r i n g )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  < ! - -   e n d   l o c a l e   - - >   i   X [ I      ������ 0 	set_types    o      ���� 0 creator_code   �� o      ���� 0 	type_code  ��  ��   Z     +���� H      I     �������� 0 	is_folder  ��  ��   k   	 '  r   	  I   	 �������� 0 as_alias  ��  ��   o      ���� 
0 a_file    O    ! k        !"! r    #$# o    ���� 0 creator_code  $ n      %&% 1    ��
�� 
fcrt& o    ���� 
0 a_file  " '��' r     ()( o    ���� 0 	type_code  ) n      *+* 1    ��
�� 
asty+ o    ���� 
0 a_file  ��   m    ,,�                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   -��- r   " './. m   " #��
�� 
msng/ n     010 o   $ &���� 0 _inforecord _infoRecord1  f   # $��  ��  ��   232 l     ��������  ��  ��  3 454 l      ��67��  6JD!@abstruct<!-- begin locale ja -->�t�@�C���̏����܂Ƃ߂Ď擾���܂��B<!-- begin locale en -->Obtain file information.<!-- end locale -->@description<!-- begin locale ja -->info for �R�}���h���g�p���ď����擾���܂��B��x info() �����s����Ƃ��̌��ʂ͓����ɃL���b�V������܂��B<!-- begin locale en -->Do "info for" command for the item. The result is cached and same value is returned at next calling info().<!-- end locale -->@result record : <!-- begin locale ja -->info for �R�}���h�̎��s����<!-- begin locale en -->result of info for command<!-- end locale -->   7 �88� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0n`�X10�0~0h0�0fS�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   f i l e   i n f o r m a t i o n .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - >  i n f o   f o r  0�0�0�0�0�Ou(0W0f`�X10�S�_�0W0~0Y0N ^�   i n f o ( )  0�[��L0Y0�0h0]0n}Pg�0oQ���0k0�0�0�0�0�0U0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m .   T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   r e c o r d   :    < ! - -   b e g i n   l o c a l e   j a   - - > i n f o   f o r  0�0�0�0�0n[��L}Pg�  < ! - -   b e g i n   l o c a l e   e n   - - > r e s u l t   o f   i n f o   f o r   c o m m a n d < ! - -   e n d   l o c a l e   - - > 5 9:9 i   \ _;<; I      ����~�� 0 info  �  �~  < k     %== >?> Z     @A�}�|@ =    BCB n    DED o    �{�{ 0 _inforecord _infoRecordE  f     C m    �z
�z 
msngA k    FF GHG I    �y�x�w�y !0 check_existance_raising_error  �x  �w  H I�vI r    JKJ I   �uL�t
�u .sysonfo4asfe        fileL I    �s�r�q�s 0 as_furl  �r  �q  �t  K n     MNM o    �p�p 0 _inforecord _infoRecordN  f    �v  �}  �|  ? O�oO L     %PP n    $QRQ o   ! #�n�n 0 _inforecord _infoRecordR  f     !�o  : STS l     �m�l�k�m  �l  �k  T UVU l      �jWX�j  Wvp!@abstruct<!-- begin locale ja -->�t�@�C���̏����f�B�X�N�V�X�e������Ď擾���܂��B<!-- begin locale en -->Obtain file information<!-- end locale -->@description<!-- begin locale ja -->info for �R�}���h���g�p���ď����擾���܂��B((<info>))() �����s����Ƃ��̌��ʂ͓����ɃL���b�V������܂����Are_info()�� info for �R�}���h�����s���āA�L���b�V�����X�V���܂��B<!-- begin locale en -->Do "info for" command for the item and reset the cache of ((<info>))().<!-- end locale -->@result record :<!-- begin locale ja -->info for �R�}���h�̎��s����<!-- begin locale en -->result of info for command<!-- end locale -->   X �YY ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0n`�X10�0�0�0�0�0�0�0�0�0K0�Q�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   f i l e   i n f o r m a t i o n  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - >  i n f o   f o r  0�0�0�0�0�Ou(0W0f`�X10�S�_�0W0~0Y0 ( ( < i n f o > ) ) ( )  0�[��L0Y0�0h0]0n}Pg�0oQ���0k0�0�0�0�0�0U0�0~0Y0L0 r e _ i n f o ( )0o   i n f o   f o r  0�0�0�0�0�[��L0W0f00�0�0�0�0�0�f�e�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   r e c o r d   :  < ! - -   b e g i n   l o c a l e   j a   - - > i n f o   f o r  0�0�0�0�0n[��L}Pg�  < ! - -   b e g i n   l o c a l e   e n   - - > r e s u l t   o f   i n f o   f o r   c o m m a n d < ! - -   e n d   l o c a l e   - - > V Z[Z i   ` c\]\ I      �i�h�g�i 0 re_info  �h  �g  ] k     ^^ _`_ r     aba I    	�fc�e
�f .sysonfo4asfe        filec I     �d�c�b�d 0 as_furl  �c  �b  �e  b n     ded o   
 �a�a 0 _inforecord _infoRecorde  f   	 
` f�`f L    gg n   hih o    �_�_ 0 _inforecord _infoRecordi  f    �`  [ jkj l     �^�]�\�^  �]  �\  k lml l      �[no�[  n % !@group Obtain Path Infomation    o �pp > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  m qrq l     �Z�Y�X�Z  �Y  �X  r sts l      �Wuv�W  u � �!@abstruct <!-- begin locale ja -->�t�@�C��/�t�H���_�����擾���܂��B<!-- begin locale en -->Obtain the name of the item referenced by the instance <!-- end locale -->@result Unicode text   v �wwb ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0� /0�0�0�0�T0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e    < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t t xyx i   d gz{z I      �V�U�T�V 0 	item_name  �U  �T  { L     || n    }~} n   � I    �S�R�Q�S 0 	item_name  �R  �Q  � o    �P�P 0 	_pathinfo 	_pathInfo~  f     y ��� l     �O�N�M�O  �N  �M  � ��� l      �L���L  �!@abstruct <!-- begin locale ja -->�x�[�X�l�[��(�t�@�C��������g���q���̂���������)���擾���܂��B<!-- begin locale en -->Obtain the base name (a name which does not include path extension) of the item referenced by the instance.<!-- end locale -->@result Unicode text   � ���� ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0� (0�0�0�0�T0K0�b�_5[P0�0n0^0D0_0�0n )0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t � ��� i   h k��� I      �K�J�I�K 0 basename  �J  �I  � L     �� n    ��� n   ��� I    �H�G�F�H 0 basename  �G  �F  � o    �E�E 0 	_pathinfo 	_pathInfo�  f     � ��� l     �D�C�B�D  �C  �B  � ��� l      �A���A  � � �!@abstruct <!-- begin locale ja -->�t�@�C�����̊g���q���擾���܂��B<!-- begin locale en -->Obtain path extension�@of the item referenced by the instance.<!-- end locale -->@result Unicode text   � ���l ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�T0nb�_5[P0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   p a t h   e x t e n s i o n0  o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t � ��� i   l o��� I      �@�?�>�@ 0 path_extension  �?  �>  � L     �� n    ��� n   ��� I    �=�<�;�= 0 path_extension  �<  �;  � o    �:�: 0 	_pathinfo 	_pathInfo�  f     � ��� l     �9�8�7�9  �8  �7  � ��� l     �6�5�4�6  �5  �4  � ��� i   p s��� I      �3�2�1�3 0 update_cache  �2  �1  � Z     ���0�/� >    ��� n    ��� o    �.�. 0 _inforecord _infoRecord�  f     � m    �-
�- 
msng� k    �� ��� I    �,�+�*�, !0 check_existance_raising_error  �+  �*  � ��)� r    ��� I   �(��'
�( .sysonfo4asfe        file� I    �&�%�$�& 0 item_ref  �%  �$  �'  � n     ��� o    �#�# 0 _inforecord _infoRecord�  f    �)  �0  �/  � ��� l     �"�!� �"  �!  �   � ��� l      ����  � $ !@group Working with a Bundle    � ��� < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e  � ��� l     ����  �  �  � ��� l      ����  �#!@abstruct<!-- begin locale ja -->�o���h�����\�[�X�Ɋ܂܂�Ă���t�@�C�����擾���܂��B<!-- begin locale en -->Obtain an item which is in the bundle resource folder.<!-- end locale -->@description<!-- begin locale ja -->�o���h�����Q�Ƃ��Ă���C���X�^���X�ɂ������s�ł��܂���B<!-- begin locale en -->This method can be call to a bundle.<!-- end locale -->@param resource_name (Unicode text) : <!-- begin locale ja -->���\�[�X��<!-- begin locale en -->a resource name<!-- end locale -->@result script object : a XFile instance   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0kT+0~0�0f0D0�0�0�0�0�0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�S�qg0W0f0D0�0�0�0�0�0�0�0k0W0K[��L0g0M0~0[0�0  < ! - -   b e g i n   l o c a l e   e n   - - >  T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   r e s o u r c e _ n a m e   ( U n i c o d e   t e x t )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�T  < ! - -   b e g i n   l o c a l e   e n   - - > a   r e s o u r c e   n a m e  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e � ��� i   t w��� I      ���� 0 bundle_resource  � ��� o      �� 0 resource_name  �  �  � L     �� I     ���� 0 	make_with  � ��� I   ���
� .sysorpthalis        TEXT� o    �� 0 resource_name  � ���
� 
in B� l   ���� I    ���� 0 as_alias  �  �  �  �  �  �  �  � ��� l     �
�	��
  �	  �  � ��� l      ����  � � �!@abstruct<!-- begin locale ja -->�o���h����Info.plist�t�@�C���̎Q�Ƃ��擾���܂��B<!-- begin locale en -->Obtain a reference to Info.plist of the bundle.<!-- end locale -->@result script object : a XFile instance   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0n I n f o . p l i s t0�0�0�0�0nS�qg0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e � ��� i   x {��� I      ���� $0 bundle_infoplist bundle_InfoPlist�  �  � L     �� I     ���� 0 child_posix  � ��� m    �� ��� & C o n t e n t s / I n f o . p l i s t�  �  � ��� l     � �����   ��  ��  � ��� i   | ��� I      �������� 0 bundle_resources_folder  ��  ��  � L     �� I     ������� 0 child_posix  � ���� m    �� ��� & C o n t e n t s / R e s o u r c e s /��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � ! !@group File Manipulations    � ��� 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct<!-- begin locale ja -->�Q�Ƃ��Ă���t�@�C��/�t�H���_�����݂��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item referenced by the instance exists or not.<!-- end locale -->@description<!-- begin locale ja -->�����̃t�@�C���Q�Ƃ��G�C���A�X�ɕϊ����܂��B���łɃG�C���A�X�`���̎Q�Ƃ�ێ����Ă���ꍇ�ł��A�G�C���A�X���č\�z���܂��B�ʏ�A�G�C���A�X�̓t�@�C���̈ړ��A�t�@�C�����̕ύX��ǐՂ��邱�Ƃ��ł��܂����A�ʂ̃t�@�C���ŏ㏑�������ƒǐՂł��Ȃ��Ȃ�܂��B
���̂悤�ȂƂ��Aitem_exists() �����s���ăG�C���A�X���č\�z���Ă��������B<!-- begin locale en -->A file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.<!-- end locale -->@result boolean :<!-- begin locale ja -->���݂���̂ł���� true<!-- begin locale en -->true if the item exists.<!-- end locale -->   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S�qg0W0f0D0�0�0�0�0� /0�0�0�0�0L[XW(0Y0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > Q���0n0�0�0�0�S�qg0�0�0�0�0�0�0kY	c�0W0~0Y00Y0g0k0�0�0�0�0�_b_0nS�qg0�O�c0W0f0D0�X4T0g0�00�0�0�0�0�0�Q�i�{�0W0~0Y0  �^800�0�0�0�0�0o0�0�0�0�0ny�R�00�0�0�0�T0nY	f�0�����0Y0�0S0h0L0g0M0~0Y0L0R%0n0�0�0�0�0gN
f�0M0U0�0�0h����0g0M0j0O0j0�0~0Y0 
0]0n0�0F0j0h0M0 i t e m _ e x i s t s ( )  0�[��L0W0f0�0�0�0�0�0�Q�i�{�0W0f0O0`0U0D0  < ! - -   b e g i n   l o c a l e   e n   - - >  A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :  < ! - -   b e g i n   l o c a l e   j a   - - >[XW(0Y0�0n0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   t h e   i t e m   e x i s t s . < ! - -   e n d   l o c a l e   - - > � ��� i   � ���� I      �������� 0 item_exists  ��  ��  � L        n     n    I    �������� 0 item_exists  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f     �  l     ��������  ��  ��    l      ��	
��  	82!@abstruct<!-- begin locale ja -->�Q�Ƃ��Ă���t�@�C��/�t�H���_�����݂��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item referenced by the instance exists or not.<!-- end locale -->@description<!-- begin locale ja -->((<item_exists>)) �Ƃ͈���āA�����̃t�@�C���Q�Ƃ͍X�V����܂���B<!-- begin locale en -->The internal file reference will not be changed unlike ((<item_exists>)).<!-- end locale -->@result boolean :<!-- begin locale ja -->���݂���̂ł���� true<!-- begin locale en -->true if the item exists.<!-- end locale -->   
 �� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S�qg0W0f0D0�0�0�0�0� /0�0�0�0�0L[XW(0Y0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - >  ( ( < i t e m _ e x i s t s > ) )  0h0o�U0c0f0Q���0n0�0�0�0�S�qg0of�e�0U0�0~0[0�0  < ! - -   b e g i n   l o c a l e   e n   - - >  T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :  < ! - -   b e g i n   l o c a l e   j a   - - >[XW(0Y0�0n0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   t h e   i t e m   e x i s t s . < ! - -   e n d   l o c a l e   - - >   i   � � I      �������� 0 item_exists_without_update  ��  ��   L      n     n    I    �������� 0 item_exists_without_update  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f       l     ��������  ��  ��    l      ����  ��!@abstruct<!-- begin locale ja -->((<item_exists>)) �Ɠ����ł��B�Q�Ƃ��Ă���t�@�C��/�t�H���_�����݂��邩�ǂ������ׂ܂��B<!-- begin locale en -->Synonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.<!-- end locale -->@result boolean : <!-- begin locale ja -->���݂���̂ł���� true<!-- begin locale en -->true if the item exists.<!-- end locale -->    �� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - >  ( ( < i t e m _ e x i s t s > ) )  0hT0X0g0Y0S�qg0W0f0D0�0�0�0�0� /0�0�0�0�0L[XW(0Y0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :    < ! - -   b e g i n   l o c a l e   j a   - - >[XW(0Y0�0n0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   t h e   i t e m   e x i s t s . < ! - -   e n d   l o c a l e   - - >   i   � � I     ������
�� .coredoexbool       obj ��  ��   L        I     �������� 0 item_exists  ��  ��   !"! l     ��������  ��  ��  " #$# l      ��%&��  %1+!@abstruct<!-- begin locale ja -->�t�@�C��/�t�H���_����ύX���܂��B<!-- begin locale en -->Rename an item which referenced by the XFile instance.<!-- end locale -->@result boolean : <!-- begin locale ja -->��������� true<!-- begin locale en -->boolean : true if success.<!-- end locale -->   & �'', ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0� /0�0�0�0�T0�Y	f�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :    < ! - -   b e g i n   l o c a l e   j a   - - >bR�0Y0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > b o o l e a n   :   t r u e   i f   s u c c e s s . < ! - -   e n d   l o c a l e   - - > $ ()( i   � �*+* I      ��,���� 0 	rename_to  , -��- o      ���� 0 new_name  ��  ��  + k     0.. /0/ Z     12����1 H     33 l    4����4 I     �������� 0 item_exists  ��  ��  ��  ��  2 L   	 55 m   	 
��
�� boovfals��  ��  0 676 l   ��������  ��  ��  7 898 O    :;: r    <=< o    ���� 0 new_name  = n      >?> 1    ��
�� 
pnam? n   @A@ I    �������� 0 item_ref  ��  ��  A  f    ; m    BB�                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  9 CDC l   ��������  ��  ��  D EFE r    $GHG m     ��
�� 
msngH n     IJI o   ! #���� 0 _inforecord _infoRecordJ  f     !F KLK n  % -MNM n  & -OPO I   ( -��Q���� 0 set_name  Q R��R o   ( )���� 0 new_name  ��  ��  P o   & (���� 0 	_pathinfo 	_pathInfoN  f   % &L S��S L   . 0TT m   . /��
�� boovtrue��  ) UVU l     ��������  ��  ��  V WXW l      ��YZ��  Y!@abstruct <!-- begin locale ja -->�t�@�C��/�t�H���_���w�肵���ꏊ�ɃR�s�[���܂��B<!-- begin locale en -->Copy the item to specified location<!-- end locale -->@description<!-- begin locale ja -->�����̃t�@�C��������Ώ㏑�����܂��B<!-- begin locale en -->Same name item in the destination is replaced.<!-- end locale -->@param a_destination (script object or text) : <!-- begin locale ja -->�R�s�[����Q�Ƃ��Ă��� XFile �̃C���X�^���X�B�������́A�^�[�Q�b�g����̑��΃p�X�B<!-- begin locale en -->a XFile instance referencing the copy destination or a relative path.<!-- end locale -->@result script object : <!-- begin locale ja -->�R�s�[�����t�@�C��/�t�H���_�� XFile �C���X�^���X<!-- begin locale en -->a XFile instance referencing copied item.<!-- end locale -->   Z �[[\ ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0� /0�0�0�0�0�c[�0W0_X4b@0k0�0�0�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > TT0n0�0�0�0�0L0B0�0pN
f�0M0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�QH0�S�qg0W0f0D0�   X F i l e  0n0�0�0�0�0�0�00�0W0O0o00�0�0�0�0�0K0�0nv�[�0�0�0  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0W0_0�0�0�0� /0�0�0�0�0n   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . < ! - -   e n d   l o c a l e   - - > X \]\ i   � �^_^ I      ��`���� 0 copy_to  ` a��a o      ���� 0 a_destination  ��  ��  _ L     bb I     ��c���� 0 copy_with_opts  c ded o    ���� 0 a_destination  e f��f m    ��
�� 
msng��  ��  ] ghg l     ��������  ��  ��  h iji l      ��kl��  kic!
@abstruct <!-- begin locale ja -->�t�@�C��/�t�H���_���w�肵���ꏊ�ɃR�s�[���܂��B�������̃I�v�V�������w��ł��܂��B<!-- begin locale en -->Copy the item to specified location with options.<!-- end locale -->@description<!-- begin locale ja -->��Q�����ŃI�v�V�����i record �N���X�̒l�j��^���邱�Ƃɂ��A�R�s�[����̃J�X�^�}�C�Y���s���܂��B
�I�v�V�����Ƃ��Ă������郌�R�[�h�́A{with_replaceing : boolean, with_admin:boolean, with_replacing: boolean} �Ƃ����t�H�[�}�b�g�ł��B�l���w�肵�Ȃ����x���͏ȗ��\�ł��B
* with_replacing : �R�s�[��Ƀt�@�C�����������ꍇ�u�������邩�ǂ����B�f�t�H���g�� true�B
* with_admin : �Ǘ��Ҍ����ŃR�s�[���܂��B�f�t�H���g�� false�B
* with_removing : �R�s�[�悪���݂���ꍇ�A�R�s�[����폜���Ă���R�s�[�����s���܂��B�f�t�H���g�� false�B<!-- begin locale en -->By passing options (a value of a record) as a second parameter, you can change the behavior of copying. The format of the option record is {with_replaceing : boolean, with_admin:boolean, with_replacing: boolean}. You can ommit labels you don't required.
* with_replacing : Copying with replacing the destination. The default is true.
* with_admin : Copying with administrator privileges. The default is false.
* with_removing : Copying after removing the destination. The default is false.<!-- end locale -->@param a_destination (script object) : <!-- begin locale ja -->�R�s�[����Q�Ƃ��Ă��� XFile �̃C���X�^���X�������͑��΃p�X�B<!-- begin locale en -->a XFile instance referencing the copy destination or a relative path.<!-- end locale -->
@param opts ( record): 
<!-- begin locale ja -->�R�s�[���<!-- begin locale en -->a XFile instance referencing the copy destination<!-- end locale -->@result script object : <!-- begin locale ja -->�R�s�[�����t�@�C��/�t�H���_�� XFile �C���X�^���X<!-- begin locale en -->a XFile instance referencing copied item.<!-- end locale -->   l �mm� ! 
 @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0� /0�0�0�0�0�c[�0W0_X4b@0k0�0�0�0W0~0Y00D0O0d0K0n0�0�0�0�0�0�c[�0g0M0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n   w i t h   o p t i o n s .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > {,�_ep0g0�0�0�0�0��   r e c o r d  0�0�0�0nP$�	0�N0H0�0S0h0k0�0�00�0�0�d�O\0n0�0�0�0�0�0�0L�L0H0~0Y0 
0�0�0�0�0�0h0W0f0B0_0H0�0�0�0�0�0o0 { w i t h _ r e p l a c e i n g   :   b o o l e a n ,   w i t h _ a d m i n : b o o l e a n ,   w i t h _ r e p l a c i n g :   b o o l e a n }  0h0D0F0�0�0�0�0�0�0g0Y0P$0�c[�0W0j0D0�0�0�0owueS��0g0Y0 
 *   w i t h _ r e p l a c i n g   :  0�0�0�QH0k0�0�0�0�0L0B0c0_X4Tn0Mc�0H0�0K0i0F0K00�0�0�0�0�0o   t r u e0 
 *   w i t h _ a d m i n   :  {�t�j)�P0g0�0�0�0W0~0Y00�0�0�0�0�0o   f a l s e0 
 *   w i t h _ r e m o v i n g   :  0�0�0�QH0L[XW(0Y0�X4T00�0�0�QH0�RJ�d0W0f0K0�0�0�0�0�[��L0W0~0Y00�0�0�0�0�0o   f a l s e0  < ! - -   b e g i n   l o c a l e   e n   - - >  B y   p a s s i n g   o p t i o n s   ( a   v a l u e   o f   a   r e c o r d )   a s   a   s e c o n d   p a r a m e t e r ,   y o u   c a n   c h a n g e   t h e   b e h a v i o r   o f   c o p y i n g .   T h e   f o r m a t   o f   t h e   o p t i o n   r e c o r d   i s   { w i t h _ r e p l a c e i n g   :   b o o l e a n ,   w i t h _ a d m i n : b o o l e a n ,   w i t h _ r e p l a c i n g :   b o o l e a n } .   Y o u   c a n   o m m i t   l a b e l s   y o u   d o n ' t   r e q u i r e d . 
 *   w i t h _ r e p l a c i n g   :   C o p y i n g   w i t h   r e p l a c i n g   t h e   d e s t i n a t i o n .   T h e   d e f a u l t   i s   t r u e . 
 *   w i t h _ a d m i n   :   C o p y i n g   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s .   T h e   d e f a u l t   i s   f a l s e . 
 *   w i t h _ r e m o v i n g   :   C o p y i n g   a f t e r   r e m o v i n g   t h e   d e s t i n a t i o n .   T h e   d e f a u l t   i s   f a l s e .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�QH0�S�qg0W0f0D0�   X F i l e  0n0�0�0�0�0�0�0�0W0O0ov�[�0�0�0  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   o p t s   (   r e c o r d ) :   
 < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�QH0k  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0W0_0�0�0�0� /0�0�0�0�0n   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m . < ! - -   e n d   l o c a l e   - - > j non i   � �pqp I      ��r���� 0 copy_with_opts  r sts o      ���� 0 a_destination  t u��u o      ���� 0 opts  ��  ��  q k    8vv wxw l     ��yz��  y \ V cp : if source and destination are folders and the path of the source ends with "/",    z �{{ �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  x |}| l     ��~��  ~ ^ X         cp command contents of the source copy under the destination folder like ditto.    ��� �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .} ��� l     ������  � U O        The endding "/" of the source path should be removed for stable result.   � ��� �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .� ��� l     ������  � 5 /        Is the support  of ditto not required ?   � ��� ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?� ��� r     ��� m     ��
�� boovtrue� o      ���� 0 w_replacing  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 w_admin  � ��� r    ��� m    	��
�� boovfals� o      ���� 0 
w_removing  � ��� l   ���� r    ��� m    �� ���  c p� o      ���� 0 command  �   or "ditto"   � ���    o r   " d i t t o "� ��� l   ��������  ��  ��  � ��� Z    l������� =   ��� n    ��� 1    ��
�� 
pcls� o    ���� 0 opts  � m    ��
�� 
reco� k    h�� ��� Q    )����� r     ��� n    ��� o    ���� 0 with_replacing  � o    ���� 0 opts  � o      ���� 0 w_replacing  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� Q   * ;���� r   - 2��� n   - 0��� o   . 0�~�~ 0 
with_admin  � o   - .�}�} 0 opts  � o      �|�| 0 w_admin  � R      �{�z�y
�{ .ascrerr ****      � ****�z  �y  �  � ��� Q   < M���x� r   ? D��� n   ? B��� o   @ B�w�w 0 with_removing  � o   ? @�v�v 0 opts  � o      �u�u 0 
w_removing  � R      �t�s�r
�t .ascrerr ****      � ****�s  �r  �x  � ��q� Q   N h���p� Z   Q _���o�n� n   Q U��� o   R T�m�m 	0 ditto  � o   Q R�l�l 0 opts  � r   X [��� m   X Y�� ��� 
 d i t t o� o      �k�k 0 command  �o  �n  � R      �j�i�h
�j .ascrerr ****      � ****�i  �h  �p  �q  ��  ��  � ��� l  m m�g�f�e�g  �f  �e  � ��� Z   m ����d�c� E  m v��� J   m r�� ��� m   m n�b
�b 
ctxt� ��� m   n o�a
�a 
utxt� ��`� m   o p�_
�_ 
TEXT�`  � n   r u��� 1   s u�^
�^ 
pcls� o   r s�]�] 0 a_destination  � r   y ���� n  y ���� I   ~ ��\��[�\ 	0 child  � ��Z� o   ~ �Y�Y 0 a_destination  �Z  �[  � I   y ~�X�W�V�X 0 parent_folder  �W  �V  � o      �U�U 0 a_destination  �d  �c  � ��� l  � ��T�S�R�T  �S  �R  � ��� Z   � �����Q� =  � ���� o   � ��P�P 0 command  � m   � ��� ���  c p� k   � ��� ��� r   � ���� m   � ��� ���  - R p� o      �O�O 0 com_opts  � ��N� Z   � ����M�L� o   � ��K�K 0 w_replacing  � r   � ���� b   � ���� o   � ��J�J 0 com_opts  � m   � ��� ���  f� o      �I�I 0 com_opts  �M  �L  �N  �    =  � � o   � ��H�H 0 command   m   � � � 
 d i t t o �G r   � � m   � �		 �

  - - r s r c o      �F�F 0 com_opts  �G  �Q  �  l  � ��E�D�C�E  �D  �C    r   � � m   � ��B
�B boovfals o      �A�A 0 is_folder_to    Z   � ��@�? n  � � I   � ��>�=�<�> 0 item_exists  �=  �<   o   � ��;�; 0 a_destination   Z   � ��: l  � ��9�8 o   � ��7�7 0 
w_removing  �9  �8   n  � � I   � ��6�5�4�6 
0 remove  �5  �4   o   � ��3�3 0 a_destination  �:   Z   � ��2�1 =  � �  o   � ��0�0 0 command    m   � �!! �""  c p r   � �#$# n  � �%&% I   � ��/�.�-�/ 0 	is_folder  �.  �-  & o   � ��,�, 0 a_destination  $ o      �+�+ 0 is_folder_to  �2  �1  �@  �?   '(' r   � �)*) n   � �+,+ 1   � ��*
�* 
strq, n  � �-.- I   � ��)�(�'�) 0 normalized_posix_path  �(  �'  . o   � ��&�& 0 a_destination  * o      �%�% 0 destination_path  ( /0/ r   �121 n   � �343 1   � ��$
�$ 
strq4 I   � ��#�"�!�# 0 normalized_posix_path  �"  �!  2 o      � �  0 source_path  0 565 r  787 b  9:9 b  ;<; b  =>= b  ?@? b  	ABA b  CDC o  �� 0 command  D 1  �
� 
spacB o  �� 0 com_opts  @ 1  	�
� 
spac> o  �� 0 source_path  < 1  �
� 
spac: o  �� 0 destination_path  8 o      �� 0 	a_command  6 EFE I !�GH
� .sysoexecTEXT���     TEXTG o  �� 0 	a_command  H �I�
� 
badmI o  �� 0 w_admin  �  F JKJ Z  "5LM��L o  "#�� 0 is_folder_to  M L  &1NN n &0OPO I  '0�Q�� 	0 child  Q R�R I  ',���
� 0 	item_name  �  �
  �  �  P o  &'�	�	 0 a_destination  �  �  K S�S L  68TT o  67�� 0 a_destination  �  o UVU l     ����  �  �  V WXW i   � �YZY I      �[�� 0 finder_copy_to  [ \]\ o      �� 0 a_destination  ] ^� ^ o      ���� 0 with_replacing  �   �  Z k     *__ `a` r     bcb n    ded I    �������� 0 as_alias  ��  ��  e o     ���� 0 a_destination  c o      ���� 0 destination  a fgf r    hih I    �������� 0 as_alias  ��  ��  i o      ���� 0 source_alias  g jkj O    "lml r    !non c    pqp l   r����r I   ��st
�� .coreclon****      � ****s o    ���� 0 source_alias  t ��uv
�� 
inshu o    ���� 0 destination  v ��w��
�� 
alrpw o    ���� 0 with_replacing  ��  ��  ��  q m    ��
�� 
aliso o      ���� 0 new_item  m m    xx�                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  k y��y L   # *zz I   # )��{���� 0 	make_with  { |��| o   $ %���� 0 new_item  ��  ��  ��  X }~} l     ��������  ��  ��  ~ � l      ������  �
!@abstruct<!-- begin locale ja -->�t�@�C��/�t�H���_���w�肵���ꏊ�Ɉړ����܂��B<!-- begin locale en -->Move the item referenced by the instance to specified location.<!-- end locale -->@param a_destination (script object) : <!-- begin locale ja -->�ړ�����Q�Ƃ��Ă��� XFile �C���X�^���X<!-- begin locale en -->a XFile instance referencing the destination to move.<!-- end locale -->@result boolean : <!-- begin locale ja -->��������� true<!-- begin locale en -->boolean : true if success.<!-- end locale -->   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0� /0�0�0�0�0�c[�0W0_X4b@0ky�R�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :    < ! - -   b e g i n   l o c a l e   j a   - - >y�R�QH0�S�qg0W0f0D0�   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :    < ! - -   b e g i n   l o c a l e   j a   - - >bR�0Y0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > b o o l e a n   :   t r u e   i f   s u c c e s s . < ! - -   e n d   l o c a l e   - - > � ��� i   � ���� I      ������� 0 move_to  � ���� o      ���� 0 a_destination  ��  ��  � k     (�� ��� l    ���� I     �������� 0 item_exists  ��  ��  � G A even if the item exists, broken symbolic file will return false.   � ��� �   e v e n   i f   t h e   i t e m   e x i s t s ,   b r o k e n   s y m b o l i c   f i l e   w i l l   r e t u r n   f a l s e .� ��� l    ������  � � �	set is_folder_to to false	if a_destination's item_exists_without_update() then		set is_folder_to to a_destination's is_folder()	end if	   � ���  	 s e t   i s _ f o l d e r _ t o   t o   f a l s e  	 i f   a _ d e s t i n a t i o n ' s   i t e m _ e x i s t s _ w i t h o u t _ u p d a t e ( )   t h e n  	 	 s e t   i s _ f o l d e r _ t o   t o   a _ d e s t i n a t i o n ' s   i s _ f o l d e r ( )  	 e n d   i f  	� ��� r    ��� n    ��� 1    ��
�� 
strq� n   ��� I    �������� 0 
posix_path  ��  ��  � o    ���� 0 a_destination  � o      ���� 0 destination_path  � ��� r    ��� n    ��� 1    ��
�� 
strq� I    �������� 0 
posix_path  ��  ��  � o      ���� 0 source_path  � ��� I   %�����
�� .sysoexecTEXT���     TEXT� b    !��� b    ��� b    ��� m    �� ���  m v   - f  � o    ���� 0 source_path  � 1    ��
�� 
spac� o     ���� 0 destination_path  ��  � ��� l  & &��������  ��  ��  � ���� L   & (�� m   & '��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l      ������  �+%!@abstruct<!-- begin locale ja -->�G�C���A�X�t�@�C���̃I���W�i�������߂܂��B<!-- begin locale en -->Resolving original item of a alias file.<!-- end locale -->@description<!-- begin locale ja -->�G�C���A�X�t�@�C���łȂ���Ύ������g��Ԃ��܂��B�I���W�i����������Ȃ���� missing value ��Ԃ��܂��B<!-- begin locale en -->If the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.<!-- end locale -->@result script object or missing value   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0�0n0�0�0�0�0�0�lB0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0�0g0j0Q0�0p��R�ꎫ0���0W0~0Y0 0�0�0�0�0�0L��0d0K0�0j0Q0�0p   m i s s i n g   v a l u e  0���0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e � ��� i   � ���� I      �������� 0 resolve_alias  ��  ��  � k     ^�� ��� Z     #������� I     �������� 0 
is_symlink  ��  ��  � k    �� ��� r    ��� I    �������� 0 	deep_copy  ��  ��  � o      ���� 0 
x_original  � ���� Z    ������ n   ��� I    �������� 0 item_exists  ��  ��  � o    ���� 0 
x_original  � L    �� o    ���� 0 
x_original  ��  � L    �� m    ��
�� 
msng��  ��  ��  � ��� l  $ $��������  ��  ��  � ��� r   $ +��� I   $ )�������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� Z   , ^������ n   , 0��� m   - /��
�� 
alis� o   , -���� 0 info_rec  � k   3 X�� ��� Q   3 P���� O   6 F��� r   : E��� c   : C��� l  : A������ n   : A��� 1   ? A��
�� 
orig� l  : ?������ n  : ?��� I   ; ?�������� 0 as_alias  ��  ��  �  f   : ;��  ��  ��  ��  � m   A B��
�� 
alis� o      ���� 0 original_item  � m   6 7���                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 
0 errmsg  ��  � L   N P�� m   N O��
�� 
msng� ���� L   Q X�� I   Q W������� 0 	make_with  � ���� o   R S���� 0 original_item  ��  ��  ��  ��  � L   [ ^�� N   [ ]��  f   [ \��  � ��� l     ��������  ��  ��  � ��� l      ������  � x r!@abstruct<!-- begin locale ja -->�S�~���ɓ���܂�<!-- begin locale en -->Put into trash.<!-- end locale -->   � ��� � ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�{�0kQe0�0~0Y  < ! - -   b e g i n   l o c a l e   e n   - - >  P u t   i n t o   t r a s h .  < ! - -   e n d   l o c a l e   - - > � ��� i   � �   I      �������� 0 
into_trash  ��  ��   k       r      I     �������� 0 as_alias  ��  ��   o      ���� 
0 a_file    O    	
	 I   ����
�� .coredeloobj        obj  o    ���� 
0 a_file  ��  
 m    	�                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �� I    ��~�}� 0 update_pathinfo  �~  �}  ��  �  l     �|�{�z�|  �{  �z    l      �y�y   � �!@abstruct<!-- begin locale ja -->�폜���܂�<!-- begin locale en -->Remove the item<!-- end locale -->@result script object : me    � ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > RJ�d0W0~0Y  < ! - -   b e g i n   l o c a l e   e n   - - >  R e m o v e   t h e   i t e m  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   m e   i   � � I      �x�w�v�x 
0 remove  �w  �v   k     ,  r     	 n      1    �u
�u 
strq I     �t�s�r�t 0 
posix_path  �s  �r   o      �q�q 
0 a_file    !  r   
 "#" n  
 $%$ n   &'& I    �p�o�n�p 0 as_text  �o  �n  ' o    �m�m 0 	_pathinfo 	_pathInfo%  f   
 # o      �l�l 
0 a_path  ! ()( I   �k*�j
�k .sysoexecTEXT���     TEXT* b    +,+ m    -- �..  r m   - r  , o    �i�i 
0 a_file  �j  ) /0/ r    #121 o    �h�h 
0 a_path  2 n     343 n   "565 o     "�g�g 0 	_item_ref  6 o     �f�f 0 	_pathinfo 	_pathInfo4  f    0 787 r   $ )9:9 m   $ %�e
�e 
msng: n     ;<; o   & (�d�d 0 _inforecord _infoRecord<  f   % &8 =�c= L   * ,>>  f   * +�c   ?@? l     �b�a�`�b  �a  �`  @ ABA l      �_CD�_  C   !@group Making subfolders    D �EE 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  B FGF l     �^�]�\�^  �]  �\  G HIH l      �[JK�[  J��!@abstruct<!-- begin locale ja -->�T�u�t�H���_�����܂��B<!-- begin locale en -->Make a sub folder<!-- end locale -->@description<!-- begin locale ja -->���łɓ����̃t�@�C��������Ȃǂ̗��R�ŁA���s������ missing value<!-- begin locale en -->missing value is returned, if failing to make a new folder
<!-- end locale -->@param folder_name (Unicode text) : <!-- begin locale ja -->�t�H���_��<!-- begin locale en -->a name of new folder.<!-- end locale -->@result script object or missing value : <!-- begin locale ja -->�V����������t�H���_�� XFile �C���X�^���X�B<!-- begin locale en -->a XFile instance of newly created folder.<!-- end locale -->   K �LL� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�O\0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   a   s u b   f o l d e r  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 0Y0g0kTT0n0�0�0�0�0L0B0�0j0i0ntu10g0Y1eW0W0_0�   m i s s i n g   v a l u e  < ! - -   b e g i n   l o c a l e   e n   - - >  m i s s i n g   v a l u e   i s   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 < ! - -   e n d   l o c a l e   - - >  @ p a r a m   f o l d e r _ n a m e   ( U n i c o d e   t e x t )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�T  < ! - -   b e g i n   l o c a l e   e n   - - > a   n a m e   o f   n e w   f o l d e r .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :    < ! - -   b e g i n   l o c a l e   j a   - - >e�0W0OO\0c0_0�0�0�0�0n   X F i l e  0�0�0�0�0�0�0  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r . < ! - -   e n d   l o c a l e   - - > I MNM i   � �OPO I      �ZQ�Y�Z 0 make_folder  Q R�XR o      �W�W 0 folder_name  �X  �Y  P k     !SS TUT Z     VW�V�UV H     XX l    Y�T�SY I     �R�Q�P�R 0 item_exists  �Q  �P  �T  �S  W L   	 ZZ m   	 
�O
�O 
msng�V  �U  U [\[ l   �N�M�L�N  �M  �L  \ ]^] r    _`_ I    �Ka�J�K 	0 child  a b�Ib o    �H�H 0 folder_name  �I  �J  ` o      �G�G 0 
new_folder  ^ c�Fc L    !dd n    efe I     �Eg�D�E 0 	make_path  g h�Ch J    �B�B  �C  �D  f o    �A�A 0 
new_folder  �F  N iji l     �@�?�>�@  �?  �>  j klk l      �=mn�=  m��!@abstruct<!-- begin locale ja -->�ݒ肳��Ă���t�@�C���p�X�̃t�H���_�����܂��B <!-- begin locale en -->Make folders which indicating the path of the XFile instance.<!-- end locale -->@description<!-- begin locale ja -->
mkdir -p ���g���Ă���܂��B���s������ missing value���Ԃ�܂��B
�����ɃI�v�V�����Ƃ��ă��R�[�h��������������J�X�^�}�C�Y�ł��܂��B

{with_admin : boolean}

���̂Ƃ���Awith_admin �����ł��Btrue ���A�^����ƊǗ��Ҍ����Ńt�H���_�����܂��B
�I�v�V�������w�肵�Ȃ��ꍇ�́A��̃��X�g {} ��^���Ă��������B<!-- begin locale en -->
Using a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.<!-- end locale -->@result script object or missing value : <!-- begin locale ja --> �V����������t�H���_�� XFile �C���X�^���X�B<!-- begin locale en -->a XFile instance of newly created folder. <!-- end locale -->   n �oo� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > �-[�0U0�0f0D0�0�0�0�0�0�0�0n0�0�0�0�0�O\0�0~0Y0    < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 
 m k d i r   - p  0�O0c0f0d0O0�0~0Y0Y1eW0W0_0�   m i s s i n g   v a l u e0L��0�0~0Y0 
_ep0k0�0�0�0�0�0h0W0f0�0�0�0�0�0B0_0HR�O\0�0�0�0�0�0�0�0g0M0~0Y0 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
N�0n0h0S0�0 w i t h _ a d m i n  0`0Q0g0Y0 t r u e  0�0N0H0�0h{�t�j)�P0g0�0�0�0�0�O\0�0~0Y0 
0�0�0�0�0�0�c[�0W0j0DX4T0o0zz0n0�0�0�   { }  0�N0H0f0O0`0U0D0  < ! - -   b e g i n   l o c a l e   e n   - - > 
 U s i n g   a   s h e l l   c o m m a n d   " m k d i r   - p " . 
 B y   p a s s i n g   a   r e c o r d   o f   t h e   f o l l o w i n g   f o r m a t ,   y o u   c a n   m a k e   f o l d e r s   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s . 
 
 { w i t h _ a d m i n   :   b o o l e a n } 
 
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :    < ! - -   b e g i n   l o c a l e   j a   - - >  e�0W0OO\0c0_0�0�0�0�0n   X F i l e  0�0�0�0�0�0�0  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r .   < ! - -   e n d   l o c a l e   - - > l pqp i   � �rsr I      �<t�;�< 0 	make_path  t u�:u o      �9�9 0 opts  �:  �;  s k     Rvv wxw r     yzy m     �8
�8 boovfalsz o      �7�7 0 w_admin  x {|{ Z    }~�6�5} =   	� n    ��� 1    �4
�4 
pcls� o    �3�3 0 opts  � m    �2
�2 
reco~ r    ��� n    ��� o    �1�1 0 
with_admin  � o    �0�0 0 opts  � o      �/�/ 0 w_admin  �6  �5  | ��� Z    0���.�-� I    �,�+�*�, 0 item_exists  �+  �*  � Z    ,���)�� I    #�(�'�&�( 0 	is_folder  �'  �&  � L   & (��  f   & '�)  � m   + ,�%
�% 
msng�.  �-  � ��� I  1 @�$��
�$ .sysoexecTEXT���     TEXT� b   1 :��� m   1 2�� ���  m k d i r   - p  � l  2 9��#�"� n   2 9��� 1   7 9�!
�! 
strq� I   2 7� ���  0 
posix_path  �  �  �#  �"  � ���
� 
badm� o   ; <�� 0 w_admin  �  � ��� Z  A O����� I   A F���� 0 item_exists  �  �  � L   I K��  f   I J�  �  � ��� L   P R�� m   P Q�
� 
msng�  q ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l      ����  � 0 *!@group Reading and Writing File Contents    � ��� T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  � ��� l     ���
�  �  �
  � ��� l      �	���	  � � �!@abstruct<!-- begin locale ja -->�t�@�C���̓��e�� UTF-8 �e�L�X�g�Ƃ��ēǂݍ��݂܂��B<!-- begin locale en -->Read file contents as UTF-8 encoded text.<!-- end locale -->@result Unicode text (UTF-8)   � ���l ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0nQ�[�0�   U T F - 8  0�0�0�0�0h0W0f��0��00~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) � ��� i   � ���� I      ���� 0 read_as_utf8  �  �  � k     �� ��� I     ���� !0 check_existance_raising_error  �  �  � ��� L    �� I   ���
� .rdwrread****        ****� l   �� ��� I    �������� 0 as_alias  ��  ��  �   ��  � �����
�� 
as  � m    ��
�� 
utf8��  �  � ��� l     ��������  ��  ��  � ��� l      ������  �TN!@abstruct<!-- begin locale ja -->�t�@�C���� UTF-8 �e�L�X�g���������݂܂��B<!-- begin locale en -->Write data into the file as UTF-8 encoded text.<!-- end locale -->@param a_data (Unicode text or string) :<!-- begin locale ja -->�t�@�C���ɏ������ރf�[�^<!-- begin locale en -->data to write into the file.<!-- end locale -->   � ���b ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0k   U T F - 8  0�0�0�0�0�f�0M��00~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ d a t a   ( U n i c o d e   t e x t   o r   s t r i n g )   :  < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0kf�0M��0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > d a t a   t o   w r i t e   i n t o   t h e   f i l e .  < ! - -   e n d   l o c a l e   - - > � ��� i   � ���� I      ������� 0 write_as_utf8  � ���� o      ���� 
0 a_data  ��  ��  � k     %�� ��� r     ��� I    ����
�� .rdwropenshor       file� I     �������� 0 as_furl  ��  ��  � �����
�� 
perm� m    ��
�� boovtrue��  � o      ���� 
0 output  � ��� I   ����
�� .rdwrseofnull���     ****� o    ���� 
0 output  � �����
�� 
set2� m    ����  ��  � ��� I   ����
�� .rdwrwritnull���     ****� o    ���� 
0 a_data  � ����
�� 
refn� o    ���� 
0 output  � �����
�� 
as  � m    ��
�� 
utf8��  � ���� I    %�����
�� .rdwrclosnull���     ****� o     !���� 
0 output  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � " !@group Parent and Children    � ��� 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct<!-- begin locale ja -->XFile �̃C���X�^���X���Q�Ƃ��Ă���t�@�C��/�t�H���_���܂ރt�H���_���擾���܂��B<!-- begin locale en -->Obtain a folder containing the item referenced by the XFile instance.<!-- end locale -->@result script object : 
<!-- begin locale ja -->�e�t�H���_�� XFile �C���X�^���X<!-- begin locale en -->A XFile instance of the parent folder.<!-- end locale -->   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - >  X F i l e  0n0�0�0�0�0�0�0LS�qg0W0f0D0�0�0�0�0� /0�0�0�0�0�T+0�0�0�0�0�0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   
 < ! - -   b e g i n   l o c a l e   j a   - - >��0�0�0�0�0n   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > A   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r . < ! - -   e n d   l o c a l e   - - > � ��� i   � ���� I      �������� 0 parent_folder  ��  ��  � L     �� I     ������� 0 make_with_pathinfo  � ���� n   ��� n   ��� I    �������� 0 parent_folder  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  � ��� l     ��������  ��  ��  � ��� l      ��� ��  ���!@abstruct<!-- begin locale ja -->�t�H���_���̃t�@�C��/�t�H���_�𑊑΃p�X���w�肵�Ď擾���܂��B<!-- begin locale en -->Obtain an item in the folder with specifying a sub path from the target.<!-- end locale -->@description<!-- begin locale ja -->���݂��Ȃ��t�H���_�ɑ΂��Ď��s����� missing value ���Ԃ�܂��B<!-- begin locale en -->If this methods is sent to non exsisting folder, missing value is returend.<!-- end locale -->@param suppath(Unicode text) :<!-- begin locale ja -->�擾���鍀�ڂ̃T�u�p�X<!-- begin locale en -->sub path to obtain.<!-- end locale -->@result script object or missing value : <!-- begin locale ja --> XFile �C���X�^���X<!-- begin locale en -->a XFile instance <!-- end locale -->     �" ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�Q�0n0�0�0�0� /0�0�0�0�0�v�[�0�0�0�c[�0W0fS�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > [XW(0W0j0D0�0�0�0�0k[�0W0f[��L0Y0�0h   m i s s i n g   v a l u e  0L��0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   s u p p a t h ( U n i c o d e   t e x t )   :  < ! - -   b e g i n   l o c a l e   j a   - - >S�_�0Y0��v�0n0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > s u b   p a t h   t o   o b t a i n .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :    < ! - -   b e g i n   l o c a l e   j a   - - >   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   < ! - -   e n d   l o c a l e   - - > �  i   � � I      ������ 	0 child   �� o      ���� 0 subpath  ��  ��   Z     	��
 I     �������� 0 item_exists_without_update  ��  ��  	 L     I    ������ 0 make_with_pathinfo   �� n  	  n  
  I    ������ 	0 child   �� o    ���� 0 subpath  ��  ��   o   
 ���� 0 	_pathinfo 	_pathInfo  f   	 
��  ��  ��  
 L     m    ��
�� 
msng  l     ��������  ��  ��    i   � � I      ������ 0 child_posix   �� o      ���� 0 subpath  ��  ��   Z     "�� I     �������� 0 item_exists  ��  ��   k       !"! r    #$# I    �������� 0 
posix_path  ��  ��  $ o      ���� 
0 a_path  " %&% r    '(' b    )*) o    ���� 
0 a_path  * o    ���� 0 subpath  ( o      ���� 
0 a_path  & +��+ L    ,, I    ��-���� 0 	make_with  - .��. o    ���� 
0 a_path  ��  ��  ��  ��   L     "// m     !��
�� 
msng 010 l     ��������  ��  ��  1 232 l     ��������  ��  ��  3 454 l      ��67��  6!@abstruct<!-- begin locale ja -->�t�H���_���ő��Ɩ��O���d�����Ȃ� XFile �C���X�^���X�𐶐����܂��B<!-- begin locale en -->Obtain a XFile instance reference unique name item in the folder.<!-- end locale -->@description<!-- begin locale ja -->�t�H���_�łȂ� XFile �̃C���X�^���X�ɑ΂��Ď��s����ƁAmissing value ���Ԃ�܂��BXFile �̃C���X�^���X���t�@�C���Q�Ƃ����݂��Ȃ���΁Aerror number 1350 ���������܂��B<!-- begin locale en -->If the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.<!-- end locale -->@param a_candidate(Unicode text or list) :<!-- begin locale ja -->�擾�������t�@�C���Q�Ƃ̖��O�̌��B���ɑ��݂��閼�O�ł���ΕύX���������܂��B<!-- begin locale en -->A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.<!-- end locale -->@result script object :
<!-- begin locale ja -->XFile �C���X�^���X<!-- begin locale en -->a XFile instance<!-- end locale -->   7 �88 ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�Q�0gN�0hTRM0L�͉0W0j0D   X F i l e  0�0�0�0�0�0�0�ub0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0g0j0D   X F i l e  0n0�0�0�0�0�0�0k[�0W0f[��L0Y0�0h0 m i s s i n g   v a l u e  0L��0�0~0Y0  X F i l e  0n0�0�0�0�0�0�0L0�0�0�0�S�qg0L[XW(0W0j0Q0�0p0 e r r o r   n u m b e r   1 3 5 0  0Lvzu0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ c a n d i d a t e ( U n i c o d e   t e x t   o r   l i s t )   :  < ! - -   b e g i n   l o c a l e   j a   - - > S�_�0W0_0D0�0�0�0�S�qg0nTRM0nP��0e�0k[XW(0Y0�TRM0g0B0�0pY	f�0LR�0H0�0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   : 
 < ! - -   b e g i n   l o c a l e   j a   - - > X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e < ! - -   e n d   l o c a l e   - - > 5 9:9 i   � �;<; I      ��=���� 0 unique_child  = >��> o      ���� 0 a_candidate  ��  ��  < k     w?? @A@ Z     BC����B H     DD I     �������� 0 	is_folder  ��  ��  C L   	 EE m   	 
��
�� 
msng��  ��  A FGF r    )HIH n   JKJ I    ��L���� 0 
split_name  L M��M o    ���� 0 a_candidate  ��  ��  K o    ���� 0 pathinfo PathInfoI J      NN OPO o      ���� 0 
a_basename  P Q��Q o      ���� 0 a_suffix  ��  G RSR Z   * ;TU��VT =  * -WXW o   * +�� 0 a_suffix  X m   + ,�~
�~ 
msngU r   0 3YZY m   0 1[[ �\\  Z o      �}�} 0 a_suffix  ��  V r   6 ;]^] b   6 9_`_ m   6 7aa �bb  .` o   7 8�|�| 0 a_suffix  ^ o      �{�{ 0 a_suffix  S cdc r   < ?efe m   < =�z�z f o      �y�y 0 i  d ghg r   @ Ciji m   @ Akk �ll  j o      �x�x 0 escape_suffix  h mnm T   D too k   I opp qrq r   I Usts I   I S�wu�v�w 	0 child  u v�uv b   J Owxw b   J Myzy o   J K�t�t 0 
a_basename  z o   K L�s�s 0 escape_suffix  x o   M N�r�r 0 a_suffix  �u  �v  t o      �q�q 0 a_child  r {�p{ Z   V o|}�o~| n  V [� I   W [�n�m�l�n 0 item_exists  �m  �l  � o   V W�k�k 0 a_child  } k   ^ k�� ��� r   ^ e��� b   ^ c��� 1   ^ _�j
�j 
spac� l  _ b��i�h� c   _ b��� o   _ `�g�g 0 i  � m   ` a�f
�f 
utxt�i  �h  � o      �e�e 0 escape_suffix  � ��d� r   f k��� [   f i��� o   f g�c�c 0 i  � m   g h�b�b � o      �a�a 0 i  �d  �o  ~  S   n o�p  n ��`� L   u w�� o   u v�_�_ 0 a_child  �`  : ��� l     �^�]�\�^  �]  �\  � ��� i   � ���� I      �[�Z�Y�[ 0 list_children  �Z  �Y  � L     
�� I    	�X��W
�X .earslfdrutxt  @    file� I     �V�U�T�V 0 as_furl  �U  �T  �W  � ��� l     �S�R�Q�S  �R  �Q  � ��� l      �P���P  �("!
@abstruct 
<!--begin locale ja-->
�t�H���_���̃t�@�C��/�t�H���_�������ɂ��ăX�N���v�g�I�u�W�F�N�g�� do �n���h�����J��Ԃ����s���܂��B
<!--begin locale en-->
Call do handler of given script object with each item in the folder as an argument.
<!--end locale-->
@description 
<!--begin locale ja-->
�t�H���_�̎Q�Ƃ�ێ����Ă��� XFile �ɑ΂��Ď��s�ł��܂��B

a_script �͈�����������Ƃ� do �n���h�����������Ă��Ȃ���΂Ȃ�܂���B
do �n���h���ɂ́A�t�H���_���̍��ڂ� XFile �C���X�^���X���n����܂��B
do �n���h���̕Ԃ�l�� true �������� false �ł���K�v������܂��Bdo �n���h���� false �� �Ԃ��Ə����𒆎~���܂��B

<!--begin locale en-->
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. Each XFile instance in the target folder is passed to the &quot;do&quot; handler.The do handler must return true or false. When the do handler return false, the process is stoped immediately.<!--end locale-->
@param
<!--begin locale ja-->
a_script(�X�N���v�g�I�u�W�F�N�g) : ������������Ƃ� do �n���h���������Ă���K�v������܂��B do �n���h���͐^�U�l��Ԃ��Ȃ��Ă͂Ȃ�܂���B
<!--begin locale en-->
a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
<!--end locale-->
   � ���t ! 
 @ a b s t r u c t   
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0�Q�0n0�0�0�0� /0�0�0�0�0�_ep0k0W0f0�0�0�0�0�0�0�0�0�0�0�0n   d o  0�0�0�0�0�~p0���0W[��L0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   f o l d e r   a s   a n   a r g u m e n t . 
 < ! - - e n d   l o c a l e - - > 
 @ d e s c r i p t i o n   
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0�0nS�qg0�O�c0W0f0D0�   X F i l e  0k[�0W0f[��L0g0M0~0Y0 
 
 a _ s c r i p t  0o_ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�[���0W0f0D0j0Q0�0p0j0�0~0[0�0 
 d o  0�0�0�0�0k0o00�0�0�0�Q�0n�v�0n   X F i l e  0�0�0�0�0�0�0Ln!0U0�0~0Y0 
 d o  0�0�0�0�0n��0�P$0o   t r u e  0�0W0O0o   f a l s e  0g0B0�_ŉ�0L0B0�0~0Y0 d o  0�0�0�0�0L   f a l s e  0�  ��0Y0hQ�t0�N-kb0W0~0Y0 
 
 < ! - - b e g i n   l o c a l e   e n - - > 
 e a c h   h a n d l e r   c a n   p e f o r m   f o r   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   a   f o l d e r . 
 
 a _ s c r i p t   m u s t   h a v e   a   & q u o t ; d o & q u o t ;   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .    E a c h   X F i l e   i n s t a n c e   i n   t h e   t a r g e t   f o l d e r   i s   p a s s e d   t o   t h e   & q u o t ; d o & q u o t ;   h a n d l e r .  T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y .  < ! - - e n d   l o c a l e - - > 
 @ p a r a m 
 < ! - - b e g i n   l o c a l e   j a - - > 
 a _ s c r i p t (0�0�0�0�0�0�0�0�0�0�0� )   :  _ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�c0c0f0D0�_ŉ�0L0B0�0~0Y0   d o  0�0�0�0�0owP}P$0���0U0j0O0f0o0j0�0~0[0�0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
 < ! - - e n d   l o c a l e - - > 
� ��� i   � ���� I      �O��N�O 0 each  � ��M� o      �L�L 0 a_script  �M  �N  � k     @�� ��� r     ��� I     �K�J�I�K 0 list_children  �J  �I  � o      �H�H 
0 a_list  � ��� h    �G��G 0 listwrapper ListWrapper� j     �F�
�F 
pcnt� o     �E�E 
0 a_list  � ��� l   �D�C�B�D  �C  �B  � ��A� Y    @��@���?� k    ;�� ��� r    +��� I    )�>��=�> 	0 child  � ��<� n    %��� 4   " %�;�
�; 
cobj� o   # $�:�: 0 n  � n    "��� 1     "�9
�9 
pcnt� o     �8�8 0 listwrapper ListWrapper�<  �=  � o      �7�7 
0 x_item  � ��6� Z   , ;���5�4� H   , 3�� n  , 2��� I   - 2�3��2�3 0 do  � ��1� o   - .�0�0 
0 x_item  �1  �2  � o   , -�/�/ 0 a_script  �  S   6 7�5  �4  �6  �@ 0 n  � m    �.�. � I   �-��,
�- .corecnte****       ****� o    �+�+ 
0 a_list  �,  �?  �A  � ��� l     �*�)�(�*  �)  �(  � ��� l      �'���'  � * $!@group Working with Shell Commands    � ��� H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  � ��� l     �&�%�$�&  �%  �$  � ��� l      �#���#  ��{!@abstruct
<!-- begin locale ja -->
�^�[�Q�b�g�������ɂƂ��āA�V�F���R�}���h�����s���܂��B
<!-- begin locale en -->
Run passed shell command taking the target as an argument.
<!-- end locale -->
@param a_command(text) : shell command
@result text : 
<!-- begin locale ja -->�V�F���R�}���h�̕W���o��
<!-- begin locale en -->standard output of the shell command<!-- end locale -->
   � ���� ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�0�0�0�0�_ep0k0h0c0f00�0�0�0�0�0�0�0�[��L0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 R u n   p a s s e d   s h e l l   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   a _ c o m m a n d ( t e x t )   :   s h e l l   c o m m a n d 
 @ r e s u l t   t e x t   :   
 < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0�0�0�0njn�Q�R� 
 < ! - -   b e g i n   l o c a l e   e n   - - > s t a n d a r d   o u t p u t   o f   t h e   s h e l l   c o m m a n d < ! - -   e n d   l o c a l e   - - > 
� ��� i   � ���� I      �"��!�" 0 perform_shell  � ��� o      � �  0 	a_command  � ��� o      �� 0 post_command  �  �!  � L     �� I    ���
� .sysoexecTEXT���     TEXT� b     ��� b     ��� b     	��� b     ��� o     �� 0 	a_command  � 1    �
� 
spac� I    ���� 0 quoted_path  �  �  � 1   	 
�
� 
spac� o    �� 0 post_command  �  � ��� l     ����  �  �  � ��� l      ����  �a[!@abstruct
<!-- begin locale ja -->
�^�[�Q�b�g�������ɂƂ��āAtest �R�}���h�����s���܂��B
<!-- begin locale en -->
run test command taking the target as an argument.
<!-- end locale -->
@param option(text) : 
<!-- begin locale ja -->
test �R�}���h�ɗ^����I�v�V�����B�ڂ����� test �R�}���h�� man �y�[�W�����Ă��������B
<!-- begin locale en -->
An option to passed to the test command. See the man page of the test command.
<!-- end locale -->
@result boolean : 
<!-- begin locale ja -->test �R�}���h������������ true�B
<!-- begin locale en -->true if test command successfully exits.<!-- end locale -->
   � ���, ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�0�0�0�0�_ep0k0h0c0f0 t e s t  0�0�0�0�0�[��L0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 r u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   o p t i o n ( t e x t )   :   
 < ! - -   b e g i n   l o c a l e   j a   - - > 
 t e s t  0�0�0�0�0kN0H0�0�0�0�0�0�0�s0W0O0o   t e s t  0�0�0�0�0n   m a n  0�0�0�0���0f0O0`0U0D0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 A n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   b o o l e a n   :   
 < ! - -   b e g i n   l o c a l e   j a   - - > t e s t  0�0�0�0�0LbR�0W0_0�   t r u e0 
 < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . < ! - -   e n d   l o c a l e   - - > 
� ��� i   � ���� I      ���� 0 
shell_test  � ��� o      �� 
0 option  �  �  � k     �� ��� Q     ���� I   ���
� .sysoexecTEXT���     TEXT� b    � � b     b     m     � 
 t e s t   o    �
�
 
0 option   1    �	
�	 
spac  I    ���� 0 quoted_path  �  �  �  � R      ���
� .ascrerr ****      � ****�  �  � L     m    �
� boovfals� � L    		 m    � 
�  boovtrue�  � 

 l     ��������  ��  ��    l      ����    == private *    �  = =   p r i v a t e   *  l     ��������  ��  ��    i   � � I      �������� 0 	deep_copy  ��  ��   L      I     ������ 0 make_with_pathinfo   �� n    n    I    �������� 	0 clone  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f    ��  ��    l     ��������  ��  ��    !  i   � �"#" I      �������� 0 item_ref  ��  ��  # L     $$ n    %&% n   '(' I    �������� 0 item_ref  ��  ��  ( o    ���� 0 	_pathinfo 	_pathInfo&  f     ! )*) l     ��������  ��  ��  * +,+ i   � �-.- I      �������� !0 check_existance_raising_error  ��  ��  . Z     !/0����/ H     11 l    2����2 n    343 n   565 I    �������� 0 item_exists_without_update  ��  ��  6 o    ���� 0 	_pathinfo 	_pathInfo4  f     ��  ��  0 R    ��78
�� .ascrerr ****      � ****7 b    9:9 b    ;<; m    == �>> 
 i t e m  < n    ?@? 1    ��
�� 
strq@ l   A����A n   BCB n   DED I    �������� 0 as_text  ��  ��  E o    ���� 0 	_pathinfo 	_pathInfoC  f    ��  ��  : m    FF �GG     d o e s   n o t   e x i s t .8 ��H��
�� 
errnH m    ����F��  ��  ��  , IJI l     ��������  ��  ��  J KLK i   � �MNM I      �������� 0 update_pathinfo  ��  ��  N k     $OO PQP r     RSR n    TUT I    ��V���� 0 make_with_opts  V WXW n   YZY n   [\[ I    �������� 0 item_ref  ��  ��  \ o    ���� 0 	_pathinfo 	_pathInfoZ  f    X ]��] K    ^^ ��_���� 0 prefering_posix  _ n   `a` n   bcb I    �������� 0 is_posix  ��  ��  c o    ���� 0 	_pathinfo 	_pathInfoa  f    ��  ��  ��  U o     ���� 0 pathinfo PathInfoS n     ded o    ���� 0 	_pathinfo 	_pathInfoe  f    Q f��f L    $gg n   #hih o     "���� 0 	_pathinfo 	_pathInfoi  f     ��  L jkj l     ��������  ��  ��  k lml i   � �non I      �������� 0 dump  ��  ��  o L     pp I     �������� 0 
posix_path  ��  ��  m qrq l     ��������  ��  ��  r sts i   � �uvu I     ������
�� .ascrcmnt****      � ****��  ��  v M     ww I     ��x��
�� .ascrcmnt****      � ****x I    �������� 0 dump  ��  ��  ��  t yzy l     ��������  ��  ��  z {|{ i   � �}~} I      �������� 	0 debug  ��  ��  ~ k     2 ��� I    ����
�� .MoloBootscpt        scpt� l    ������ I    ������
�� .MoloMKloscpt    ��� null��  ��  ��  ��  � �����
�� 
forM�  f    ��  � ��� r    ��� 4    ���
�� 
psxf� m    �� ��� F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d f� o      ���� 
0 a_path  � ��� r    ��� I    ������� 0 	make_with  � ���� o    ���� 
0 a_path  ��  ��  � o      ���� 0 a_xfile  � ��� l   ������  � K Ereturn a_result's change_path_extension(missing value)'s posix_path()   � ��� � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )� ��� r    (��� n   &��� I   ! &������� 0 unique_child  � ���� m   ! "�� ��� : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f��  ��  � n   !��� I    !�������� 0 parent_folder  ��  ��  � o    ���� 0 a_xfile  � o      ���� 0 new_named_file  � ���� I  ) 2�����
�� .ascrcmnt****      � ****� n  ) .��� I   * .��~�}� 0 	item_name  �~  �}  � o   ) *�|�| 0 new_named_file  ��  ��  | ��� l     �{�z�y�{  �z  �y  � ��� i   � ���� I     �x�w�v
�x .aevtoappnull  �   � ****�w  �v  � k     �� ��� l     �u���u  �  return debug()   � ���  r e t u r n   d e b u g ( )� ��t� Q     ���� I   �s��
�s .HBsushHBTEXT    ��� file� l   ��r�q� I   �p��o
�p .earsffdralis        afdr�  f    �o  �r  �q  � �n��m
�n 
rcIP� m   	 
�l
�l boovtrue�m  � R      �k��
�k .ascrerr ****      � ****� o      �j�j 0 msg  � �i��h
�i 
errn� o      �g�g 	0 errno  �h  � I   �f��e
�f .sysodisAaleR        TEXT� l   ��d�c� b    ��� b    ��� o    �b�b 0 msg  � o    �a
�a 
ret � o    �`�` 	0 errno  �d  �c  �e  �t  � ��_� l     �^�]�\�^  �]  �\  �_       A�[�  ��Z������������������������������������������������������� �[  � ?�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� �����
�Y 
pnam
�X 
vers�W 0 pathinfo PathInfo�V 0 _prefer_posix  �U 0 prefer_posix  �T 0 	make_with  �S 0 make_with_pathinfo  �R 0 change_name  �Q 0 change_folder  �P 0 change_path_extension  �O 0 as_alias  �N 0 as_furl  �M 0 hfs_path  �L 0 
posix_path  �K 0 normalized_posix_path  �J 0 quoted_path  �I 0 	is_folder  �H 0 
is_package  �G 0 is_alias  �F 0 
is_symlink  �E 0 
is_visible  �D 0 type_identifier  �C 0 	set_types  �B 0 info  �A 0 re_info  �@ 0 	item_name  �? 0 basename  �> 0 path_extension  �= 0 update_cache  �< 0 bundle_resource  �; $0 bundle_infoplist bundle_InfoPlist�: 0 bundle_resources_folder  �9 0 item_exists  �8 0 item_exists_without_update  
�7 .coredoexbool       obj �6 0 	rename_to  �5 0 copy_to  �4 0 copy_with_opts  �3 0 finder_copy_to  �2 0 move_to  �1 0 resolve_alias  �0 0 
into_trash  �/ 
0 remove  �. 0 make_folder  �- 0 	make_path  �, 0 read_as_utf8  �+ 0 write_as_utf8  �* 0 parent_folder  �) 	0 child  �( 0 child_posix  �' 0 unique_child  �& 0 list_children  �% 0 each  �$ 0 perform_shell  �# 0 
shell_test  �" 0 	deep_copy  �! 0 item_ref  �  !0 check_existance_raising_error  � 0 update_pathinfo  � 0 dump  
� .ascrcmnt****      � ****� 	0 debug  
� .aevtoappnull  �   � ****� ���
� 
pcls
� 
MoSp�  
�Z boovtrue� � ,���� 0 prefer_posix  � ��   �� 0 bool  �   �� 0 bool   �� 0 _prefer_posix  � �)�,F� � D���� 0 	make_with  � �	� 	  �
�
 0 file_ref  �   �	���	 0 file_ref  � 
0 is_hfs  � 0 	path_info   	���� `��� ��
� 
ctxt
� 
utxt
� 
TEXT
� 
pcls� 0 make_with_hfs  � 0 _prefer_posix  �  0 make_with_posix  �� 0 make_with_pathinfo  � YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ � �� �����
���� 0 make_with_pathinfo  �� ����   ���� 0 	path_info  ��  
 �������� 0 	path_info  �� 0 a_parent  �� 0 xfile XFile �� ��� 0 xfile XFile ��������
�� .ascrinit****      � **** k        �  �  �  �  �����  ��  ��   ����������
�� 
pare�� 0 	_pathinfo 	_pathInfo�� 0 _inforecord _infoRecord�� 0 _prefer_posix  �� 0 _is_symlink   ��������������
�� 
pare�� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� 0 _is_symlink  �� !b  N  Ob   �O�Ob   j+ �O��� )E�O��K S�O�� �� ��������� 0 change_name  �� ����   ���� 
0 a_name  ��   ������ 
0 a_name  �� 0 	path_info   �������� 0 	_pathinfo 	_pathInfo�� 0 change_name  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ � �� ��������� 0 change_folder  �� ����   ���� 0 
folder_ref  ��   ������ 0 
folder_ref  �� 0 	path_info   �������� 0 	_pathinfo 	_pathInfo�� 0 change_folder  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ � �� ��������� 0 change_path_extension  �� ����   ���� 0 a_suffix  ��   ���� 0 a_suffix   �������� 0 	_pathinfo 	_pathInfo�� 0 change_path_extension  �� 0 make_with_pathinfo  �� *)�,�k+ k+ � ������ ���� 0 as_alias  ��  ��      �������� !0 check_existance_raising_error  �� 0 	_pathinfo 	_pathInfo�� 0 as_alias  �� *j+  O)�,j+ � ��)����!"���� 0 as_furl  ��  ��  !  " ������ 0 	_pathinfo 	_pathInfo�� 0 as_furl  �� 	)�,j+ � ��9����#$���� 0 hfs_path  ��  ��  #  $ ������ 0 	_pathinfo 	_pathInfo�� 0 hfs_path  �� 	)�,j+ � ��I����%&���� 0 
posix_path  ��  ��  %  & ������ 0 	_pathinfo 	_pathInfo�� 0 
posix_path  �� 	)�,j+ � ��Y����'(���� 0 normalized_posix_path  ��  ��  '  ( ������ 0 	_pathinfo 	_pathInfo�� 0 normalized_posix_path  �� 	)�,j+ � ��d����)*���� 0 quoted_path  ��  ��  )  * �������� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
strq�� )�,j+ �,E� ��}����+,���� 0 	is_folder  ��  ��  + ���� 0 info_rec  , ������ 0 info  
�� 
asdr�� *j+  E�O��,E� �������-.���� 0 
is_package  ��  ��  - ���� 0 info_rec  . ������ 0 info  
�� 
ispk�� *j+  E�O��,E� �������/0���� 0 is_alias  ��  ��  / ���� 0 info_rec  0 ������ 0 info  
�� 
alis�� *j+  E�O��,E� �������12���� 0 
is_symlink  ��  ��  1  2 �������������� 0 _is_symlink  
�� 
msng�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  �  �� 4)�,�  & �*j+ %j Oe)�,FW X  f)�,FY hO)�,E� �~��}�|34�{�~ 0 
is_visible  �}  �|  3 �z�z 0 info_rec  4 �y�x�y 0 info  
�x 
pvis�{ *j+  E�O��,E� �w��v�u56�t�w 0 type_identifier  �v  �u  5 �s�s 0 info_rec  6 �r�q�r 0 info  
�q 
utid�t *j+  E�O��,E� �p�o�n78�m�p 0 	set_types  �o �l9�l 9  �k�j�k 0 creator_code  �j 0 	type_code  �n  7 �i�h�g�i 0 creator_code  �h 0 	type_code  �g 
0 a_file  8 �f�e,�d�c�b�a�f 0 	is_folder  �e 0 as_alias  
�d 
fcrt
�c 
asty
�b 
msng�a 0 _inforecord _infoRecord�m ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h� �`<�_�^:;�]�` 0 info  �_  �^  :  ; �\�[�Z�Y�X�\ 0 _inforecord _infoRecord
�[ 
msng�Z !0 check_existance_raising_error  �Y 0 as_furl  
�X .sysonfo4asfe        file�] &)�,�  *j+ O*j+ j )�,FY hO)�,E� �W]�V�U<=�T�W 0 re_info  �V  �U  <  = �S�R�Q�S 0 as_furl  
�R .sysonfo4asfe        file�Q 0 _inforecord _infoRecord�T *j+  j )�,FO)�,E� �P{�O�N>?�M�P 0 	item_name  �O  �N  >  ? �L�K�L 0 	_pathinfo 	_pathInfo�K 0 	item_name  �M 	)�,j+ � �J��I�H@A�G�J 0 basename  �I  �H  @  A �F�E�F 0 	_pathinfo 	_pathInfo�E 0 basename  �G 	)�,j+ � �D��C�BBC�A�D 0 path_extension  �C  �B  B  C �@�?�@ 0 	_pathinfo 	_pathInfo�? 0 path_extension  �A 	)�,j+ � �>��=�<DE�;�> 0 update_cache  �=  �<  D  E �:�9�8�7�6�: 0 _inforecord _infoRecord
�9 
msng�8 !0 check_existance_raising_error  �7 0 item_ref  
�6 .sysonfo4asfe        file�;  )�,� *j+ O*j+ j )�,FY h� �5��4�3FG�2�5 0 bundle_resource  �4 �1H�1 H  �0�0 0 resource_name  �3  F �/�/ 0 resource_name  G �.�-�,�+
�. 
in B�- 0 as_alias  
�, .sysorpthalis        TEXT�+ 0 	make_with  �2 *��*j+ l k+ � �*��)�(IJ�'�* $0 bundle_infoplist bundle_InfoPlist�)  �(  I  J ��&�& 0 child_posix  �' *�k+ � �%��$�#KL�"�% 0 bundle_resources_folder  �$  �#  K  L ��!�! 0 child_posix  �" *�k+ � � ���MN��  0 item_exists  �  �  M  N ��� 0 	_pathinfo 	_pathInfo� 0 item_exists  � 	)�,j+ � ���OP�� 0 item_exists_without_update  �  �  O  P ��� 0 	_pathinfo 	_pathInfo� 0 item_exists_without_update  � 	)�,j+ � ���QR�
� .coredoexbool       obj �  �  Q  R �� 0 item_exists  � *j+  � �+��ST�� 0 	rename_to  � �U� U  �
�
 0 new_name  �  S �	�	 0 new_name  T �B������� 0 item_exists  � 0 item_ref  
� 
pnam
� 
msng� 0 _inforecord _infoRecord� 0 	_pathinfo 	_pathInfo� 0 set_name  � 1*j+   fY hO� �)j+ �,FUO�)�,FO)�,�k+ Oe� �_� ��VW��� 0 copy_to  �  ��X�� X  ���� 0 a_destination  ��  V ���� 0 a_destination  W ����
�� 
msng�� 0 copy_with_opts  �� 	*��l+ � ��q����YZ���� 0 copy_with_opts  �� ��[�� [  ������ 0 a_destination  �� 0 opts  ��  Y ������������������������ 0 a_destination  �� 0 opts  �� 0 w_replacing  �� 0 w_admin  �� 0 
w_removing  �� 0 command  �� 0 com_opts  �� 0 is_folder_to  �� 0 destination_path  �� 0 source_path  �� 0 	a_command  Z �������������������������������	����!��������������
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
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�� ��Z����\]���� 0 finder_copy_to  �� ��^�� ^  ������ 0 a_destination  �� 0 with_replacing  ��  \ ������������ 0 a_destination  �� 0 with_replacing  �� 0 destination  �� 0 source_alias  �� 0 new_item  ] ��x�������������� 0 as_alias  
�� 
insh
�� 
alrp�� 
�� .coreclon****      � ****
�� 
alis�� 0 	make_with  �� +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ � �������_`���� 0 move_to  �� ��a�� a  ���� 0 a_destination  ��  _ �������� 0 a_destination  �� 0 destination_path  �� 0 source_path  ` ������������� 0 item_exists  �� 0 
posix_path  
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� )*j+  O�j+ �,E�O*j+ �,E�O�%�%�%j Oe� �������bc���� 0 resolve_alias  ��  ��  b ���������� 0 
x_original  �� 0 info_rec  �� 0 original_item  �� 
0 errmsg  c ������������������������� 0 
is_symlink  �� 0 	deep_copy  �� 0 item_exists  
�� 
msng�� 0 info  
�� 
alis�� 0 as_alias  
�� 
orig�� 
0 errmsg  ��  �� 0 	make_with  �� _*j+   *j+ E�O�j+  �Y �Y hO*j+ E�O��,E * � )j+ �,�&E�UW 	X 	 
�O*�k+ Y )� ������de���� 0 
into_trash  ��  ��  d ���� 
0 a_file  e �������� 0 as_alias  
�� .coredeloobj        obj �� 0 update_pathinfo  �� *j+  E�O� �j UO*j+ � ������fg���� 
0 remove  ��  ��  f ������ 
0 a_file  �� 
0 a_path  g 	��������-���������� 0 
posix_path  
�� 
strq�� 0 	_pathinfo 	_pathInfo�� 0 as_text  
�� .sysoexecTEXT���     TEXT�� 0 	_item_ref  
�� 
msng�� 0 _inforecord _infoRecord�� -*j+  �,E�O)�,j+ E�O�%j O�)�,�,FO�)�,FO)� ��P����hi���� 0 make_folder  �� ��j�� j  ���� 0 folder_name  ��  h ����� 0 folder_name  � 0 
new_folder  i �~�}�|�{�~ 0 item_exists  
�} 
msng�| 	0 child  �{ 0 	make_path  �� "*j+   �Y hO*�k+ E�O�jvk+ � �zs�y�xkl�w�z 0 	make_path  �y �vm�v m  �u�u 0 opts  �x  k �t�s�t 0 opts  �s 0 w_admin  l �r�q�p�o�n�m��l�k�j�i
�r 
pcls
�q 
reco�p 0 
with_admin  �o 0 item_exists  �n 0 	is_folder  
�m 
msng�l 0 
posix_path  
�k 
strq
�j 
badm
�i .sysoexecTEXT���     TEXT�w SfE�O��,�  
��,E�Y hO*j+  *j+  )Y �Y hO�*j+ �,%�l 
O*j+  )Y hO�� �h��g�fno�e�h 0 read_as_utf8  �g  �f  n  o �d�c�b�a�`�d !0 check_existance_raising_error  �c 0 as_alias  
�b 
as  
�a 
utf8
�` .rdwrread****        ****�e *j+  O*j+ ��l � �_��^�]pq�\�_ 0 write_as_utf8  �^ �[r�[ r  �Z�Z 
0 a_data  �]  p �Y�X�Y 
0 a_data  �X 
0 output  q �W�V�U�T�S�R�Q�P�O�N�M�W 0 as_furl  
�V 
perm
�U .rdwropenshor       file
�T 
set2
�S .rdwrseofnull���     ****
�R 
refn
�Q 
as  
�P 
utf8�O 
�N .rdwrwritnull���     ****
�M .rdwrclosnull���     ****�\ &*j+  �el E�O��jl O����� 	O�j 
� �L��K�Jst�I�L 0 parent_folder  �K  �J  s  t �H�G�F�H 0 	_pathinfo 	_pathInfo�G 0 parent_folder  �F 0 make_with_pathinfo  �I *)�,j+ k+ � �E�D�Cuv�B�E 	0 child  �D �Aw�A w  �@�@ 0 subpath  �C  u �?�? 0 subpath  v �>�=�<�;�:�> 0 item_exists_without_update  �= 0 	_pathinfo 	_pathInfo�< 	0 child  �; 0 make_with_pathinfo  
�: 
msng�B *j+   *)�,�k+ k+ Y �� �9�8�7xy�6�9 0 child_posix  �8 �5z�5 z  �4�4 0 subpath  �7  x �3�2�3 0 subpath  �2 
0 a_path  y �1�0�/�.�1 0 item_exists  �0 0 
posix_path  �/ 0 	make_with  
�. 
msng�6 #*j+   *j+ E�O��%E�O*�k+ Y �� �-<�,�+{|�*�- 0 unique_child  �, �)}�) }  �(�( 0 a_candidate  �+  { �'�&�%�$�#�"�' 0 a_candidate  �& 0 
a_basename  �% 0 a_suffix  �$ 0 i  �# 0 escape_suffix  �" 0 a_child  | �!� ��[ak�����! 0 	is_folder  
�  
msng� 0 
split_name  
� 
cobj� 	0 child  � 0 item_exists  
� 
spac
� 
utxt�* x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�� ����~�� 0 list_children  �  �  ~   ��� 0 as_furl  
� .earslfdrutxt  @    file� *j+  j � �������� 0 each  � ��� �  �� 0 a_script  �  � ����
�	� 0 a_script  � 
0 a_list  � 0 listwrapper ListWrapper�
 0 n  �	 
0 x_item  � 	���������� 0 list_children  � 0 listwrapper ListWrapper� ��� ������
� .ascrinit****      � ****� k     �� �����  �   ��  � ��
�� 
pcnt� ��
�� 
pcnt�� b  �
� .corecnte****       ****
� 
pcnt
� 
cobj� 	0 child  � 0 do  � A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��� ������������� 0 perform_shell  �� ����� �  ������ 0 	a_command  �� 0 post_command  ��  � ������ 0 	a_command  �� 0 post_command  � ������
�� 
spac�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT�� ��%*j+ %�%�%j � ������������� 0 
shell_test  �� ����� �  ���� 
0 option  ��  � ���� 
0 option  � ����������
�� 
spac�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  ��   �%�%*j+ %j W 	X  fOe� ������������ 0 	deep_copy  ��  ��  �  � �������� 0 	_pathinfo 	_pathInfo�� 	0 clone  �� 0 make_with_pathinfo  �� *)�,j+ k+ � ��#���������� 0 item_ref  ��  ��  �  � ������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 	)�,j+ � ��.���������� !0 check_existance_raising_error  ��  ��  �  � ��������=����F�� 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  
�� 
errn��F�� 0 as_text  
�� 
strq�� ")�,j+  )��l�)�,j+ �,%�%Y h� ��N���������� 0 update_pathinfo  ��  ��  �  � ������������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 prefering_posix  �� 0 is_posix  �� 0 make_with_opts  �� %b  )�,j+ �)�,j+ ll+ )�,FO)�,E  ��o���������� 0 dump  ��  ��  �  � ���� 0 
posix_path  �� *j+   ��v��������
�� .ascrcmnt****      � ****��  ��  �  � ������ 0 dump  
�� .ascrcmnt****      � ****�� )jd*j+    ��~���������� 	0 debug  ��  ��  � �������� 
0 a_path  �� 0 a_xfile  �� 0 new_named_file  � ��������������������
�� .MoloMKloscpt    ��� null
�� 
forM
�� .MoloBootscpt        scpt
�� 
psxf�� 0 	make_with  �� 0 parent_folder  �� 0 unique_child  �� 0 	item_name  
�� .ascrcmnt****      � ****�� 3*j  �)l O)��/E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
 �����������
�� .aevtoappnull  �   � ****��  ��  � ������ 0 msg  �� 	0 errno  � �������������
�� .earsffdralis        afdr
�� 
rcIP
�� .HBsushHBTEXT    ��� file�� 0 msg  � ������
�� 
errn�� 	0 errno  ��  
�� 
ret 
�� .sysodisAaleR        TEXT��   )j  �el W X  ��%�%j ascr  ��ޭ