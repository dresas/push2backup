FasdUAS 1.101.10   ��   ��    k             l      ��  ��   	================================

Name:   push2backup
Author:   sdSoftware
Version:  1.2
Date:    27.07.2018


The script makes a backup of a folder each time it 
is started.
 
When the script is started for the first time, the 
folder to be backed up and the location of the 
backups are queried. From the second start of the 
script the backup is created directly.
The backup is saved as a ZIP file with the date and 
time added; example: 
'name-of-source-folder'_YYYYYMMDD_hhhmmss.zip

================================     � 	 	 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 
 N a m e :       p u s h 2 b a c k u p 
 A u t h o r :       s d S o f t w a r e 
 V e r s i o n :     1 . 2 
 D a t e :         2 7 . 0 7 . 2 0 1 8 
 
 
 T h e   s c r i p t   m a k e s   a   b a c k u p   o f   a   f o l d e r   e a c h   t i m e   i t   
 i s   s t a r t e d . 
   
 W h e n   t h e   s c r i p t   i s   s t a r t e d   f o r   t h e   f i r s t   t i m e ,   t h e   
 f o l d e r   t o   b e   b a c k e d   u p   a n d   t h e   l o c a t i o n   o f   t h e   
 b a c k u p s   a r e   q u e r i e d .   F r o m   t h e   s e c o n d   s t a r t   o f   t h e   
 s c r i p t   t h e   b a c k u p   i s   c r e a t e d   d i r e c t l y . 
 T h e   b a c k u p   i s   s a v e d   a s   a   Z I P   f i l e   w i t h   t h e   d a t e   a n d   
 t i m e   a d d e d ;   e x a m p l e :   
 ' n a m e - o f - s o u r c e - f o l d e r ' _ Y Y Y Y Y M M D D _ h h h m m s s . z i p 
 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    H B property to save the path of the source-folder for the next start     �   �   p r o p e r t y   t o   s a v e   t h e   p a t h   o f   t h e   s o u r c e - f o l d e r   f o r   t h e   n e x t   s t a r t      j     �� �� ,0 propertysourcefolder propertySourceFolder  m        �          l     ��  ��    H B property to save the path of the target-folder for the next start     �   �   p r o p e r t y   t o   s a v e   t h e   p a t h   o f   t h e   t a r g e t - f o l d e r   f o r   t h e   n e x t   s t a r t       j    �� !�� ,0 propertytargetfolder propertyTargetFolder ! m     " " � # #      $ % $ l     ��������  ��  ��   %  & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   * #  select or load source folder    + � , , :   s e l e c t   o r   l o a d   s o u r c e   f o l d e r )  - . - l     �� / 0��   / %  ==============================    0 � 1 1 >   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = .  2 3 2 l     �� 4 5��   4 / ) check if source folder property is empty    5 � 6 6 R   c h e c k   i f   s o u r c e   f o l d e r   p r o p e r t y   i s   e m p t y 3  7 8 7 l    + 9���� 9 Z     + : ;�� < : =     = > = o     ���� ,0 propertysourcefolder propertySourceFolder > m     ? ? � @ @   ; k   
 ! A A  B C B l  
 
�� D E��   D #  source folder selection menu    E � F F :   s o u r c e   f o l d e r   s e l e c t i o n   m e n u C  G H G r   
  I J I I  
 ���� K
