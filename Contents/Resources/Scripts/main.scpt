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
msng �  ��� � j    �� ��� 0 _prefer_posix   � n    � � � I    �������� 0 is_posix  ��  ��   � o    ���� 0 	path_info  ��   �  ��� � L     � � o    ���� 0 xfile XFile��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �%!@group Make a New Instance with Changing Contents of an Instance<!-- begin locale ja -->�����̃C���X�^���X�̈ꕔ�̓��e��ύX���āA�V�����C���X�^���X�𐶐����܂��B<!-- begin locale en -->Making a new XFile instance with changing a part of the exisiting instance.<!-- end locale -->    � � � �� ! @ g r o u p   M a k e   a   N e w   I n s t a n c e   w i t h   C h a n g i n g   C o n t e n t s   o f   a n   I n s t a n c e  < ! - -   b e g i n   l o c a l e   j a   - - > e�[X0n0�0�0�0�0�0�0nN ��0nQ�[�0�Y	f�0W0f0e�0W0D0�0�0�0�0�0�0�ub0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k i n g   a   n e w   X F i l e   i n s t a n c e   w i t h   c h a n g i n g   a   p a r t   o f   t h e   e x i s i t i n g   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   ���!@abstruct<!-- begin locale ja -->�Q�Ƃ���t�@�C���̃t�@�C������ύX���� XFile ������܂��B<!-- begin locale en -->Make a new instance with changing file name of the instance<!-- end locale -->@param a_name (Unicode text or string) : <!-- begin locale ja -->�Q�Ƃ������t�@�C����<!-- begin locale en -->a file name<!-- end locale -->@result script object : a new instance of XFile    � � � �� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S�qg0Y0�0�0�0�0�0n0�0�0�0�T0�Y	f�0W0_   X F i l e  0�0d0O0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f i l e   n a m e   o f   t h e   i n s t a n c e  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :    < ! - -   b e g i n   l o c a l e   j a   - - >S�qg0W0_0D0�0�0�0�T  < ! - -   b e g i n   l o c a l e   e n   - - > a   f i l e   n a m e  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i     � � � I      �� ����� 0 change_name   �  ��� � o      ���� 
0 a_name  ��  ��   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �� ����� 0 change_name   �  �� � o    �~�~ 
0 a_name  �  ��   � o    �}�} 0 	_pathinfo 	_pathInfo �  f      � o      �|�| 0 	path_info   �  ��{ � L     � � I    �z ��y�z 0 make_with_pathinfo   �  ��x � o    �w�w 0 	path_info  �x  �y  �{   �  � � � l     �v�u�t�v  �u  �t   �  � � � l      �s � ��s   ���!@abstruct<!-- begin locale ja -->�Q�Ƃ���t�@�C���̃t�H���_��ύX���� XFile ������܂��B<!-- begin locale en -->Make a new instance with changing folder of the instance<!-- end locale -->@param a_name (alias, Unicode text, file URL, file specification) :<!-- begin locale ja -->�t�H���_�ւ̎Q��<!-- begin locale en -->a reference to folder<!-- end locale -->@result script object : a new instance of XFile    � � � � ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S�qg0Y0�0�0�0�0�0n0�0�0�0�0�Y	f�0W0_   X F i l e  0�0d0O0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   f o l d e r   o f   t h e   i n s t a n c e  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ n a m e   ( a l i a s ,   U n i c o d e   t e x t ,   f i l e   U R L ,   f i l e   s p e c i f i c a t i o n )   :  < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0x0nS�qg  < ! - -   b e g i n   l o c a l e   e n   - - > a   r e f e r e n c e   t o   f o l d e r  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i     # � � � I      �r ��q�r 0 change_folder   �  ��p � o      �o�o 0 
folder_ref  �p  �q   � k      � �  � � � r     
 � � � n     � � � n    � � � I    �n ��m�n 0 change_folder   �  ��l � o    �k�k 0 
folder_ref  �l  �m   � o    �j�j 0 	_pathinfo 	_pathInfo �  f      � o      �i�i 0 	path_info   �  ��h � L     � � I    �g ��f�g 0 make_with_pathinfo   �  ��e � o    �d�d 0 	path_info  �e  �f  �h   �  � � � l     �c�b�a�c  �b  �a   �  � � � l      �` � ��`   ���!@abstruct<!-- begin locale ja -->�Q�Ƃ���t�@�C���̊g���q��ύX���� XFile ������܂��B<!-- begin locale en -->Make a new instance with changing path extension of the instance<!-- end locale -->@param a_name (Unicode text or string) :<!-- begin locale ja -->�t�@�C���̊g���q�B�h�b�h "." �Ŏn�܂��Ă���K�v������܂��B<!-- begin locale en -->path extension, should be starts with a dot ".".<!-- end locale -->@result script object : a new instance of XFile    � � � �B ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S�qg0Y0�0�0�0�0�0nb�_5[P0�Y	f�0W0_   X F i l e  0�0d0O0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   a   n e w   i n s t a n c e   w i t h   c h a n g i n g   p a t h   e x t e n s i o n   o f   t h e   i n s t a n c e  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ n a m e   ( U n i c o d e   t e x t   o r   s t r i n g )   :  < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0nb�_5[P00�0�0�   " . "  0gY�0~0c0f0D0�_ŉ�0L0B0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - > p a t h   e x t e n s i o n ,   s h o u l d   b e   s t a r t s   w i t h   a   d o t   " . " .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   X F i l e  �  � � � i   $ ' � � � I      �_ ��^�_ 0 change_path_extension   �  ��] � o      �\�\ 0 a_suffix  �]  �^   � L      � � I     �[ ��Z�[ 0 make_with_pathinfo   �  ��Y � n   	 � � � n   	 � � � I    	�X ��W�X 0 change_path_extension   �  �V  o    �U�U 0 a_suffix  �V  �W   � o    �T�T 0 	_pathinfo 	_pathInfo �  f    �Y  �Z   �  l     �S�R�Q�S  �R  �Q    l      �P�P   � �!@group Getting a File Reference form an Instance<!-- begin locale ja -->XFile �C���X�^���X���Q�Ƃ��Ă���t�@�C���ւ̎Q�Ƃ��擾���܂��B<!-- begin locale en -->Obtain a reference to a file which XFile reference to.<!-- end locale -->    �� ! @ g r o u p   G e t t i n g   a   F i l e   R e f e r e n c e   f o r m   a n   I n s t a n c e  < ! - -   b e g i n   l o c a l e   j a   - - >  X F i l e  0�0�0�0�0�0�0LS�qg0W0f0D0�0�0�0�0�0x0nS�qg0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   w h i c h   X F i l e   r e f e r e n c e   t o .  < ! - -   e n d   l o c a l e   - - >  	 l     �O�N�M�O  �N  �M  	 

 l      �L�L  }w!@abstruct<!-- begin locale ja -->�G�C���A�X���擾���܂��B<!-- begin locale en -->Obtain a reference to a file as alias class<!-- end locale -->@description<!-- begin locale ja -->���݂��Ȃ��t�@�C���������̓t�H���_�ɑ΂��Ď��s����ƃG���[���������܂��B<!-- begin locale en -->An error raise, If a file or a folder does not exists.<!-- end locale -->@result alias    �� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   a l i a s   c l a s s  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > [XW(0W0j0D0�0�0�0�0�0W0O0o0�0�0�0�0k[�0W0f[��L0Y0�0h0�0�0�0Lvzu0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  A n   e r r o r   r a i s e ,   I f   a   f i l e   o r   a   f o l d e r   d o e s   n o t   e x i s t s .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   a l i a s   i   ( + I      �K�J�I�K 0 as_alias  �J  �I   k       I     �H�G�F�H !0 check_existance_raising_error  �G  �F   �E L     n    n    I   	 �D�C�B�D 0 as_alias  �C  �B   o    	�A�A 0 	_pathinfo 	_pathInfo  f    �E    l     �@�?�>�@  �?  �>    l      �= !�=    � �!@abstruct<!-- begin locale ja -->File URL �N���X�̃t�@�C���Q�Ƃ��擾���܂��B<!-- begin locale en -->Obtain a reference to a file as File URL class<!-- end locale --><!-- end locale -->@result File URL   ! �""� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - >  F i l e   U R L  0�0�0�0n0�0�0�0�S�qg0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   r e f e r e n c e   t o   a   f i l e   a s   F i l e   U R L   c l a s s  < ! - -   e n d   l o c a l e   - - >  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   F i l e   U R L  #$# i   , /%&% I      �<�;�:�< 0 as_furl  �;  �:  & L     '' n    ()( n   *+* I    �9�8�7�9 0 as_furl  �8  �7  + o    �6�6 0 	_pathinfo 	_pathInfo)  f     $ ,-, l     �5�4�3�5  �4  �3  - ./. l      �201�2  0 � �!@abstruct <!-- begin locale ja -->HFS �`���̃p�X���擾���܂��B<!-- begin locale en -->Obtain HFS path<!-- end locale -->@result Unicode text   1 �22 ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - >  H F S  _b_0n0�0�0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   H F S   p a t h  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t / 343 i   0 3565 I      �1�0�/�1 0 hfs_path  �0  �/  6 L     77 n    898 n   :;: I    �.�-�,�. 0 hfs_path  �-  �,  ; o    �+�+ 0 	_pathinfo 	_pathInfo9  f     4 <=< l     �*�)�(�*  �)  �(  = >?> l      �'@A�'  @ � �!@abstruct <!-- begin locale ja -->POSIX�`���̃p�X���擾���܂��B<!-- begin locale en -->Obtain POSIX path<!-- end locale -->@result Unicode text   A �BB ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - >  P O S I X_b_0n0�0�0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   P O S I X   p a t h  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t ? CDC i   4 7EFE I      �&�%�$�& 0 
posix_path  �%  �$  F L     GG n    HIH n   JKJ I    �#�"�!�# 0 
posix_path  �"  �!  K o    � �  0 	_pathinfo 	_pathInfoI  f     D LML l     ����  �  �  M NON l      �PQ�  P � �!@abstruct
<!-- begin locale ja -->
�p�X������̍Ō��"/"���폜���� POSIX �p�X���擾���܂��B
<!-- begin locale en -->
Obtain POSIX path which does not end with "/".
<!-- end locale -->
@result text   Q �RR^ ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�e�[WR0ng _�0n " / "0�RJ�d0W0_   P O S I X  0�0�0�S�_�0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   t e x t O STS i   8 ;UVU I      ���� 0 normalized_posix_path  �  �  V L     WW n    XYX n   Z[Z I    ���� 0 normalized_posix_path  �  �  [ o    �� 0 	_pathinfo 	_pathInfoY  f     T \]\ l     ����  �  �  ] ^_^ i   < ?`a` I      ���� 0 quoted_path  �  �  a L     bb n    
cdc n   	efe 1    	�
� 
strqf n   ghg I    ���� 0 
posix_path  �  �  h o    �
�
 0 	_pathinfo 	_pathInfod  f     _ iji l     �	���	  �  �  j klk l      �mn�  m &  !@group Working with Attributes    n �oo @ ! @ g r o u p   W o r k i n g   w i t h   A t t r i b u t e s  l pqp l     ����  �  �  q rsr l      �tu�  t<6!@abstruct<!-- begin locale ja -->�t�H���_�ł��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item is a folder or not.<!-- end locale -->@result<!-- begin locale ja -->boolean : �t�H���_�ł���� true <!-- begin locale en -->boolean : true if the the item is folder.<!-- end locale -->   u �vv< ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0g0B0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   i s   a   f o l d e r   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  b o o l e a n   :  0�0�0�0�0g0B0�0p   t r u e    < ! - -   b e g i n   l o c a l e   e n   - - >  b o o l e a n   :   t r u e   i f   t h e   t h e   i t e m   i s   f o l d e r .  < ! - -   e n d   l o c a l e   - - > s wxw i   @ Cyzy I      �� ��� 0 	is_folder  �   ��  z k     {{ |}| l      ��~��  ~ � �	if item_ref()'s class is not alias then		check_existance_raising_error()		update_pathinfo()	end if	return my _pathInfo's is_folder()
	    ���  	 i f   i t e m _ r e f ( ) ' s   c l a s s   i s   n o t   a l i a s   t h e n  	 	 c h e c k _ e x i s t a n c e _ r a i s i n g _ e r r o r ( )  	 	 u p d a t e _ p a t h i n f o ( )  	 e n d   i f  	 r e t u r n   m y   _ p a t h I n f o ' s   i s _ f o l d e r ( ) 
 	} ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
asdr� o    	���� 0 info_rec  ��  x ��� l     ��������  ��  ��  � ��� l      ������  �?9!@abstruct<!-- begin locale ja -->�p�b�P�[�W�ł��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item is a package or not.<!-- end locale -->@result<!-- begin locale ja -->boolean : �p�b�P�[�W�ł���� true<!-- begin locale en -->boolean : true if the item is a package.<!-- end locale -->   � ���> ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0g0B0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   i s   a   p a c k a g e   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  b o o l e a n   :  0�0�0�0�0�0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - >  b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   p a c k a g e .  < ! - -   e n d   l o c a l e   - - > � ��� i   D G��� I      �������� 0 
is_package  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
ispk� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �WQ!@abstruct<!-- begin locale ja -->�G�C���A�X�t�@�C���ł��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item is an alias file or not.<!-- end locale -->@result<!-- begin locale ja -->boolean : �G�C���A�X�t�@�C���ł���� true<!-- begin locale en -->boolean : true if the item is an alias file.<!-- end locale -->   � ���^ ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0�0g0B0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   i s   a n   a l i a s   f i l e   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  b o o l e a n   :  0�0�0�0�0�0�0�0�0�0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - >  b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a n   a l i a s   f i l e .  < ! - -   e n d   l o c a l e   - - > � ��� i   H K��� I      �������� 0 is_alias  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� m   	 ��
�� 
alis� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �ZT!@abstruct<!-- begin locale ja -->�V���{���b�N�����N�ł��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item is a symbolic link or not.<!-- end locale -->@result<!-- begin locale ja -->boolean : �V���{���b�N�����O�ł���� true<!-- begin locale en -->boolean : true if the item is a symbolic link<!-- end locale -->   � ���d ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0�0g0B0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   i s   a   s y m b o l i c   l i n k   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  b o o l e a n   :  0�0�0�0�0�0�0�0�0�0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - >  b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   a   s y m b o l i c   l i n k  < ! - -   e n d   l o c a l e   - - > � ��� i   L O��� I      �������� 0 
is_symlink  ��  ��  � k     �� ��� Q     ���� I   �����
�� .sysoexecTEXT���     TEXT� b    
��� m    �� ���  t e s t   - L  � I    	�������� 0 quoted_path  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    ��
�� boovfals� ���� L    �� m    ��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l      ������  �GA!@abstruct<!-- begin locale ja -->���t�@�C��/�t�@�C���ł��邩�ǂ���<!-- begin locale en -->Check whether the item is visible or not.<!-- end locale -->@result<!-- begin locale ja -->boolean : ���t�@�C��/�t�H���_�ł���� true<!-- begin locale en -->boolean : true if the item is visible.<!-- end locale -->   � ���D ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S0�0�0�0� /0�0�0�0�0g0B0�0K0i0F0K  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   i s   v i s i b l e   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  b o o l e a n   :  S0�0�0�0� /0�0�0�0�0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - >  b o o l e a n   :   t r u e   i f   t h e   i t e m   i s   v i s i b l e .  < ! - -   e n d   l o c a l e   - - > � ��� i   P S��� I      �������� 0 
is_visible  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
pvis� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� i   T W��� I      �������� 0 type_identifier  ��  ��  � k     �� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� L    �� n    ��� 1   	 ��
�� 
utid� o    	���� 0 info_rec  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �!@abstruct<!-- begin locale ja -->�N���G�[�^�R�[�h�ƃ^�C�v�R�[�h��ݒ肵�܂��B<!-- begin locale en -->set creator code and type code to the item.<!-- end locale -->@param creator_code (Unicode text or string) : <!-- begin locale ja -->�N���G�[�^�R�[�h<!-- begin locale en -->creator code which consists of 4 characters<!-- end locale -->@param type_code (Unicode text or string) : <!-- begin locale ja -->�^�C�v�R�[�h<!-- begin locale en -->type code which consists of 4 characters<!-- end locale -->   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0h0�0�0�0�0�0�0��-[�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  s e t   c r e a t o r   c o d e   a n d   t y p e   c o d e   t o   t h e   i t e m .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   c r e a t o r _ c o d e   ( U n i c o d e   t e x t   o r   s t r i n g )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > c r e a t o r   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   t y p e _ c o d e   ( U n i c o d e   t e x t   o r   s t r i n g )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > t y p e   c o d e   w h i c h   c o n s i s t s   o f   4   c h a r a c t e r s  < ! - -   e n d   l o c a l e   - - > � ��� i   X [��� I      ������� 0 	set_types  � ��� o      ���� 0 creator_code  � ���� o      ���� 0 	type_code  ��  ��  � Z     +������� H        I     �������� 0 	is_folder  ��  ��  � k   	 '  r   	  I   	 �������� 0 as_alias  ��  ��   o      ���� 
0 a_file    O    !	 k     

  r     o    ���� 0 creator_code   n       1    ��
�� 
fcrt o    ���� 
0 a_file   �� r      o    ���� 0 	type_code   n       1    ��
�� 
asty o    ���� 
0 a_file  ��  	 m    �                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �� r   " ' m   " #��
�� 
msng n      o   $ &���� 0 _inforecord _infoRecord  f   # $��  ��  ��  �  l     ��������  ��  ��    l      �� !��   UO!@abstruct<!-- begin locale ja -->�t�@�C���̏����܂Ƃ߂Ď擾���܂��B<!-- begin locale en -->Obtain file information.<!-- end locale -->@description<!-- begin locale ja -->info for �R�}���h���g�p���ď����擾���܂��B��x info() �����s����Ƃ��̌��ʂ͓����ɃL���b�V������܂��B<!-- begin locale en -->Do "info for" command for the item. The result is cached and same value is returned at next calling info().<!-- end locale -->@result<!-- begin locale ja -->
record : info for �R�}���h�̎��s����<!-- begin locale en -->record : result of info for command<!-- end locale -->   ! �"" ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0n`�X10�0~0h0�0fS�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   f i l e   i n f o r m a t i o n .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - >  i n f o   f o r  0�0�0�0�0�Ou(0W0f`�X10�S�_�0W0~0Y0N ^�   i n f o ( )  0�[��L0Y0�0h0]0n}Pg�0oQ���0k0�0�0�0�0�0U0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m .   T h e   r e s u l t   i s   c a c h e d   a n d   s a m e   v a l u e   i s   r e t u r n e d   a t   n e x t   c a l l i n g   i n f o ( ) .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - > 
 r e c o r d   :   i n f o   f o r  0�0�0�0�0n[��L}Pg�  < ! - -   b e g i n   l o c a l e   e n   - - >  r e c o r d   :   r e s u l t   o f   i n f o   f o r   c o m m a n d  < ! - -   e n d   l o c a l e   - - >  #$# i   \ _%&% I      �������� 0 info  ��  ��  & k     %'' ()( Z     *+����* =    ,-, n    ./. o    ���� 0 _inforecord _infoRecord/  f     - m    ��
�� 
msng+ k    00 121 I    �������� !0 check_existance_raising_error  ��  ��  2 3��3 r    454 I   �6�~
� .sysonfo4asfe        file6 I    �}�|�{�} 0 as_furl  �|  �{  �~  5 n     787 o    �z�z 0 _inforecord _infoRecord8  f    ��  ��  ��  ) 9�y9 L     %:: n    $;<; o   ! #�x�x 0 _inforecord _infoRecord<  f     !�y  $ =>= l     �w�v�u�w  �v  �u  > ?@? l      �tAB�t  A�}!@abstruct<!-- begin locale ja -->�t�@�C���̏����f�B�X�N�V�X�e������Ď擾���܂��B<!-- begin locale en -->Obtain file information<!-- end locale -->@description<!-- begin locale ja -->info for �R�}���h���g�p���ď����擾���܂��B((<info>))() �����s����Ƃ��̌��ʂ͓����ɃL���b�V������܂����Are_info()�� info for �R�}���h�����s���āA�L���b�V�����X�V���܂��B<!-- begin locale en -->Do "info for" command for the item and reset the cache of ((<info>))().<!-- end locale -->@result<!-- begin locale ja -->
record : info for �R�}���h�̎��s����<!-- begin locale en -->record : result of info for command<!-- end locale -->   B �CC2 ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0n`�X10�0�0�0�0�0�0�0�0�0K0�Q�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   f i l e   i n f o r m a t i o n  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - >  i n f o   f o r  0�0�0�0�0�Ou(0W0f`�X10�S�_�0W0~0Y0 ( ( < i n f o > ) ) ( )  0�[��L0Y0�0h0]0n}Pg�0oQ���0k0�0�0�0�0�0U0�0~0Y0L0 r e _ i n f o ( )0o   i n f o   f o r  0�0�0�0�0�[��L0W0f00�0�0�0�0�0�f�e�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  D o   " i n f o   f o r "   c o m m a n d   f o r   t h e   i t e m   a n d   r e s e t   t h e   c a c h e   o f   ( ( < i n f o > ) ) ( ) .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  
 r e c o r d   :   i n f o   f o r  0�0�0�0�0n[��L}Pg�  < ! - -   b e g i n   l o c a l e   e n   - - >  r e c o r d   :   r e s u l t   o f   i n f o   f o r   c o m m a n d  < ! - -   e n d   l o c a l e   - - > @ DED i   ` cFGF I      �s�r�q�s 0 re_info  �r  �q  G k     HH IJI r     KLK I    	�pM�o
�p .sysonfo4asfe        fileM I     �n�m�l�n 0 as_furl  �m  �l  �o  L n     NON o   
 �k�k 0 _inforecord _infoRecordO  f   	 
J P�jP L    QQ n   RSR o    �i�i 0 _inforecord _infoRecordS  f    �j  E TUT l     �h�g�f�h  �g  �f  U VWV l      �eXY�e  X % !@group Obtain Path Infomation    Y �ZZ > ! @ g r o u p   O b t a i n   P a t h   I n f o m a t i o n  W [\[ l     �d�c�b�d  �c  �b  \ ]^] l      �a_`�a  _ � �!@abstruct <!-- begin locale ja -->�t�@�C��/�t�H���_�����擾���܂��B<!-- begin locale en -->Obtain the name of the item referenced by the instance <!-- end locale -->@result Unicode text   ` �aab ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0� /0�0�0�0�T0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   t h e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e    < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t ^ bcb i   d gded I      �`�_�^�` 0 	item_name  �_  �^  e L     ff n    ghg n   iji I    �]�\�[�] 0 	item_name  �\  �[  j o    �Z�Z 0 	_pathinfo 	_pathInfoh  f     c klk l     �Y�X�W�Y  �X  �W  l mnm l      �Vop�V  o!@abstruct <!-- begin locale ja -->�x�[�X�l�[��(�t�@�C��������g���q���̂���������)���擾���܂��B<!-- begin locale en -->Obtain the base name (a name which does not include path extension) of the item referenced by the instance.<!-- end locale -->@result Unicode text   p �qq� ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0� (0�0�0�0�T0K0�b�_5[P0�0n0^0D0_0�0n )0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   t h e   b a s e   n a m e   ( a   n a m e   w h i c h   d o e s   n o t   i n c l u d e   p a t h   e x t e n s i o n )   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t n rsr i   h ktut I      �U�T�S�U 0 basename  �T  �S  u L     vv n    wxw n   yzy I    �R�Q�P�R 0 basename  �Q  �P  z o    �O�O 0 	_pathinfo 	_pathInfox  f     s {|{ l     �N�M�L�N  �M  �L  | }~} l      �K��K   � �!@abstruct <!-- begin locale ja -->�t�@�C�����̊g���q���擾���܂��B<!-- begin locale en -->Obtain path extension�@of the item referenced by the instance.<!-- end locale -->@result Unicode text   � ���l ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�T0nb�_5[P0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   p a t h   e x t e n s i o n0  o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t ~ ��� i   l o��� I      �J�I�H�J 0 path_extension  �I  �H  � L     �� n    ��� n   ��� I    �G�F�E�G 0 path_extension  �F  �E  � o    �D�D 0 	_pathinfo 	_pathInfo�  f     � ��� l     �C�B�A�C  �B  �A  � ��� l     �@�?�>�@  �?  �>  � ��� i   p s��� I      �=�<�;�= 0 update_cache  �<  �;  � Z     ���:�9� >    ��� n    ��� o    �8�8 0 _inforecord _infoRecord�  f     � m    �7
�7 
msng� k    �� ��� I    �6�5�4�6 !0 check_existance_raising_error  �5  �4  � ��3� r    ��� I   �2��1
�2 .sysonfo4asfe        file� I    �0�/�.�0 0 item_ref  �/  �.  �1  � n     ��� o    �-�- 0 _inforecord _infoRecord�  f    �3  �:  �9  � ��� l     �,�+�*�,  �+  �*  � ��� l      �)���)  � $ !@group Working with a Bundle    � ��� < ! @ g r o u p   W o r k i n g   w i t h   a   B u n d l e  � ��� l     �(�'�&�(  �'  �&  � ��� l      �%���%  �#!@abstruct<!-- begin locale ja -->�o���h�����\�[�X�Ɋ܂܂�Ă���t�@�C�����擾���܂��B<!-- begin locale en -->Obtain an item which is in the bundle resource folder.<!-- end locale -->@description<!-- begin locale ja -->�o���h�����Q�Ƃ��Ă���C���X�^���X�ɂ������s�ł��܂���B<!-- begin locale en -->This method can be call to a bundle.<!-- end locale -->@param resource_name (Unicode text) : <!-- begin locale ja -->���\�[�X��<!-- begin locale en -->a resource name<!-- end locale -->@result script object : a XFile instance   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0kT+0~0�0f0D0�0�0�0�0�0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a n   i t e m   w h i c h   i s   i n   t h e   b u n d l e   r e s o u r c e   f o l d e r .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�S�qg0W0f0D0�0�0�0�0�0�0�0k0W0K[��L0g0M0~0[0�0  < ! - -   b e g i n   l o c a l e   e n   - - >  T h i s   m e t h o d   c a n   b e   c a l l   t o   a   b u n d l e .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   r e s o u r c e _ n a m e   ( U n i c o d e   t e x t )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�T  < ! - -   b e g i n   l o c a l e   e n   - - > a   r e s o u r c e   n a m e  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e � ��� i   t w��� I      �$��#�$ 0 bundle_resource  � ��"� o      �!�! 0 resource_name  �"  �#  � L     �� I     � ���  0 	make_with  � ��� I   ���
� .sysorpthalis        TEXT� o    �� 0 resource_name  � ���
� 
in B� l   ���� I    ���� 0 as_alias  �  �  �  �  �  �  �  � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct<!-- begin locale ja -->�o���h����Info.plist�t�@�C���̎Q�Ƃ��擾���܂��B<!-- begin locale en -->Obtain a reference to Info.plist of the bundle.<!-- end locale -->@result script object : a XFile instance   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0n I n f o . p l i s t0�0�0�0�0nS�qg0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   r e f e r e n c e   t o   I n f o . p l i s t   o f   t h e   b u n d l e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e � ��� i   x {��� I      ���� $0 bundle_infoplist bundle_InfoPlist�  �  � L     �� I     ���� 0 child_posix  � ��� m    �� ��� & C o n t e n t s / I n f o . p l i s t�  �  � ��� l     �
�	��
  �	  �  � ��� i   | ��� I      ���� 0 bundle_resources_folder  �  �  � L     �� I     ���� 0 child_posix  � ��� m    �� ��� & C o n t e n t s / R e s o u r c e s /�  �  � ��� l     �� ���  �   ��  � ��� l      ������  � ! !@group File Manipulations    � ��� 6 ! @ g r o u p   F i l e   M a n i p u l a t i o n s  � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct<!-- begin locale ja -->�Q�Ƃ��Ă���t�@�C��/�t�H���_�����݂��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item referenced by the instance exists or not.<!-- end locale -->@description<!-- begin locale ja -->�����̃t�@�C���Q�Ƃ��G�C���A�X�ɕϊ����܂��B���łɃG�C���A�X�`���̎Q�Ƃ�ێ����Ă���ꍇ�ł��A�G�C���A�X���č\�z���܂��B�ʏ�A�G�C���A�X�̓t�@�C���̈ړ��A�t�@�C�����̕ύX��ǐՂ��邱�Ƃ��ł��܂����A�ʂ̃t�@�C���ŏ㏑�������ƒǐՂł��Ȃ��Ȃ�܂��B
���̂悤�ȂƂ��Aitem_exists() �����s���ăG�C���A�X���č\�z���Ă��������B<!-- begin locale en -->A file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.<!-- end locale -->@result <!-- begin locale ja -->boolean : ���݂���̂ł���� true<!-- begin locale en -->boolean : true if the item exists.<!-- end locale -->   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S�qg0W0f0D0�0�0�0�0� /0�0�0�0�0L[XW(0Y0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > Q���0n0�0�0�0�S�qg0�0�0�0�0�0�0kY	c�0W0~0Y00Y0g0k0�0�0�0�0�_b_0nS�qg0�O�c0W0f0D0�X4T0g0�00�0�0�0�0�0�Q�i�{�0W0~0Y0  �^800�0�0�0�0�0o0�0�0�0�0ny�R�00�0�0�0�T0nY	f�0�����0Y0�0S0h0L0g0M0~0Y0L0R%0n0�0�0�0�0gN
f�0M0U0�0�0h����0g0M0j0O0j0�0~0Y0 
0]0n0�0F0j0h0M0 i t e m _ e x i s t s ( )  0�[��L0W0f0�0�0�0�0�0�Q�i�{�0W0f0O0`0U0D0  < ! - -   b e g i n   l o c a l e   e n   - - >  A   f i l e   r e f e r e n c e   s t o r e d   i n   a   i n s t a n c e   i s   c o n v e r t e d   t o   a l i a s   c l a s s . 
 E v e n   i f   t h e   c l a s s   o f   t h e   i n n e r   f i l e   r e f e r e n c e   a l r e a d y   h a s   b e e n   a l i a s ,   t h e   a l i a s   i s   r e c o n s t r u c t e d .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t    < ! - -   b e g i n   l o c a l e   j a   - - >  b o o l e a n   :  [XW(0Y0�0n0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - >  b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s .  < ! - -   e n d   l o c a l e   - - > � ��� i   � ���� I      �������� 0 item_exists  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_exists  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � ��� l     ��������  ��  ��  � ��� l      ������  �F@!@abstruct<!-- begin locale ja -->�Q�Ƃ��Ă���t�@�C��/�t�H���_�����݂��邩�ǂ������ׂ܂��B<!-- begin locale en -->Check whether the item referenced by the instance exists or not.<!-- end locale -->@description<!-- begin locale ja -->((<item_exists>)) �Ƃ͈���āA�����̃t�@�C���Q�Ƃ͍X�V����܂���B<!-- begin locale en -->The internal file reference will not be changed unlike ((<item_exists>)).<!-- end locale -->@result <!-- begin locale ja -->boolean : ���݂���̂ł���� true<!-- begin locale en -->boolean : true if the item exists.<!-- end locale -->   � ��� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > S�qg0W0f0D0�0�0�0�0� /0�0�0�0�0L[XW(0Y0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - >  ( ( < i t e m _ e x i s t s > ) )  0h0o�U0c0f0Q���0n0�0�0�0�S�qg0of�e�0U0�0~0[0�0  < ! - -   b e g i n   l o c a l e   e n   - - >  T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t    < ! - -   b e g i n   l o c a l e   j a   - - >  b o o l e a n   :  [XW(0Y0�0n0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - >  b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s .  < ! - -   e n d   l o c a l e   - - > � ��� i   � ���� I      �������� 0 item_exists_without_update  ��  ��  � L     �� n    ��� n   ��� I    �������� 0 item_exists_without_update  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f     � � � l     ��������  ��  ��     l      ����  ��!@abstruct<!-- begin locale ja -->((<item_exists>)) �Ɠ����ł��B�Q�Ƃ��Ă���t�@�C��/�t�H���_�����݂��邩�ǂ������ׂ܂��B<!-- begin locale en -->Synonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.<!-- end locale -->@result<!-- begin locale ja -->boolean : ���݂���̂ł���� true<!-- begin locale en -->boolean : true if the item exists.<!-- end locale -->    �� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - >  ( ( < i t e m _ e x i s t s > ) )  0hT0X0g0Y0S�qg0W0f0D0�0�0�0�0� /0�0�0�0�0L[XW(0Y0�0K0i0F0K��0y0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  S y n o n y m   o f   ( ( < i t e m _ e x i s t s > ) ) .   C h e c k   w h e t h e r   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   e x i s t s   o r   n o t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  b o o l e a n   :  [XW(0Y0�0n0g0B0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - >  b o o l e a n   :   t r u e   i f   t h e   i t e m   e x i s t s .  < ! - -   e n d   l o c a l e   - - >   i   � �	 I     ������
�� .coredoexbool       obj ��  ��  	 L     

 I     �������� 0 item_exists  ��  ��    l     ��������  ��  ��    l      ����  1+!@abstruct<!-- begin locale ja -->�t�@�C��/�t�H���_����ύX���܂��B<!-- begin locale en -->Rename an item which referenced by the XFile instance.<!-- end locale -->@result boolean : <!-- begin locale ja -->��������� true<!-- begin locale en -->boolean : true if success.<!-- end locale -->    �, ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0� /0�0�0�0�T0�Y	f�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  R e n a m e   a n   i t e m   w h i c h   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :    < ! - -   b e g i n   l o c a l e   j a   - - >bR�0Y0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > b o o l e a n   :   t r u e   i f   s u c c e s s . < ! - -   e n d   l o c a l e   - - >   i   � � I      ������ 0 	rename_to   �� o      ���� 0 new_name  ��  ��   k     0  Z     ���� H      l    ���� I     �������� 0 item_exists  ��  ��  ��  ��   L   	  m   	 
��
�� boovfals��  ��    !  l   ��������  ��  ��  ! "#" O    $%$ r    &'& o    ���� 0 new_name  ' n      ()( 1    ��
�� 
pnam) n   *+* I    �������� 0 item_ref  ��  ��  +  f    % m    ,,�                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  # -.- l   ��������  ��  ��  . /0/ r    $121 m     ��
�� 
msng2 n     343 o   ! #���� 0 _inforecord _infoRecord4  f     !0 565 n  % -787 n  & -9:9 I   ( -��;���� 0 set_name  ; <��< o   ( )���� 0 new_name  ��  ��  : o   & (���� 0 	_pathinfo 	_pathInfo8  f   % &6 =��= L   . 0>> m   . /��
�� boovtrue��   ?@? l     ��������  ��  ��  @ ABA l      ��CD��  C("!@abstruct <!-- begin locale ja -->�t�@�C��/�t�H���_���w�肵���ꏊ�ɃR�s�[���܂��B<!-- begin locale en -->Copy the item to specified location<!-- end locale -->@description<!-- begin locale ja -->�����̃t�@�C��������Ώ㏑�����܂��B<!-- begin locale en -->Same name item in the destination is replaced.<!-- end locale -->@param a_destination (script object or text) : <!-- begin locale ja -->�R�s�[����Q�Ƃ��Ă��� XFile �̃C���X�^���X�B�������́A�^�[�Q�b�g����̑��΃p�X�B<!-- begin locale en -->a XFile instance referencing the copy destination or a relative path.<!-- end locale -->@result<!-- begin locale ja -->script object : �R�s�[�����t�@�C��/�t�H���_�� XFile �C���X�^���X<!-- begin locale en -->script object : a XFile instance referencing copied item.<!-- end locale -->   D �EE� ! @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0� /0�0�0�0�0�c[�0W0_X4b@0k0�0�0�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > TT0n0�0�0�0�0L0B0�0pN
f�0M0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  S a m e   n a m e   i t e m   i n   t h e   d e s t i n a t i o n   i s   r e p l a c e d .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t   o r   t e x t )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�QH0�S�qg0W0f0D0�   X F i l e  0n0�0�0�0�0�0�00�0W0O0o00�0�0�0�0�0K0�0nv�[�0�0�0  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  s c r i p t   o b j e c t   :  0�0�0�0W0_0�0�0�0� /0�0�0�0�0n   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - >  s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m .  < ! - -   e n d   l o c a l e   - - > B FGF i   � �HIH I      ��J���� 0 copy_to  J K��K o      ���� 0 a_destination  ��  ��  I L     LL I     ��M���� 0 copy_with_opts  M NON o    ���� 0 a_destination  O P��P m    ��
�� 
msng��  ��  G QRQ l     ��������  ��  ��  R STS l      ��UV��  U{u!
@abstruct <!-- begin locale ja -->�t�@�C��/�t�H���_���w�肵���ꏊ�ɃR�s�[���܂��B�������̃I�v�V�������w��ł��܂��B<!-- begin locale en -->Copy the item to specified location with options.<!-- end locale -->@description<!-- begin locale ja -->��Q�����ŃI�v�V�����i record �N���X�̒l�j��^���邱�Ƃɂ��A�R�s�[����̃J�X�^�}�C�Y���s���܂��B
�I�v�V�����Ƃ��Ă������郌�R�[�h�́A{with_replaceing : boolean, with_admin:boolean, with_replacing: boolean} �Ƃ����t�H�[�}�b�g�ł��B�l���w�肵�Ȃ����x���͏ȗ��\�ł��B
* with_replacing : �R�s�[��Ƀt�@�C�����������ꍇ�u�������邩�ǂ����B�f�t�H���g�� true�B
* with_admin : �Ǘ��Ҍ����ŃR�s�[���܂��B�f�t�H���g�� false�B
* with_removing : �R�s�[�悪���݂���ꍇ�A�R�s�[����폜���Ă���R�s�[�����s���܂��B�f�t�H���g�� false�B<!-- begin locale en -->By passing options (a value of a record) as a second parameter, you can change the behavior of copying. The format of the option record is {with_replaceing : boolean, with_admin:boolean, with_replacing: boolean}. You can ommit labels you don't required.
* with_replacing : Copying with replacing the destination. The default is true.
* with_admin : Copying with administrator privileges. The default is false.
* with_removing : Copying after removing the destination. The default is false.<!-- end locale -->@param a_destination (script object) : <!-- begin locale ja -->�R�s�[����Q�Ƃ��Ă��� XFile �̃C���X�^���X�������͑��΃p�X�B<!-- begin locale en -->a XFile instance referencing the copy destination or a relative path.<!-- end locale -->
@param opts ( record): 
<!-- begin locale ja -->�R�s�[���<!-- begin locale en -->a XFile instance referencing the copy destination<!-- end locale -->@result<!-- begin locale ja -->script object : �R�s�[�����t�@�C��/�t�H���_�� XFile �C���X�^���X<!-- begin locale en -->script object : a XFile instance referencing copied item.<!-- end locale -->   V �WW� ! 
 @ a b s t r u c t    < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0� /0�0�0�0�0�c[�0W0_X4b@0k0�0�0�0W0~0Y00D0O0d0K0n0�0�0�0�0�0�c[�0g0M0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  C o p y   t h e   i t e m   t o   s p e c i f i e d   l o c a t i o n   w i t h   o p t i o n s .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > {,�_ep0g0�0�0�0�0��   r e c o r d  0�0�0�0nP$�	0�N0H0�0S0h0k0�0�00�0�0�d�O\0n0�0�0�0�0�0�0L�L0H0~0Y0 
0�0�0�0�0�0h0W0f0B0_0H0�0�0�0�0�0o0 { w i t h _ r e p l a c e i n g   :   b o o l e a n ,   w i t h _ a d m i n : b o o l e a n ,   w i t h _ r e p l a c i n g :   b o o l e a n }  0h0D0F0�0�0�0�0�0�0g0Y0P$0�c[�0W0j0D0�0�0�0owueS��0g0Y0 
 *   w i t h _ r e p l a c i n g   :  0�0�0�QH0k0�0�0�0�0L0B0c0_X4Tn0Mc�0H0�0K0i0F0K00�0�0�0�0�0o   t r u e0 
 *   w i t h _ a d m i n   :  {�t�j)�P0g0�0�0�0W0~0Y00�0�0�0�0�0o   f a l s e0 
 *   w i t h _ r e m o v i n g   :  0�0�0�QH0L[XW(0Y0�X4T00�0�0�QH0�RJ�d0W0f0K0�0�0�0�0�[��L0W0~0Y00�0�0�0�0�0o   f a l s e0  < ! - -   b e g i n   l o c a l e   e n   - - >  B y   p a s s i n g   o p t i o n s   ( a   v a l u e   o f   a   r e c o r d )   a s   a   s e c o n d   p a r a m e t e r ,   y o u   c a n   c h a n g e   t h e   b e h a v i o r   o f   c o p y i n g .   T h e   f o r m a t   o f   t h e   o p t i o n   r e c o r d   i s   { w i t h _ r e p l a c e i n g   :   b o o l e a n ,   w i t h _ a d m i n : b o o l e a n ,   w i t h _ r e p l a c i n g :   b o o l e a n } .   Y o u   c a n   o m m i t   l a b e l s   y o u   d o n ' t   r e q u i r e d . 
 *   w i t h _ r e p l a c i n g   :   C o p y i n g   w i t h   r e p l a c i n g   t h e   d e s t i n a t i o n .   T h e   d e f a u l t   i s   t r u e . 
 *   w i t h _ a d m i n   :   C o p y i n g   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s .   T h e   d e f a u l t   i s   f a l s e . 
 *   w i t h _ r e m o v i n g   :   C o p y i n g   a f t e r   r e m o v i n g   t h e   d e s t i n a t i o n .   T h e   d e f a u l t   i s   f a l s e .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�QH0�S�qg0W0f0D0�   X F i l e  0n0�0�0�0�0�0�0�0W0O0ov�[�0�0�0  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n   o r   a   r e l a t i v e   p a t h .  < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   o p t s   (   r e c o r d ) :   
 < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�QH0k  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   c o p y   d e s t i n a t i o n  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  s c r i p t   o b j e c t   :  0�0�0�0W0_0�0�0�0� /0�0�0�0�0n   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - >  s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   r e f e r e n c i n g   c o p i e d   i t e m .  < ! - -   e n d   l o c a l e   - - > T XYX i   � �Z[Z I      ��\���� 0 copy_with_opts  \ ]^] o      ���� 0 a_destination  ^ _��_ o      ���� 0 opts  ��  ��  [ k    8`` aba l     ��cd��  c \ V cp : if source and destination are folders and the path of the source ends with "/",    d �ee �   c p   :   i f   s o u r c e   a n d   d e s t i n a t i o n   a r e   f o l d e r s   a n d   t h e   p a t h   o f   t h e   s o u r c e   e n d s   w i t h   " / " ,  b fgf l     ��hi��  h ^ X         cp command contents of the source copy under the destination folder like ditto.   i �jj �                   c p   c o m m a n d   c o n t e n t s   o f   t h e   s o u r c e   c o p y   u n d e r   t h e   d e s t i n a t i o n   f o l d e r   l i k e   d i t t o .g klk l     ��mn��  m U O        The endding "/" of the source path should be removed for stable result.   n �oo �                 T h e   e n d d i n g   " / "   o f   t h e   s o u r c e   p a t h   s h o u l d   b e   r e m o v e d   f o r   s t a b l e   r e s u l t .l pqp l     ��rs��  r 5 /        Is the support  of ditto not required ?   s �tt ^                 I s   t h e   s u p p o r t     o f   d i t t o   n o t   r e q u i r e d   ?q uvu r     wxw m     ��
�� boovtruex o      ���� 0 w_replacing  v yzy r    {|{ m    ��
�� boovfals| o      ���� 0 w_admin  z }~} r    � m    	��
�� boovfals� o      ���� 0 
w_removing  ~ ��� l   ���� r    ��� m    �� ���  c p� o      ���� 0 command  �   or "ditto"   � ���    o r   " d i t t o "� ��� l   ��������  ��  ��  � ��� Z    l������� =   ��� n    ��� 1    ��
�� 
pcls� o    ���� 0 opts  � m    ��
�� 
reco� k    h�� ��� Q    )����� r     ��� n    ��� o    ���� 0 with_replacing  � o    ���� 0 opts  � o      ���� 0 w_replacing  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� Q   * ;����� r   - 2��� n   - 0��� o   . 0���� 0 
with_admin  � o   - .���� 0 opts  � o      ���� 0 w_admin  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� Q   < M����� r   ? D��� n   ? B��� o   @ B���� 0 with_removing  � o   ? @���� 0 opts  � o      �� 0 
w_removing  � R      �~�}�|
�~ .ascrerr ****      � ****�}  �|  ��  � ��{� Q   N h���z� Z   Q _���y�x� n   Q U��� o   R T�w�w 	0 ditto  � o   Q R�v�v 0 opts  � r   X [��� m   X Y�� ��� 
 d i t t o� o      �u�u 0 command  �y  �x  � R      �t�s�r
�t .ascrerr ****      � ****�s  �r  �z  �{  ��  ��  � ��� Z   m ����q�p� E  m v��� J   m r�� ��� m   m n�o
�o 
ctxt� ��� m   n o�n
�n 
utxt� ��m� m   o p�l
�l 
TEXT�m  � n   r u��� 1   s u�k
�k 
pcls� o   r s�j�j 0 a_destination  � r   y ���� n  y ���� I   ~ ��i��h�i 	0 child  � ��g� o   ~ �f�f 0 a_destination  �g  �h  � I   y ~�e�d�c�e 0 parent_folder  �d  �c  � o      �b�b 0 a_destination  �q  �p  � ��� l  � ��a�`�_�a  �`  �_  � ��� l  � ��^�]�\�^  �]  �\  � ��� Z   � �����[� =  � ���� o   � ��Z�Z 0 command  � m   � ��� ���  c p� k   � ��� ��� r   � ���� m   � ��� ���  - R p� o      �Y�Y 0 com_opts  � ��X� Z   � ����W�V� o   � ��U�U 0 w_replacing  � r   � ���� b   � ���� o   � ��T�T 0 com_opts  � m   � ��� ���  f� o      �S�S 0 com_opts  �W  �V  �X  � ��� =  � ���� o   � ��R�R 0 command  � m   � ��� ��� 
 d i t t o� ��Q� r   � ���� m   � ��� ���  - - r s r c� o      �P�P 0 com_opts  �Q  �[  � ��� l  � ��O�N�M�O  �N  �M  � ��� r   � ���� m   � ��L
�L boovfals� o      �K�K 0 is_folder_to  � ��� Z   � ����J�I� n  � �� � I   � ��H�G�F�H 0 item_exists  �G  �F    o   � ��E�E 0 a_destination  � Z   � ��D l  � ��C�B o   � ��A�A 0 
w_removing  �C  �B   n  � � I   � ��@�?�>�@ 
0 remove  �?  �>   o   � ��=�= 0 a_destination  �D   Z   � ��<�; =  � �	
	 o   � ��:�: 0 command  
 m   � � �  c p r   � � n  � � I   � ��9�8�7�9 0 	is_folder  �8  �7   o   � ��6�6 0 a_destination   o      �5�5 0 is_folder_to  �<  �;  �J  �I  �  r   � � n   � � 1   � ��4
�4 
strq n  � � I   � ��3�2�1�3 0 normalized_posix_path  �2  �1   o   � ��0�0 0 a_destination   o      �/�/ 0 destination_path    r   � n   � � 1   � ��.
�. 
strq I   � ��-�,�+�- 0 normalized_posix_path  �,  �+   o      �*�* 0 source_path     r  !"! b  #$# b  %&% b  '(' b  )*) b  	+,+ b  -.- o  �)�) 0 command  . 1  �(
�( 
spac, o  �'�' 0 com_opts  * 1  	�&
�& 
spac( o  �%�% 0 source_path  & 1  �$
�$ 
spac$ o  �#�# 0 destination_path  " o      �"�" 0 	a_command    /0/ I !�!12
�! .sysoexecTEXT���     TEXT1 o  � �  0 	a_command  2 �3�
� 
badm3 o  �� 0 w_admin  �  0 454 Z  "567��6 o  "#�� 0 is_folder_to  7 L  &188 n &09:9 I  '0�;�� 	0 child  ; <�< I  ',���� 0 	item_name  �  �  �  �  : o  &'�� 0 a_destination  �  �  5 =�= L  68>> o  67�� 0 a_destination  �  Y ?@? l     ����  �  �  @ ABA i   � �CDC I      �E�� 0 finder_copy_to  E FGF o      �� 0 a_destination  G H�
H o      �	�	 0 with_replacing  �
  �  D k     *II JKJ r     LML n    NON I    ���� 0 as_alias  �  �  O o     �� 0 a_destination  M o      �� 0 destination  K PQP r    RSR I    ���� 0 as_alias  �  �  S o      � �  0 source_alias  Q TUT O    "VWV r    !XYX c    Z[Z l   \����\ I   ��]^
�� .coreclon****      � ****] o    ���� 0 source_alias  ^ ��_`
�� 
insh_ o    ���� 0 destination  ` ��a��
�� 
alrpa o    ���� 0 with_replacing  ��  ��  ��  [ m    ��
�� 
alisY o      ���� 0 new_item  W m    bb�                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  U c��c L   # *dd I   # )��e���� 0 	make_with  e f��f o   $ %���� 0 new_item  ��  ��  ��  B ghg l     ��������  ��  ��  h iji l      ��kl��  k
!@abstruct<!-- begin locale ja -->�t�@�C��/�t�H���_���w�肵���ꏊ�Ɉړ����܂��B<!-- begin locale en -->Move the item referenced by the instance to specified location.<!-- end locale -->@param a_destination (script object) : <!-- begin locale ja -->�ړ�����Q�Ƃ��Ă��� XFile �C���X�^���X<!-- begin locale en -->a XFile instance referencing the destination to move.<!-- end locale -->@result boolean : <!-- begin locale ja -->��������� true<!-- begin locale en -->boolean : true if success.<!-- end locale -->   l �mm� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0� /0�0�0�0�0�c[�0W0_X4b@0ky�R�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M o v e   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e   t o   s p e c i f i e d   l o c a t i o n .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ d e s t i n a t i o n   ( s c r i p t   o b j e c t )   :    < ! - -   b e g i n   l o c a l e   j a   - - >y�R�QH0�S�qg0W0f0D0�   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > a   X F i l e   i n s t a n c e   r e f e r e n c i n g   t h e   d e s t i n a t i o n   t o   m o v e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   b o o l e a n   :    < ! - -   b e g i n   l o c a l e   j a   - - >bR�0Y0�0p   t r u e  < ! - -   b e g i n   l o c a l e   e n   - - > b o o l e a n   :   t r u e   i f   s u c c e s s . < ! - -   e n d   l o c a l e   - - > j non i   � �pqp I      ��r���� 0 move_to  r s��s o      ���� 0 a_destination  ��  ��  q k     2tt uvu Z     wx����w H     yy I     �������� 0 item_exists  ��  ��  x L   	 zz m   	 
��
�� boovfals��  ��  v {|{ l    ��}~��  } � �	set is_folder_to to false	if a_destination's item_exists_without_update() then		set is_folder_to to a_destination's is_folder()	end if	   ~ �  	 s e t   i s _ f o l d e r _ t o   t o   f a l s e  	 i f   a _ d e s t i n a t i o n ' s   i t e m _ e x i s t s _ w i t h o u t _ u p d a t e ( )   t h e n  	 	 s e t   i s _ f o l d e r _ t o   t o   a _ d e s t i n a t i o n ' s   i s _ f o l d e r ( )  	 e n d   i f  	| ��� l   ��������  ��  ��  � ��� r    ��� n    ��� 1    ��
�� 
strq� n   ��� I    �������� 0 
posix_path  ��  ��  � o    ���� 0 a_destination  � o      ���� 0 destination_path  � ��� r    #��� n    !��� 1    !��
�� 
strq� I    �������� 0 
posix_path  ��  ��  � o      ���� 0 source_path  � ��� I  $ /�����
�� .sysoexecTEXT���     TEXT� b   $ +��� b   $ )��� b   $ '��� m   $ %�� ���  m v   - f  � o   % &���� 0 source_path  � 1   ' (��
�� 
spac� o   ) *���� 0 destination_path  ��  � ��� l  0 0��������  ��  ��  � ���� L   0 2�� m   0 1��
�� boovtrue��  o ��� l     ��������  ��  ��  � ��� l      ������  �+%!@abstruct<!-- begin locale ja -->�G�C���A�X�t�@�C���̃I���W�i�������߂܂��B<!-- begin locale en -->Resolving original item of a alias file.<!-- end locale -->@description<!-- begin locale ja -->�G�C���A�X�t�@�C���łȂ���Ύ������g��Ԃ��܂��B�I���W�i����������Ȃ���� missing value ��Ԃ��܂��B<!-- begin locale en -->If the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.<!-- end locale -->@result script object or missing value   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0�0n0�0�0�0�0�0�lB0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  R e s o l v i n g   o r i g i n a l   i t e m   o f   a   a l i a s   f i l e .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�0�0�0g0j0Q0�0p��R�ꎫ0���0W0~0Y0 0�0�0�0�0�0L��0d0K0�0j0Q0�0p   m i s s i n g   v a l u e  0���0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  I f   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e   i s   n o t   a n   a l i a s   f i l e ,   s a m e   i n s t a n c e   i s   r e t u r n e d . 
   I f   t h e   o r i g i n a l   i t e m   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r n e d .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e � ��� i   � ���� I      �������� 0 resolve_alias  ��  ��  � k     U�� ��� r     ��� I     �������� 0 info  ��  ��  � o      ���� 0 info_rec  � ���� Z    U����� n    ��� m   	 ��
�� 
alis� o    	���� 0 info_rec  � k    4�� ��� Q    ,���� O    "��� r    !��� c    ��� l   ������ n    ��� 1    ��
�� 
orig� l   ������ n   ��� I    �������� 0 as_alias  ��  ��  �  f    ��  ��  ��  ��  � m    ��
�� 
alis� o      ���� 0 original_item  � m    ���                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 
0 errmsg  ��  � L   * ,�� m   * +��
�� 
msng� ���� L   - 4�� I   - 3������� 0 	make_with  � ���� o   . /���� 0 original_item  ��  ��  ��  � ��� I   7 <�������� 0 
is_symlink  ��  ��  � ���� k   ? O�� ��� r   ? F��� I   ? D�������� 0 	deep_copy  ��  ��  � o      ���� 0 original_item  � ��� n  G L��� I   H L�������� 0 item_exists  ��  ��  � o   G H���� 0 original_item  � ���� L   M O�� o   M N���� 0 original_item  ��  ��  � L   R U�� N   R T��  f   R S��  � ��� l     ��������  ��  ��  � ��� l      ������  � x r!@abstruct<!-- begin locale ja -->�S�~���ɓ���܂�<!-- begin locale en -->Put into trash.<!-- end locale -->   � ��� � ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�{�0kQe0�0~0Y  < ! - -   b e g i n   l o c a l e   e n   - - >  P u t   i n t o   t r a s h .  < ! - -   e n d   l o c a l e   - - > � ��� i   � ���� I      �������� 0 
into_trash  ��  ��  � k     �� ��� r     ��� I     �������� 0 as_alias  ��  ��  � o      ���� 
0 a_file  � ��� O    ��� I   �����
�� .coredeloobj        obj � o    ���� 
0 a_file  ��  � m    	���                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� I    �������� 0 update_pathinfo  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct<!-- begin locale ja -->�폜���܂�<!-- begin locale en -->Remove the item<!-- end locale -->@result script object : me   � ��� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > RJ�d0W0~0Y  < ! - -   b e g i n   l o c a l e   e n   - - >  R e m o v e   t h e   i t e m  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   s c r i p t   o b j e c t   :   m e � ��� i   � �� � I      �������� 
0 remove  ��  ��    k     ,  r     	 n      1    ��
�� 
strq I     ��~�}� 0 
posix_path  �~  �}   o      �|�| 
0 a_file   	 r   
 

 n  
  n    I    �{�z�y�{ 0 as_text  �z  �y   o    �x�x 0 	_pathinfo 	_pathInfo  f   
  o      �w�w 
0 a_path  	  I   �v�u
�v .sysoexecTEXT���     TEXT b     m     �  r m   - r   o    �t�t 
0 a_file  �u    r    # o    �s�s 
0 a_path   n      n   " o     "�r�r 0 	_item_ref   o     �q�q 0 	_pathinfo 	_pathInfo  f       r   $ )!"! m   $ %�p
�p 
msng" n     #$# o   & (�o�o 0 _inforecord _infoRecord$  f   % &  %�n% L   * ,&&  f   * +�n  � '(' l     �m�l�k�m  �l  �k  ( )*) l      �j+,�j  +   !@group Making subfolders    , �-- 4 ! @ g r o u p   M a k i n g   s u b f o l d e r s  * ./. l     �i�h�g�i  �h  �g  / 010 l      �f23�f  2��!@abstruct<!-- begin locale ja -->�T�u�t�H���_�����܂��B<!-- begin locale en -->Make a sub folder<!-- end locale -->@description<!-- begin locale ja -->���łɓ����̃t�@�C��������Ȃǂ̗��R�ŁA���s������ missing value<!-- begin locale en -->missing value is returned, if failing to make a new folder
<!-- end locale -->@param folder_name (Unicode text) : <!-- begin locale ja -->�t�H���_��<!-- begin locale en -->a name of new folder.<!-- end locale -->@result<!-- begin locale ja -->script object or missing value : �V����������t�H���_�� XFile �C���X�^���X�B<!-- begin locale en -->script object or missing value : a XFile instance of newly created folder.<!-- end locale -->   3 �44� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0�O\0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   a   s u b   f o l d e r  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 0Y0g0kTT0n0�0�0�0�0L0B0�0j0i0ntu10g0Y1eW0W0_0�   m i s s i n g   v a l u e  < ! - -   b e g i n   l o c a l e   e n   - - >  m i s s i n g   v a l u e   i s   r e t u r n e d ,   i f   f a i l i n g   t o   m a k e   a   n e w   f o l d e r 
 < ! - -   e n d   l o c a l e   - - >  @ p a r a m   f o l d e r _ n a m e   ( U n i c o d e   t e x t )   :    < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�T  < ! - -   b e g i n   l o c a l e   e n   - - > a   n a m e   o f   n e w   f o l d e r .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :  e�0W0OO\0c0_0�0�0�0�0n   X F i l e  0�0�0�0�0�0�0  < ! - -   b e g i n   l o c a l e   e n   - - >  s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r .  < ! - -   e n d   l o c a l e   - - > 1 565 i   � �787 I      �e9�d�e 0 make_folder  9 :�c: o      �b�b 0 folder_name  �c  �d  8 k     /;; <=< Z     >?�a�`> H     @@ l    A�_�^A I     �]�\�[�] 0 item_exists  �\  �[  �_  �^  ? k   	 BB CDC I  	 �ZE�Y
�Z .ascrcmnt****      � ****E l  	 F�X�WF b   	 GHG n  	 IJI n  
 KLK I    �V�U�T�V 0 as_text  �U  �T  L o   
 �S�S 0 	_pathinfo 	_pathInfoJ  f   	 
H m    MM �NN "   d o e s   n o t   e x i s t s .�X  �W  �Y  D O�RO L    PP m    �Q
�Q 
msng�R  �a  �`  = QRQ l   �P�O�N�P  �O  �N  R STS r    &UVU I    $�MW�L�M 	0 child  W X�KX o     �J�J 0 folder_name  �K  �L  V o      �I�I 0 
new_folder  T Y�HY L   ' /ZZ n  ' .[\[ I   ( .�G]�F�G 0 	make_path  ] ^�E^ J   ( *�D�D  �E  �F  \ o   ' (�C�C 0 
new_folder  �H  6 _`_ l     �B�A�@�B  �A  �@  ` aba l      �?cd�?  c	!@abstruct<!-- begin locale ja -->�ݒ肳��Ă���t�@�C���p�X�̃t�H���_�����܂��B <!-- begin locale en -->Make folders which indicating the path of the XFile instance.<!-- end locale -->@description<!-- begin locale ja -->
mkdir -p ���g���Ă���܂��B���s������ missing value���Ԃ�܂��B
�����ɃI�v�V�����Ƃ��ă��R�[�h��������������J�X�^�}�C�Y�ł��܂��B

{with_admin : boolean}

���̂Ƃ���Awith_admin �����ł��Btrue ���A�^����ƊǗ��Ҍ����Ńt�H���_�����܂��B
�I�v�V�������w�肵�Ȃ��ꍇ�́A��̃��X�g {} ��^���Ă��������B<!-- begin locale en -->
Using a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.<!-- end locale -->@result<!-- begin locale ja -->script object or missing value : �V����������t�H���_�� XFile �C���X�^���X�B<!-- begin locale en -->script object or missing value : a XFile instance of newly created folder.<!-- end locale -->   d �ee� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > �-[�0U0�0f0D0�0�0�0�0�0�0�0n0�0�0�0�0�O\0�0~0Y0    < ! - -   b e g i n   l o c a l e   e n   - - >  M a k e   f o l d e r s   w h i c h   i n d i c a t i n g   t h e   p a t h   o f   t h e   X F i l e   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 
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
 I f   y o u   d o n ' t   n e e d   t o   s p e c i f y   o p t i o n s ,   p a s s   a n   e m p t y   l i s t   { } .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :  e�0W0OO\0c0_0�0�0�0�0n   X F i l e  0�0�0�0�0�0�0  < ! - -   b e g i n   l o c a l e   e n   - - >  s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e   o f   n e w l y   c r e a t e d   f o l d e r .  < ! - -   e n d   l o c a l e   - - > b fgf i   � �hih I      �>j�=�> 0 	make_path  j k�<k o      �;�; 0 opts  �<  �=  i k     Rll mnm r     opo m     �:
�: boovfalsp o      �9�9 0 w_admin  n qrq Z    st�8�7s =   	uvu n    wxw 1    �6
�6 
pclsx o    �5�5 0 opts  v m    �4
�4 
recot r    yzy n    {|{ o    �3�3 0 
with_admin  | o    �2�2 0 opts  z o      �1�1 0 w_admin  �8  �7  r }~} Z    0��0�/ I    �.�-�,�. 0 item_exists  �-  �,  � Z    ,���+�� I    #�*�)�(�* 0 	is_folder  �)  �(  � L   & (��  f   & '�+  � m   + ,�'
�' 
msng�0  �/  ~ ��� I  1 @�&��
�& .sysoexecTEXT���     TEXT� b   1 :��� m   1 2�� ���  m k d i r   - p  � l  2 9��%�$� n   2 9��� 1   7 9�#
�# 
strq� I   2 7�"�!� �" 0 
posix_path  �!  �   �%  �$  � ���
� 
badm� o   ; <�� 0 w_admin  �  � ��� Z  A O����� I   A F���� 0 item_exists  �  �  � L   I K��  f   I J�  �  � ��� L   P R�� m   P Q�
� 
msng�  g ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l      ����  � 0 *!@group Reading and Writing File Contents    � ��� T ! @ g r o u p   R e a d i n g   a n d   W r i t i n g   F i l e   C o n t e n t s  � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct<!-- begin locale ja -->�t�@�C���̓��e�� UTF-8 �e�L�X�g�Ƃ��ēǂݍ��݂܂��B<!-- begin locale en -->Read file contents as UTF-8 encoded text.<!-- end locale -->@result Unicode text (UTF-8)   � ���l ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0nQ�[�0�   U T F - 8  0�0�0�0�0h0W0f��0��00~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  R e a d   f i l e   c o n t e n t s   a s   U T F - 8   e n c o d e d   t e x t .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   U n i c o d e   t e x t   ( U T F - 8 ) � ��� i   � ���� I      �
�	��
 0 read_as_utf8  �	  �  � k     �� ��� I     ���� !0 check_existance_raising_error  �  �  � ��� L    �� I   ���
� .rdwrread****        ****� l   ���� I    � �����  0 as_alias  ��  ��  �  �  � �����
�� 
as  � m    ��
�� 
utf8��  �  � ��� l     ��������  ��  ��  � ��� l      ������  �TN!@abstruct<!-- begin locale ja -->�t�@�C���� UTF-8 �e�L�X�g���������݂܂��B<!-- begin locale en -->Write data into the file as UTF-8 encoded text.<!-- end locale -->@param a_data (Unicode text or string) :<!-- begin locale ja -->�t�@�C���ɏ������ރf�[�^<!-- begin locale en -->data to write into the file.<!-- end locale -->   � ���b ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0k   U T F - 8  0�0�0�0�0�f�0M��00~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  W r i t e   d a t a   i n t o   t h e   f i l e   a s   U T F - 8   e n c o d e d   t e x t .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ d a t a   ( U n i c o d e   t e x t   o r   s t r i n g )   :  < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0kf�0M��0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > d a t a   t o   w r i t e   i n t o   t h e   f i l e .  < ! - -   e n d   l o c a l e   - - > � ��� i   � ���� I      ������� 0 write_as_utf8  � ���� o      ���� 
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
0 output  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � " !@group Parent and Children    � ��� 8 ! @ g r o u p   P a r e n t   a n d   C h i l d r e n  � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct<!-- begin locale ja -->XFile �̃C���X�^���X���Q�Ƃ��Ă���t�@�C��/�t�H���_���܂ރt�H���_���擾���܂��B<!-- begin locale en -->Obtain a folder containing the item referenced by the XFile instance.<!-- end locale -->@result<!-- begin locale ja -->script object : �e�t�H���_�� XFile �C���X�^���X<!-- begin locale en -->script object : a XFile instance of the parent folder.<!-- end locale -->   � ���� ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - >  X F i l e  0n0�0�0�0�0�0�0LS�qg0W0f0D0�0�0�0�0� /0�0�0�0�0�T+0�0�0�0�0�0�S�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   f o l d e r   c o n t a i n i n g   t h e   i t e m   r e f e r e n c e d   b y   t h e   X F i l e   i n s t a n c e .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  s c r i p t   o b j e c t   :  ��0�0�0�0�0n   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - >  s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e   o f   t h e   p a r e n t   f o l d e r .  < ! - -   e n d   l o c a l e   - - > � ��� i   � ���� I      �������� 0 parent_folder  ��  ��  � L     �� I     ������� 0 make_with_pathinfo  � ���� n   ��� n   ��� I    �������� 0 parent_folder  ��  ��  � o    ���� 0 	_pathinfo 	_pathInfo�  f    ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct<!-- begin locale ja -->�t�H���_���̃t�@�C��/�t�H���_�𑊑΃p�X���w�肵�Ď擾���܂��B<!-- begin locale en -->Obtain an item in the folder with specifying a sub path from the target.<!-- end locale -->@description<!-- begin locale ja -->���݂��Ȃ��t�H���_�ɑ΂��Ď��s����� missing value ���Ԃ�܂��B<!-- begin locale en -->If this methods is sent to non exsisting folder, missing value is returend.<!-- end locale -->@param suppath(Unicode text) :<!-- begin locale ja -->�擾���鍀�ڂ̃T�u�p�X<!-- begin locale en -->sub path to obtain.<!-- end locale -->@result<!-- begin locale ja -->script object or missing value : XFile �C���X�^���X<!-- begin locale en -->script object or missing value : a XFile instance<!-- end locale -->   � ���d ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�Q�0n0�0�0�0� /0�0�0�0�0�v�[�0�0�0�c[�0W0fS�_�0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a n   i t e m   i n   t h e   f o l d e r   w i t h   s p e c i f y i n g   a   s u b   p a t h   f r o m   t h e   t a r g e t .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > [XW(0W0j0D0�0�0�0�0k[�0W0f[��L0Y0�0h   m i s s i n g   v a l u e  0L��0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x s i s t i n g   f o l d e r ,   m i s s i n g   v a l u e   i s   r e t u r e n d .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   s u p p a t h ( U n i c o d e   t e x t )   :  < ! - -   b e g i n   l o c a l e   j a   - - >S�_�0Y0��v�0n0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > s u b   p a t h   t o   o b t a i n .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - >  s c r i p t   o b j e c t   o r   m i s s i n g   v a l u e   :   a   X F i l e   i n s t a n c e  < ! - -   e n d   l o c a l e   - - > � ��� i   � ���� I      ������� 	0 child  � ���� o      ���� 0 subpath  ��  ��  � Z     ���� � I     �������� 0 item_exists_without_update  ��  ��  � L     I    ������ 0 make_with_pathinfo   �� n  	  n  
  I    ������ 	0 child   	��	 o    ���� 0 subpath  ��  ��   o   
 ���� 0 	_pathinfo 	_pathInfo  f   	 
��  ��  ��    L    

 m    ��
�� 
msng�  l     ��������  ��  ��    i   � � I      ������ 0 child_posix   �� o      ���� 0 subpath  ��  ��   Z     "�� I     �������� 0 item_exists  ��  ��   k      r     I    �������� 0 
posix_path  ��  ��   o      ���� 
0 a_path    r     b      o    ���� 
0 a_path    o    ���� 0 subpath   o      ���� 
0 a_path   !��! L    "" I    ��#���� 0 	make_with  # $��$ o    ���� 
0 a_path  ��  ��  ��  ��   L     "%% m     !��
�� 
msng &'& l     ��������  ��  ��  ' ()( l     ��������  ��  ��  ) *+* l      ��,-��  ,-'!@abstruct<!-- begin locale ja -->�t�H���_���ő��Ɩ��O���d�����Ȃ� XFile �C���X�^���X�𐶐����܂��B<!-- begin locale en -->Obtain a XFile instance reference unique name item in the folder.<!-- end locale -->@description<!-- begin locale ja -->�t�H���_�łȂ� XFile �̃C���X�^���X�ɑ΂��Ď��s����ƁAmissing value ���Ԃ�܂��BXFile �̃C���X�^���X���t�@�C���Q�Ƃ����݂��Ȃ���΁Aerror number 1350 ���������܂��B<!-- begin locale en -->If the instance's file reference is not a folder, missing value will be returned.If this methods is sent to non existing item, error number 1350 will be raised.<!-- end locale -->@param a_candidate(Unicode text or list) :<!-- begin locale ja -->�擾�������t�@�C���Q�Ƃ̖��O�̌��B���ɑ��݂��閼�O�ł���ΕύX���������܂��B<!-- begin locale en -->A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.<!-- end locale -->@result<!-- begin locale ja -->script object : XFile �C���X�^���X<!-- begin locale en -->script object : a XFile instance<!-- end locale -->   - �..@ ! @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�Q�0gN�0hTRM0L�͉0W0j0D   X F i l e  0�0�0�0�0�0�0�ub0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  O b t a i n   a   X F i l e   i n s t a n c e   r e f e r e n c e   u n i q u e   n a m e   i t e m   i n   t h e   f o l d e r .  < ! - -   e n d   l o c a l e   - - >  @ d e s c r i p t i o n  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0g0j0D   X F i l e  0n0�0�0�0�0�0�0k[�0W0f[��L0Y0�0h0 m i s s i n g   v a l u e  0L��0�0~0Y0  X F i l e  0n0�0�0�0�0�0�0L0�0�0�0�S�qg0L[XW(0W0j0Q0�0p0 e r r o r   n u m b e r   1 3 5 0  0Lvzu0W0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  I f   t h e   i n s t a n c e ' s   f i l e   r e f e r e n c e   i s   n o t   a   f o l d e r ,   m i s s i n g   v a l u e   w i l l   b e   r e t u r n e d .  I f   t h i s   m e t h o d s   i s   s e n t   t o   n o n   e x i s t i n g   i t e m ,   e r r o r   n u m b e r   1 3 5 0   w i l l   b e   r a i s e d .  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   a _ c a n d i d a t e ( U n i c o d e   t e x t   o r   l i s t )   :  < ! - -   b e g i n   l o c a l e   j a   - - > S�_�0W0_0D0�0�0�0�S�qg0nTRM0nP��0e�0k[XW(0Y0�TRM0g0B0�0pY	f�0LR�0H0�0�0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  A   c a n d i d a t e   o f   a   n a m e   t o   o b t a i n   u n i q u e   i t e m .   I f   s a m e   n a m e   i t e m   e x i s t s ,   t h e   c a n d i d a t e   i s   m o d i f i e d .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  < ! - -   b e g i n   l o c a l e   j a   - - >  s c r i p t   o b j e c t   :   X F i l e  0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - >  s c r i p t   o b j e c t   :   a   X F i l e   i n s t a n c e  < ! - -   e n d   l o c a l e   - - > + /0/ i   � �121 I      ��3���� 0 unique_child  3 4��4 o      ���� 0 a_candidate  ��  ��  2 k     w55 676 Z     89����8 H     :: I     �������� 0 	is_folder  ��  ��  9 L   	 ;; m   	 
��
�� 
msng��  ��  7 <=< r    )>?> n   @A@ I    ��B���� 0 
split_name  B C��C o    ���� 0 a_candidate  ��  ��  A o    ���� 0 pathinfo PathInfo? J      DD EFE o      ���� 0 
a_basename  F G��G o      ���� 0 a_suffix  ��  = HIH Z   * ;JK��LJ =  * -MNM o   * +���� 0 a_suffix  N m   + ,��
�� 
msngK r   0 3OPO m   0 1QQ �RR  P o      �� 0 a_suffix  ��  L r   6 ;STS b   6 9UVU m   6 7WW �XX  .V o   7 8�~�~ 0 a_suffix  T o      �}�} 0 a_suffix  I YZY r   < ?[\[ m   < =�|�| \ o      �{�{ 0 i  Z ]^] r   @ C_`_ m   @ Aaa �bb  ` o      �z�z 0 escape_suffix  ^ cdc T   D tee k   I off ghg r   I Uiji I   I S�yk�x�y 	0 child  k l�wl b   J Omnm b   J Mopo o   J K�v�v 0 
a_basename  p o   K L�u�u 0 escape_suffix  n o   M N�t�t 0 a_suffix  �w  �x  j o      �s�s 0 a_child  h q�rq Z   V ors�qtr n  V [uvu I   W [�p�o�n�p 0 item_exists  �o  �n  v o   V W�m�m 0 a_child  s k   ^ kww xyx r   ^ ez{z b   ^ c|}| 1   ^ _�l
�l 
spac} l  _ b~�k�j~ c   _ b� o   _ `�i�i 0 i  � m   ` a�h
�h 
utxt�k  �j  { o      �g�g 0 escape_suffix  y ��f� r   f k��� [   f i��� o   f g�e�e 0 i  � m   g h�d�d � o      �c�c 0 i  �f  �q  t  S   n o�r  d ��b� L   u w�� o   u v�a�a 0 a_child  �b  0 ��� l     �`�_�^�`  �_  �^  � ��� i   � ���� I      �]�\�[�] 0 list_children  �\  �[  � L     
�� I    	�Z��Y
�Z .earslfdrutxt  @    file� I     �X�W�V�X 0 as_furl  �W  �V  �Y  � ��� l     �U�T�S�U  �T  �S  � ��� l      �R���R  �("!
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
� ��� i   � ���� I      �Q��P�Q 0 each  � ��O� o      �N�N 0 a_script  �O  �P  � k     @�� ��� r     ��� I     �M�L�K�M 0 list_children  �L  �K  � o      �J�J 
0 a_list  � ��� h    �I��I 0 listwrapper ListWrapper� j     �H�
�H 
pcnt� o     �G�G 
0 a_list  � ��� l   �F�E�D�F  �E  �D  � ��C� Y    @��B���A� k    ;�� ��� r    +��� I    )�@��?�@ 	0 child  � ��>� n    %��� 4   " %�=�
�= 
cobj� o   # $�<�< 0 n  � n    "��� 1     "�;
�; 
pcnt� o     �:�: 0 listwrapper ListWrapper�>  �?  � o      �9�9 
0 x_item  � ��8� Z   , ;���7�6� H   , 3�� n  , 2��� I   - 2�5��4�5 0 do  � ��3� o   - .�2�2 
0 x_item  �3  �4  � o   , -�1�1 0 a_script  �  S   6 7�7  �6  �8  �B 0 n  � m    �0�0 � I   �/��.
�/ .corecnte****       ****� o    �-�- 
0 a_list  �.  �A  �C  � ��� l     �,�+�*�,  �+  �*  � ��� l      �)���)  � * $!@group Working with Shell Commands    � ��� H ! @ g r o u p   W o r k i n g   w i t h   S h e l l   C o m m a n d s  � ��� l     �(�'�&�(  �'  �&  � ��� l      �%���%  ��|!@abstruct
<!-- begin locale ja -->
�^�[�Q�b�g�������ɂƂ��āA�V�F���R�}���h�����s���܂��B
<!-- begin locale en -->
run passed shell command taking the target as an argument.
<!-- end locale -->
@param a_command(text) : shell command
@result text : 
<!-- begin locale ja -->�V�F���R�}���h�̕W���o��
<!-- begin locale en -->standard output of the shell command
<!-- end locale -->
   � ���� ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�0�0�0�0�_ep0k0h0c0f00�0�0�0�0�0�0�0�[��L0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 r u n   p a s s e d   s h e l l   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   a _ c o m m a n d ( t e x t )   :   s h e l l   c o m m a n d 
 @ r e s u l t   t e x t   :   
 < ! - -   b e g i n   l o c a l e   j a   - - >0�0�0�0�0�0�0�0njn�Q�R� 
 < ! - -   b e g i n   l o c a l e   e n   - - > s t a n d a r d   o u t p u t   o f   t h e   s h e l l   c o m m a n d 
 < ! - -   e n d   l o c a l e   - - > 
� ��� i   � ���� I      �$��#�$ 0 perform_shell  � ��"� o      �!�! 0 	a_command  �"  �#  � L     �� I    � ��
�  .sysoexecTEXT���     TEXT� b     	��� b     ��� o     �� 0 	a_command  � 1    �
� 
spac� I    ���� 0 quoted_path  �  �  �  � ��� l     ����  �  �  � ��� l      ����  �LF!@abstruct
<!-- begin locale ja -->
�^�[�Q�b�g�������ɂƂ��āAtest �R�}���h�����s���܂��B
<!-- begin locale en -->
run test command taking the target as an argument.
<!-- end locale -->
@param option(text) : 
<!-- begin locale ja -->test �R�}���h�ɗ^����I�v�V�����B�ڂ����� test �R�}���h�� man �y�[�W�����Ă��������B
<!-- begin locale en -->an option to passed to the test command. See the man page of the test command.
@result boolean : 
<!-- begin locale ja -->test �R�}���h������������ true�B
<!-- begin locale en -->true if test command successfully exits.
<!-- end locale -->
   � ��� ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�0�0�0�0�_ep0k0h0c0f0 t e s t  0�0�0�0�0�[��L0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 r u n   t e s t   c o m m a n d   t a k i n g   t h e   t a r g e t   a s   a n   a r g u m e n t . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   o p t i o n ( t e x t )   :   
 < ! - -   b e g i n   l o c a l e   j a   - - > t e s t  0�0�0�0�0kN0H0�0�0�0�0�0�0�s0W0O0o   t e s t  0�0�0�0�0n   m a n  0�0�0�0���0f0O0`0U0D0 
 < ! - -   b e g i n   l o c a l e   e n   - - > a n   o p t i o n   t o   p a s s e d   t o   t h e   t e s t   c o m m a n d .   S e e   t h e   m a n   p a g e   o f   t h e   t e s t   c o m m a n d . 
 @ r e s u l t   b o o l e a n   :   
 < ! - -   b e g i n   l o c a l e   j a   - - > t e s t  0�0�0�0�0LbR�0W0_0�   t r u e0 
 < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   t e s t   c o m m a n d   s u c c e s s f u l l y   e x i t s . 
 < ! - -   e n d   l o c a l e   - - > 
� ��� i   � ���� I      ���� 0 
shell_test  � ��� o      �� 
0 option  �  �  � k     �� ��� Q     ���� I   ���
� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� m    �� ��� 
 t e s t  � o    �� 
0 option  � 1    �
� 
spac� I    ���� 0 quoted_path  �  �  �  � R      �
�	�
�
 .ascrerr ****      � ****�	  �  � L    �� m    �
� boovfals� ��� L    �� m    �
� boovtrue�  � ��� l     ����  �  �  � ��� l      ����  �  == private *   � �    = =   p r i v a t e   *�  l     � �����   ��  ��    i   � � I      �������� 0 	deep_copy  ��  ��   L      I     ������ 0 make_with_pathinfo   	��	 n   

 n    I    �������� 	0 clone  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f    ��  ��    l     ��������  ��  ��    i   � � I      �������� 0 item_ref  ��  ��   L      n     n    I    �������� 0 item_ref  ��  ��   o    ���� 0 	_pathinfo 	_pathInfo  f       l     ��������  ��  ��    i   � � I      �������� !0 check_existance_raising_error  ��  ��   Z     ! ���� H     !! l    "����" n    #$# n   %&% I    �������� 0 item_exists_without_update  ��  ��  & o    ���� 0 	_pathinfo 	_pathInfo$  f     ��  ��    R    ��'(
�� .ascrerr ****      � ****' b    )*) b    +,+ m    -- �.. 
 i t e m  , n    /0/ 1    ��
�� 
strq0 l   1����1 n   232 n   454 I    �������� 0 as_text  ��  ��  5 o    ���� 0 	_pathinfo 	_pathInfo3  f    ��  ��  * m    66 �77     d o e s   n o t   e x i s t .( ��8��
�� 
errn8 m    ����F��  ��  ��   9:9 l     ��������  ��  ��  : ;<; i   � �=>= I      �������� 0 update_pathinfo  ��  ��  > k     $?? @A@ r     BCB n    DED I    ��F���� 0 make_with_opts  F GHG n   IJI n   KLK I    �������� 0 item_ref  ��  ��  L o    ���� 0 	_pathinfo 	_pathInfoJ  f    H M��M K    NN ��O���� 0 prefering_posix  O n   PQP n   RSR I    �������� 0 is_posix  ��  ��  S o    ���� 0 	_pathinfo 	_pathInfoQ  f    ��  ��  ��  E o     ���� 0 pathinfo PathInfoC n     TUT o    ���� 0 	_pathinfo 	_pathInfoU  f    A V��V L    $WW n   #XYX o     "���� 0 	_pathinfo 	_pathInfoY  f     ��  < Z[Z l     ��������  ��  ��  [ \]\ i   � �^_^ I      �������� 0 dump  ��  ��  _ L     `` I     �������� 0 
posix_path  ��  ��  ] aba l     ��������  ��  ��  b cdc i   � �efe I     ������
�� .ascrcmnt****      � ****��  ��  f M     gg I     ��h��
�� .ascrcmnt****      � ****h I    �������� 0 dump  ��  ��  ��  d iji l     ��������  ��  ��  j klk i   � �mnm I      �������� 	0 debug  ��  ��  n k     2oo pqp I    ��rs
�� .MoloBootscpt        scptr l    t����t I    ������
�� .MoloMKloscpt    ��� null��  ��  ��  ��  s ��u��
�� 
forMu  f    ��  q vwv r    xyx 4    ��z
�� 
psxfz m    {{ �|| F / U s e r s / t k u r i t a / D e s k t o p / k a s o k u k i . p d fy o      ���� 
0 a_path  w }~} r    � I    ������� 0 	make_with  � ���� o    ���� 
0 a_path  ��  ��  � o      ���� 0 a_xfile  ~ ��� l   ������  � K Ereturn a_result's change_path_extension(missing value)'s posix_path()   � ��� � r e t u r n   a _ r e s u l t ' s   c h a n g e _ p a t h _ e x t e n s i o n ( m i s s i n g   v a l u e ) ' s   p o s i x _ p a t h ( )� ��� r    (��� n   &��� I   ! &������� 0 unique_child  � ���� m   ! "�� ��� : k a s o k u k i - V 1 - N o 3 - 2 0 0 4 - p 2 1 6 . p d f��  ��  � n   !��� I    !�������� 0 parent_folder  ��  ��  � o    ���� 0 a_xfile  � o      ���� 0 new_named_file  � ���� I  ) 2�����
�� .ascrcmnt****      � ****� n  ) .��� I   * .�������� 0 	item_name  ��  ��  � o   ) *���� 0 new_named_file  ��  ��  l ��� l     ����~��  �  �~  � ��� i   � ���� I     �}�|�{
�} .aevtoappnull  �   � ****�|  �{  � k     �� ��� l     �z���z  �  return debug()   � ���  r e t u r n   d e b u g ( )� ��y� Q     ���� I   �x��
�x .HBsushHBTEXT    ��� file� l   ��w�v� I   �u��t
�u .earsffdralis        afdr�  f    �t  �w  �v  � �s��r
�s 
rcIP� m   	 
�q
�q boovtrue�r  � R      �p��
�p .ascrerr ****      � ****� o      �o�o 0 msg  � �n��m
�n 
errn� o      �l�l 	0 errno  �m  � I   �k��j
�k .sysodisAaleR        TEXT� l   ��i�h� b    ��� b    ��� o    �g�g 0 msg  � o    �f
�f 
ret � o    �e�e 	0 errno  �i  �h  �j  �y  � ��d� l     �c�b�a�c  �b  �a  �d       A�`�  ��_������������������������������������������������������������`  � ?�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� 
�^ 
pnam
�] 
vers�\ 0 pathinfo PathInfo�[ 0 _prefer_posix  �Z 0 prefer_posix  �Y 0 	make_with  �X 0 make_with_pathinfo  �W 0 change_name  �V 0 change_folder  �U 0 change_path_extension  �T 0 as_alias  �S 0 as_furl  �R 0 hfs_path  �Q 0 
posix_path  �P 0 normalized_posix_path  �O 0 quoted_path  �N 0 	is_folder  �M 0 
is_package  �L 0 is_alias  �K 0 
is_symlink  �J 0 
is_visible  �I 0 type_identifier  �H 0 	set_types  �G 0 info  �F 0 re_info  �E 0 	item_name  �D 0 basename  �C 0 path_extension  �B 0 update_cache  �A 0 bundle_resource  �@ $0 bundle_infoplist bundle_InfoPlist�? 0 bundle_resources_folder  �> 0 item_exists  �= 0 item_exists_without_update  
�< .coredoexbool       obj �; 0 	rename_to  �: 0 copy_to  �9 0 copy_with_opts  �8 0 finder_copy_to  �7 0 move_to  �6 0 resolve_alias  �5 0 
into_trash  �4 
0 remove  �3 0 make_folder  �2 0 	make_path  �1 0 read_as_utf8  �0 0 write_as_utf8  �/ 0 parent_folder  �. 	0 child  �- 0 child_posix  �, 0 unique_child  �+ 0 list_children  �* 0 each  �) 0 perform_shell  �( 0 
shell_test  �' 0 	deep_copy  �& 0 item_ref  �% !0 check_existance_raising_error  �$ 0 update_pathinfo  �# 0 dump  
�" .ascrcmnt****      � ****�! 	0 debug  
�  .aevtoappnull  �   � ****� ���
� 
pcls
� 
MoSp�  
�_ boovtrue� � ,������ 0 prefer_posix  � ��� �  �� 0 bool  �  � �� 0 bool  � �� 0 _prefer_posix  � �)�,F� � D������ 0 	make_with  � ��� �  �� 0 file_ref  �  � ���� 0 file_ref  � 
0 is_hfs  � 0 	path_info  � 	��
�	� `����
� 
ctxt
�
 
utxt
�	 
TEXT
� 
pcls� 0 make_with_hfs  � 0 _prefer_posix  � 0 make_with_posix  � 0 make_with_pathinfo  � YfE�O���mv��, ��E�Y hO� b  �k+ E�Y $)�,E b  �k+ E�Y b  �k+ E�O*�k+ � � ������ � 0 make_with_pathinfo  � ����� �  ���� 0 	path_info  �  � �������� 0 	path_info  �� 0 a_parent  �� 0 xfile XFile� �� ���� 0 xfile XFile� �������� ��
�� .ascrinit****      � ****� k       �  �  �  �����  ��  ��  � ��������
�� 
pare�� 0 	_pathinfo 	_pathInfo�� 0 _inforecord _infoRecord�� 0 _prefer_posix    ������������
�� 
pare�� 0 	_pathinfo 	_pathInfo
�� 
msng�� 0 _inforecord _infoRecord�� 0 is_posix  �� 0 _prefer_posix  �� b  N  Ob   �O�Ob   j+ ��  )E�O��K S�O�� �� ��������� 0 change_name  �� ����   ���� 
0 a_name  ��   ������ 
0 a_name  �� 0 	path_info   �������� 0 	_pathinfo 	_pathInfo�� 0 change_name  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ � �� �����	���� 0 change_folder  �� ��
�� 
  ���� 0 
folder_ref  ��   ������ 0 
folder_ref  �� 0 	path_info  	 �������� 0 	_pathinfo 	_pathInfo�� 0 change_folder  �� 0 make_with_pathinfo  �� )�,�k+ E�O*�k+ � �� ��������� 0 change_path_extension  �� ����   ���� 0 a_suffix  ��   ���� 0 a_suffix   �������� 0 	_pathinfo 	_pathInfo�� 0 change_path_extension  �� 0 make_with_pathinfo  �� *)�,�k+ k+ � ���������� 0 as_alias  ��  ��     �������� !0 check_existance_raising_error  �� 0 	_pathinfo 	_pathInfo�� 0 as_alias  �� *j+  O)�,j+ � ��&�������� 0 as_furl  ��  ��     ������ 0 	_pathinfo 	_pathInfo�� 0 as_furl  �� 	)�,j+ � ��6�������� 0 hfs_path  ��  ��     ������ 0 	_pathinfo 	_pathInfo�� 0 hfs_path  �� 	)�,j+ � ��F�������� 0 
posix_path  ��  ��     ������ 0 	_pathinfo 	_pathInfo�� 0 
posix_path  �� 	)�,j+ � ��V�������� 0 normalized_posix_path  ��  ��     ������ 0 	_pathinfo 	_pathInfo�� 0 normalized_posix_path  �� 	)�,j+ � ��a�������� 0 quoted_path  ��  ��     �������� 0 	_pathinfo 	_pathInfo�� 0 
posix_path  
�� 
strq�� )�,j+ �,E� ��z�������� 0 	is_folder  ��  ��   ���� 0 info_rec   ������ 0 info  
�� 
asdr�� *j+  E�O��,E� ����������� 0 
is_package  ��  ��   ���� 0 info_rec   ������ 0 info  
�� 
ispk�� *j+  E�O��,E� ����������� 0 is_alias  ��  ��   ���� 0 info_rec   ������ 0 info  
�� 
alis�� *j+  E�O��,E� ������� !���� 0 
is_symlink  ��  ��     ! ����������� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  ��  �*j+ %j W 	X  fOe� �������"#���� 0 
is_visible  ��  ��  " ���� 0 info_rec  # ������ 0 info  
�� 
pvis�� *j+  E�O��,E� �����~$%�}�� 0 type_identifier  �  �~  $ �|�| 0 info_rec  % �{�z�{ 0 info  
�z 
utid�} *j+  E�O��,E� �y��x�w&'�v�y 0 	set_types  �x �u(�u (  �t�s�t 0 creator_code  �s 0 	type_code  �w  & �r�q�p�r 0 creator_code  �q 0 	type_code  �p 
0 a_file  ' �o�n�m�l�k�j�o 0 	is_folder  �n 0 as_alias  
�m 
fcrt
�l 
asty
�k 
msng�j 0 _inforecord _infoRecord�v ,*j+   #*j+ E�O� ���,FO���,FUO�)�,FY h� �i&�h�g)*�f�i 0 info  �h  �g  )  * �e�d�c�b�a�e 0 _inforecord _infoRecord
�d 
msng�c !0 check_existance_raising_error  �b 0 as_furl  
�a .sysonfo4asfe        file�f &)�,�  *j+ O*j+ j )�,FY hO)�,E� �`G�_�^+,�]�` 0 re_info  �_  �^  +  , �\�[�Z�\ 0 as_furl  
�[ .sysonfo4asfe        file�Z 0 _inforecord _infoRecord�] *j+  j )�,FO)�,E� �Ye�X�W-.�V�Y 0 	item_name  �X  �W  -  . �U�T�U 0 	_pathinfo 	_pathInfo�T 0 	item_name  �V 	)�,j+ � �Su�R�Q/0�P�S 0 basename  �R  �Q  /  0 �O�N�O 0 	_pathinfo 	_pathInfo�N 0 basename  �P 	)�,j+ � �M��L�K12�J�M 0 path_extension  �L  �K  1  2 �I�H�I 0 	_pathinfo 	_pathInfo�H 0 path_extension  �J 	)�,j+ � �G��F�E34�D�G 0 update_cache  �F  �E  3  4 �C�B�A�@�?�C 0 _inforecord _infoRecord
�B 
msng�A !0 check_existance_raising_error  �@ 0 item_ref  
�? .sysonfo4asfe        file�D  )�,� *j+ O*j+ j )�,FY h� �>��=�<56�;�> 0 bundle_resource  �= �:7�: 7  �9�9 0 resource_name  �<  5 �8�8 0 resource_name  6 �7�6�5�4
�7 
in B�6 0 as_alias  
�5 .sysorpthalis        TEXT�4 0 	make_with  �; *��*j+ l k+ � �3��2�189�0�3 $0 bundle_infoplist bundle_InfoPlist�2  �1  8  9 ��/�/ 0 child_posix  �0 *�k+ � �.��-�,:;�+�. 0 bundle_resources_folder  �-  �,  :  ; ��*�* 0 child_posix  �+ *�k+ � �)��(�'<=�&�) 0 item_exists  �(  �'  <  = �%�$�% 0 	_pathinfo 	_pathInfo�$ 0 item_exists  �& 	)�,j+ � �#��"�!>?� �# 0 item_exists_without_update  �"  �!  >  ? ��� 0 	_pathinfo 	_pathInfo� 0 item_exists_without_update  �  	)�,j+ � �	��@A�
� .coredoexbool       obj �  �  @  A �� 0 item_exists  � *j+  � ���BC�� 0 	rename_to  � �D� D  �� 0 new_name  �  B �� 0 new_name  C �,������� 0 item_exists  � 0 item_ref  
� 
pnam
� 
msng� 0 _inforecord _infoRecord� 0 	_pathinfo 	_pathInfo� 0 set_name  � 1*j+   fY hO� �)j+ �,FUO�)�,FO)�,�k+ Oe� �
I�	�EF��
 0 copy_to  �	 �G� G  �� 0 a_destination  �  E �� 0 a_destination  F ��
� 
msng� 0 copy_with_opts  � 	*��l+ � �[� ��HI��� 0 copy_with_opts  �  ��J�� J  ������ 0 a_destination  �� 0 opts  ��  H ������������������������ 0 a_destination  �� 0 opts  �� 0 w_replacing  �� 0 w_admin  �� 0 
w_removing  �� 0 command  �� 0 com_opts  �� 0 is_folder_to  �� 0 destination_path  �� 0 source_path  �� 0 	a_command  I ���������������������������������������������������
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
�j+ Y �a   �j+ E�Y hY hO�j+ a ,E�O*j+ a ,E�O�_ %�%_ %�%_ %�%E�O�a �l O� �*j+ k+ Y hO�� ��D����KL���� 0 finder_copy_to  �� ��M�� M  ������ 0 a_destination  �� 0 with_replacing  ��  K ������������ 0 a_destination  �� 0 with_replacing  �� 0 destination  �� 0 source_alias  �� 0 new_item  L ��b�������������� 0 as_alias  
�� 
insh
�� 
alrp�� 
�� .coreclon****      � ****
�� 
alis�� 0 	make_with  �� +�j+  E�O*j+  E�O� ���� �&E�UO*�k+ � ��q����NO���� 0 move_to  �� ��P�� P  ���� 0 a_destination  ��  N �������� 0 a_destination  �� 0 destination_path  �� 0 source_path  O ������������� 0 item_exists  �� 0 
posix_path  
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� 3*j+   fY hO�j+ �,E�O*j+ �,E�O�%�%�%j Oe� �������QR���� 0 resolve_alias  ��  ��  Q �������� 0 info_rec  �� 0 original_item  �� 
0 errmsg  R ������������������������� 0 info  
�� 
alis�� 0 as_alias  
�� 
orig�� 
0 errmsg  ��  
�� 
msng�� 0 	make_with  �� 0 
is_symlink  �� 0 	deep_copy  �� 0 item_exists  �� V*j+  E�O��,E * � )j+ �,�&E�UW 	X  �O*�k+ Y  *j+ 	 *j+ 
E�O�j+ O�Y )� �������ST���� 0 
into_trash  ��  ��  S ���� 
0 a_file  T ��������� 0 as_alias  
�� .coredeloobj        obj �� 0 update_pathinfo  �� *j+  E�O� �j UO*j+ � �� ����UV���� 
0 remove  ��  ��  U ������ 
0 a_file  �� 
0 a_path  V 	������������������ 0 
posix_path  
�� 
strq�� 0 	_pathinfo 	_pathInfo�� 0 as_text  
�� .sysoexecTEXT���     TEXT�� 0 	_item_ref  
�� 
msng�� 0 _inforecord _infoRecord�� -*j+  �,E�O)�,j+ E�O�%j O�)�,�,FO�)�,FO)� ��8����WX���� 0 make_folder  �� ��Y�� Y  ���� 0 folder_name  ��  W ������ 0 folder_name  �� 0 
new_folder  X ������M���������� 0 item_exists  �� 0 	_pathinfo 	_pathInfo�� 0 as_text  
�� .ascrcmnt****      � ****
�� 
msng�� 	0 child  �� 0 	make_path  �� 0*j+   )�,j+ �%j O�Y hO*�k+ E�O�jvk+ � ��i���Z[�~�� 0 	make_path  �� �}\�} \  �|�| 0 opts  �  Z �{�z�{ 0 opts  �z 0 w_admin  [ �y�x�w�v�u�t��s�r�q�p
�y 
pcls
�x 
reco�w 0 
with_admin  �v 0 item_exists  �u 0 	is_folder  
�t 
msng�s 0 
posix_path  
�r 
strq
�q 
badm
�p .sysoexecTEXT���     TEXT�~ SfE�O��,�  
��,E�Y hO*j+  *j+  )Y �Y hO�*j+ �,%�l 
O*j+  )Y hO�� �o��n�m]^�l�o 0 read_as_utf8  �n  �m  ]  ^ �k�j�i�h�g�k !0 check_existance_raising_error  �j 0 as_alias  
�i 
as  
�h 
utf8
�g .rdwrread****        ****�l *j+  O*j+ ��l � �f��e�d_`�c�f 0 write_as_utf8  �e �ba�b a  �a�a 
0 a_data  �d  _ �`�_�` 
0 a_data  �_ 
0 output  ` �^�]�\�[�Z�Y�X�W�V�U�T�^ 0 as_furl  
�] 
perm
�\ .rdwropenshor       file
�[ 
set2
�Z .rdwrseofnull���     ****
�Y 
refn
�X 
as  
�W 
utf8�V 
�U .rdwrwritnull���     ****
�T .rdwrclosnull���     ****�c &*j+  �el E�O��jl O����� 	O�j 
� �S��R�Qbc�P�S 0 parent_folder  �R  �Q  b  c �O�N�M�O 0 	_pathinfo 	_pathInfo�N 0 parent_folder  �M 0 make_with_pathinfo  �P *)�,j+ k+ � �L��K�Jde�I�L 	0 child  �K �Hf�H f  �G�G 0 subpath  �J  d �F�F 0 subpath  e �E�D�C�B�A�E 0 item_exists_without_update  �D 0 	_pathinfo 	_pathInfo�C 	0 child  �B 0 make_with_pathinfo  
�A 
msng�I *j+   *)�,�k+ k+ Y �� �@�?�>gh�=�@ 0 child_posix  �? �<i�< i  �;�; 0 subpath  �>  g �:�9�: 0 subpath  �9 
0 a_path  h �8�7�6�5�8 0 item_exists  �7 0 
posix_path  �6 0 	make_with  
�5 
msng�= #*j+   *j+ E�O��%E�O*�k+ Y �� �42�3�2jk�1�4 0 unique_child  �3 �0l�0 l  �/�/ 0 a_candidate  �2  j �.�-�,�+�*�)�. 0 a_candidate  �- 0 
a_basename  �, 0 a_suffix  �+ 0 i  �* 0 escape_suffix  �) 0 a_child  k �(�'�&�%QWa�$�#�"�!�( 0 	is_folder  
�' 
msng�& 0 
split_name  
�% 
cobj�$ 	0 child  �# 0 item_exists  
�" 
spac
�! 
utxt�1 x*j+   �Y hOb  �k+ E[�k/E�Z[�l/E�ZO��  �E�Y �%E�OlE�O�E�O /hZ*��%�%k+ E�O�j+  ɣ�&%E�O�kE�Y [OY��O�� � ���mn��  0 list_children  �  �  m  n ��� 0 as_furl  
� .earslfdrutxt  @    file� *j+  j � ����op�� 0 each  � �q� q  �� 0 a_script  �  o ������ 0 a_script  � 
0 a_list  � 0 listwrapper ListWrapper� 0 n  � 
0 x_item  p 	���r����
�	� 0 list_children  � 0 listwrapper ListWrapperr �s��tu�
� .ascrinit****      � ****s k     vv ���  �  �  t �
� 
pcntu �
� 
pcnt� b  �
� .corecnte****       ****
� 
pcnt
� 
cobj�
 	0 child  �	 0 do  � A*j+  E�O��K S�O /k�j kh *��,�/k+ E�O��k+  Y h[OY��� ��� ��wx��� 0 perform_shell  �  ��y�� y  ���� 0 	a_command  ��  w ���� 0 	a_command  x ������
�� 
spac�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT�� ��%*j+ %j � �������z{���� 0 
shell_test  �� ��|�� |  ���� 
0 option  ��  z ���� 
0 option  { �����������
�� 
spac�� 0 quoted_path  
�� .sysoexecTEXT���     TEXT��  ��  ��   �%�%*j+ %j W 	X  fOe� ������}~���� 0 	deep_copy  ��  ��  }  ~ �������� 0 	_pathinfo 	_pathInfo�� 	0 clone  �� 0 make_with_pathinfo  �� *)�,j+ k+ � ����������� 0 item_ref  ��  ��    � ������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 	)�,j+ � ������������ !0 check_existance_raising_error  ��  ��  �  � ��������-����6�� 0 	_pathinfo 	_pathInfo�� 0 item_exists_without_update  
�� 
errn��F�� 0 as_text  
�� 
strq�� ")�,j+  )��l�)�,j+ �,%�%Y h� ��>���������� 0 update_pathinfo  ��  ��  �  � ������������ 0 	_pathinfo 	_pathInfo�� 0 item_ref  �� 0 prefering_posix  �� 0 is_posix  �� 0 make_with_opts  �� %b  )�,j+ �)�,j+ ll+ )�,FO)�,E� ��_���������� 0 dump  ��  ��  �  � ���� 0 
posix_path  �� *j+  � ��f��������
�� .ascrcmnt****      � ****��  ��  �  � ������ 0 dump  
�� .ascrcmnt****      � ****�� )jd*j+   � ��n���������� 	0 debug  ��  ��  � �������� 
0 a_path  �� 0 a_xfile  �� 0 new_named_file  � ��������{�����������
�� .MoloMKloscpt    ��� null
�� 
forM
�� .MoloBootscpt        scpt
�� 
psxf�� 0 	make_with  �� 0 parent_folder  �� 0 unique_child  �� 0 	item_name  
�� .ascrcmnt****      � ****�� 3*j  �)l O)��/E�O*�k+ E�O�j+ �k+ E�O�j+ 	j 
� �����������
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