�� .sysostflalis    ��� null��   K �� L M
�� 
prmp L m     N N � O O @ S e l e c t   t h e   f o l d e r   t o   b a c k   u p   . . . M �� P��
�� 
dflc P I   �� Q��
�� .earsffdralis        afdr Q m    ��
�� afdrdocs��  ��   J o      ���� 0 sourcefolder sourceFolder H  R S R l   �� T U��   T ? 9 store source folder path in property for next script run    U � V V r   s t o r e   s o u r c e   f o l d e r   p a t h   i n   p r o p e r t y   f o r   n e x t   s c r i p t   r u n S  W�� W r    ! X Y X o    ���� 0 sourcefolder sourceFolder Y o      ���� ,0 propertysourcefolder propertySourceFolder��  ��   < k   $ + Z Z  [ \ [ l  $ $�� ] ^��   ] , & load target folder path from property    ^ � _ _ L   l o a d   t a r g e t   f o l d e r   p a t h   f r o m   p r o p e r t y \  `�� ` r   $ + a b a o   $ )���� ,0 propertysourcefolder propertySourceFolder b o      ���� 0 sourcefolder sourceFolder��  ��  ��   8  c d c l     �� e f��   e ' ! save source-folder as Mac-String    f � g g B   s a v e   s o u r c e - f o l d e r   a s   M a c - S t r i n g d  h i h l  , 1 j���� j r   , 1 k l k l  , / m���� m c   , / n o n o   , -���� 0 sourcefolder sourceFolder o m   - .��
�� 
TEXT��  ��   l o      ���� 20 sourcefolderasstringmac sourceFolderAsStringMac��  ��   i  p q p l     �� r s��   r ( " save source-folder as UNIX-String    s � t t D   s a v e   s o u r c e - f o l d e r   a s   U N I X - S t r i n g q  u v u l  2 7 w���� w r   2 7 x y x n   2 5 z { z 1   3 5��
�� 
psxp { o   2 3���� 20 sourcefolderasstringmac sourceFolderAsStringMac y o      ���� 40 sourcefolderasstringunix sourceFolderAsStringUnix��  ��   v  | } | l     �� ~ ��   ~ &   remove the last '/' of the path     � � � @   r e m o v e   t h e   l a s t   ' / '   o f   t h e   p a t h }  � � � l  8 E ����� � r   8 E � � � n   8 C � � � 7  9 C�� � �
�� 
ctxt � m   = ?����  � m   @ B������ � o   8 9���� 40 sourcefolderasstringunix sourceFolderAsStringUnix � o      ���� 20 sourcefolderunixshorted sourceFolderUnixShorted��  ��   �  � � � l     �� � ���   � $  save path as quoted-Unix-path    � � � � <   s a v e   p a t h   a s   q u o t e d - U n i x - p a t h �  � � � l  F O ����� � r   F O � � � n   F K � � � 1   G K��
�� 
strq � o   F G���� 20 sourcefolderunixshorted sourceFolderUnixShorted � o      ���� 00 sourcefolderunixquoted sourceFolderUnixQuoted��  ��   �  � � � l     �� � ���   � %  ==============================    � � � � >   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � #  select or load target folder    � � � � :   s e l e c t   o r   l o a d   t a r g e t   f o l d e r �  � � � l     �� � ���   � %  ==============================    � � � � >   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �  � � � l     �� � ���   � / ) check if target folder property is empty    � � � � R   c h e c k   i f   t a r g e t   f o l d e r   p r o p e r t y   i s   e m p t y �  � � � l  P � ����� � Z   P � � ��� � � =  P Y � � � o   P U���� ,0 propertytargetfolder propertyTargetFolder � m   U X � � � � �   � k   \ y � �  � � � l  \ \�� � ���   � %  backup location selection menu    � � � � >   b a c k u p   l o c a t i o n   s e l e c t i o n   m e n u �  � � � r   \ o � � � I  \ k���� �
�� .sysostflalis    ��� null��   � �� � �
�� 
prmp � m   ^ a � � � � � D S e l e c t   f o l d e r   t o   s t o r e   b a c k u p s   . . . � �� ���
�� 
dflc � I  b g�� ���
�� .earsffdralis        afdr � m   b c��
�� afdrdocs��  ��   � o      ���� 0 targetfolder targetFolder �  � � � l  p p�� � ���   � ? 9 store target folder path in property for next script run    � � � � r   s t o r e   t a r g e t   f o l d e r   p a t h   i n   p r o p e r t y   f o r   n e x t   s c r i p t   r u n �  ��� � r   p y � � � o   p s���� 0 targetfolder targetFolder � o      ���� ,0 propertytargetfolder propertyTargetFolder��  ��   � k   | � � �  � � � l  | |�� � ���   � , & load target folder path from property    � � � � L   l o a d   t a r g e t   f o l d e r   p a t h   f r o m   p r o p e r t y �  ��� � r   | � � � � o   | ����� ,0 propertytargetfolder propertyTargetFolder � o      ���� 0 targetfolder targetFolder��  ��  ��   �  � � � l     �� � ���   � ' ! save target folder as Mac-String    � � � � B   s a v e   t a r g e t   f o l d e r   a s   M a c - S t r i n g �  � � � l  � � ����� � r   � � � � � l  � � ����� � c   � � � � � o   � ����� 0 targetfolder targetFolder � m   � ���
�� 
TEXT��  ��   � o      ���� 20 targetfolderasstringmac targetFolderAsStringMac��  ��   �  � � � l     �� � ���   � ( " save target folder as UNIX-String    � � � � D   s a v e   t a r g e t   f o l d e r   a s   U N I X - S t r i n g �  � � � l  � � ����� � r   � � � � � n   � � � � � 1   � ���
�� 
psxp � o   � ����� 20 targetfolderasstringmac targetFolderAsStringMac � o      ���� 40 targetfolderasstringunix targetFolderAsStringUnix��  ��   �  � � � l     �� � ���   � %  ==============================    � � � � >   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 6 0 save source-folder as zip-file in target-folder    � �   `   s a v e   s o u r c e - f o l d e r   a s   z i p - f i l e   i n   t a r g e t - f o l d e r �  l     ��   %  ==============================    � >   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  l  ��~�} O   �	
	 k   �  l  � ��|�|   > 8 save the path to the parent folder of the source folder    � p   s a v e   t h e   p a t h   t o   t h e   p a r e n t   f o l d e r   o f   t h e   s o u r c e   f o l d e r  r   � � c   � � n   � � m   � ��{
�{ 
ctnr o   � ��z�z 0 sourcefolder sourceFolder m   � ��y
�y 
alis o      �x�x (0 sourcefolderparent sourceFolderParent  l  � ��w�w   K E save the current Date and time as text in the format YYYYMMDD_HHMMSS    � �   s a v e   t h e   c u r r e n t   D a t e   a n d   t i m e   a s   t e x t   i n   t h e   f o r m a t   Y Y Y Y M M D D _ H H M M S S  r   � � !  I  � ��v"�u
�v .sysoexecTEXT���     TEXT" m   � �## �$$ * d a t e   ' + % Y % m % d _ % H % M % S '�u  ! o      �t�t 0 
datestring 
dateString %&% l  � ��s'(�s  ' � � change cactive directory to the parent of and save the source-folder as zip-file with the name "'name of source folder'_YYMMDD_HHMMSS"   ( �))   c h a n g e   c a c t i v e   d i r e c t o r y   t o   t h e   p a r e n t   o f   a n d   s a v e   t h e   s o u r c e - f o l d e r   a s   z i p - f i l e   w i t h   t h e   n a m e   " ' n a m e   o f   s o u r c e   f o l d e r ' _ Y Y M M D D _ H H M M S S "& *+* I  � ��r,�q
�r .sysoexecTEXT���     TEXT, b   � �-.- b   � �/0/ b   � �121 b   � �343 b   � �565 b   � �787 b   � �9:9 b   � �;<; m   � �== �>>  c d  < l  � �?�p�o? n   � �@A@ 1   � ��n
�n 
strqA l  � �B�m�lB n   � �CDC 1   � ��k
�k 
psxpD o   � ��j�j (0 sourcefolderparent sourceFolderParent�m  �l  �p  �o  : m   � �EE �FF 6 ; 
 	 	 	 	 	 z i p   - r     " $ ( b a s e n a m e  8 o   � ��i�i 00 sourcefolderunixquoted sourceFolderUnixQuoted6 m   � �GG �HH  _4 o   � ��h�h 0 
datestring 
dateString2 m   � �II �JJ & ) . z i p "   " $ ( b a s e n a m e  0 o   � ��g�g 00 sourcefolderunixquoted sourceFolderUnixQuoted. m   � �KK �LL  ) "�q  + MNM l  � ��fOP�f  O 9 3 move zip-file fomr source-folder to target-foulder   P �QQ f   m o v e   z i p - f i l e   f o m r   s o u r c e - f o l d e r   t o   t a r g e t - f o u l d e rN R�eR I  ��dST
�d .coremovenull���     obj S c   �UVU l  �W�c�bW b   �XYX b   � Z[Z b   � �\]\ b   � �^_^ l  � �`�a�`` c   � �aba o   � ��_�_ (0 sourcefolderparent sourceFolderParentb m   � ��^
�^ 
TEXT�a  �`  _ l  � �c�]�\c n   � �ded 1   � ��[
�[ 
pname 4   � ��Zf
�Z 
cfolf o   � ��Y�Y 0 sourcefolder sourceFolder�]  �\  ] m   � �gg �hh  _[ o   � ��X�X 0 
datestring 
dateStringY m   ii �jj  . z i p�c  �b  V m  �W
�W 
alisT �Vk�U
�V 
inshk o  �T�T 0 targetfolder targetFolder�U  �e  
 m   � �ll�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �~  �}   mnm l     �Sop�S  o %  ==============================   p �qq >   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =n rsr l     �R�Q�P�R  �Q  �P  s tut l     �Ovw�O  v ' ! 3 beeps at the end of the script   w �xx B   3   b e e p s   a t   t h e   e n d   o f   t h e   s c r i p tu yzy l -{�N�M{ U  -|}| k  (~~ � I  �L�K�J
�L .sysobeepnull��� ��� long�K  �J  � ��I� I !(�H��G
�H .sysodelanull��� ��� nmbr� m  !$�� ?�333333�G  �I  } m  �F�F �N  �M  z ��E� l     �D�C�B�D  �C  �B  �E       �A�  "��A  � �@�?�>�@ ,0 propertysourcefolder propertySourceFolder�? ,0 propertytargetfolder propertyTargetFolder
�> .aevtoappnull  �   � ****� �=��<�;���:
�= .aevtoappnull  �   � ****� k    -��  7��  h��  u��  ���  ���  ���  ���  ��� �� y�9�9  �<  �;  �  � , ?�8 N�7�6�5�4�3�2�1�0�/�.�-�,�+�*�) � ��(�'�&l�%�$�##�"�!=EGIK� �gi�����
�8 
prmp
�7 
dflc
�6 afdrdocs
�5 .earsffdralis        afdr�4 
�3 .sysostflalis    ��� null�2 0 sourcefolder sourceFolder
�1 
TEXT�0 20 sourcefolderasstringmac sourceFolderAsStringMac
�/ 
psxp�. 40 sourcefolderasstringunix sourceFolderAsStringUnix
�- 
ctxt�,���+ 20 sourcefolderunixshorted sourceFolderUnixShorted
�* 
strq�) 00 sourcefolderunixquoted sourceFolderUnixQuoted�( 0 targetfolder targetFolder�' 20 targetfolderasstringmac targetFolderAsStringMac�& 40 targetfolderasstringunix targetFolderAsStringUnix
�% 
ctnr
�$ 
alis�# (0 sourcefolderparent sourceFolderParent
�" .sysoexecTEXT���     TEXT�! 0 
datestring 
dateString
�  
cfol
� 
pnam
� 
insh
� .coremovenull���     obj 
� .sysobeepnull��� ��� long
� .sysodelanull��� ��� nmbr�:.b   �  *����j � E�O�Ec   Y 	b   E�O��&E�O��,E�O�[�\[Zk\Z�2E�O�a ,E` Ob  a   "*�a ��j � E` O_ Ec  Y b  E` O_ �&E` O_ �,E` Oa  t�a ,a &E` Oa j E` Oa _ �,a ,%a %_ %a  %_ %a !%_ %a "%j O_ �&*a #�/a $,%a %%_ %a &%a &a '_ l (UO mkh*j )Oa *j +[OY�� ascr  ��ޭ