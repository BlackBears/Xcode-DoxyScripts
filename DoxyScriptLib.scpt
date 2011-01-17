FasdUAS 1.101.10   ��   ��    k             l      ��  ��    5 /
 *	Library of handlers common to DoxyScripts
      � 	 	 ^ 
   * 	 L i b r a r y   o f   h a n d l e r s   c o m m o n   t o   D o x y S c r i p t s 
     
  
 l     ��������  ��  ��        i         I      �������� V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument��  ��    k     V       O     S    k    R       I   	������
�� .miscactvnull��� ��� null��  ��        l   
 
��  ��    � � 
			the Xcode dictionary appears not to expose the current source document being edited;
			so this workaround loops through every source document until finding one
			that has a selection.
		     �  �   
 	 	 	 t h e   X c o d e   d i c t i o n a r y   a p p e a r s   n o t   t o   e x p o s e   t h e   c u r r e n t   s o u r c e   d o c u m e n t   b e i n g   e d i t e d ; 
 	 	 	 s o   t h i s   w o r k a r o u n d   l o o p s   t h r o u g h   e v e r y   s o u r c e   d o c u m e n t   u n t i l   f i n d i n g   o n e 
 	 	 	 t h a t   h a s   a   s e l e c t i o n . 
 	 	      I  
 �� ��
�� .sysodelanull��� ��� nmbr  m   
      ?ə�������     !�� ! X    R "�� # " Q   " M $ % & $ k   % D ' '  ( ) ( l  % %�� * +��   * B < get the selected range, if 1st item > 2nd item then nothing    + � , , x   g e t   t h e   s e l e c t e d   r a n g e ,   i f   1 s t   i t e m   >   2 n d   i t e m   t h e n   n o t h i n g )  - . - l  % %�� / 0��   / 8 2 was selected, in which case notify user and bail.    0 � 1 1 d   w a s   s e l e c t e d ,   i n   w h i c h   c a s e   n o t i f y   u s e r   a n d   b a i l . .  2 3 2 l  % %�� 4 5��   4 I C if error -1728 generated, then there isn't even an insertion point    5 � 6 6 �   i f   e r r o r   - 1 7 2 8   g e n e r a t e d ,   t h e n   t h e r e   i s n ' t   e v e n   a n   i n s e r t i o n   p o i n t 3  7 8 7 l  % %�� 9 :��   9   in that document.    : � ; ; $   i n   t h a t   d o c u m e n t . 8  < = < r   % * > ? > l  % ( @���� @ n   % ( A B A 1   & (��
�� 
xscr B o   % &���� 0 	adocument 	aDocument��  ��   ? o      ���� 0 selectedrange selectedRange =  C�� C Z   + D D E�� F D ?   + 4 G H G n   + / I J I 4  , /�� K
�� 
cobj K m   - .����  J o   + ,���� 0 selectedrange selectedRange H n   / 3 L M L 4  0 3�� N
�� 
cobj N m   1 2����  M o   / 0���� 0 selectedrange selectedRange E k   7 ? O O  P Q P I  7 <�� R��
�� .sysodlogaskr        TEXT R m   7 8 S S � T T   N o t h i n g   s e l e c t e d��   Q  U�� U L   = ? V V m   = >�������  ��   F L   B D W W o   B C���� 0 selectedrange selectedRange��   % R      ������
�� .ascrerr ****      � ****��  ��   & l  L L�� X Y��   X  
nothing			    Y � Z Z  n o t h i n g 	 	 	�� 0 	adocument 	aDocument # 2    ��
�� 
docu��    m      [ [�                                                                                      @ alis    H  MadCow                     �.�H+   #�	Xcode.app                                                       ,��L�        ����  	                Applications    �.�B      �MM�     #� #�  $MadCow:Xcode4:Applications:Xcode.app   	 X c o d e . a p p    M a d C o w  Xcode4/Applications/Xcode.app   / ��     \�� \ L   T V ] ] m   T U�������     ^ _ ^ l     ��������  ��  ��   _  ` a ` l      �� b c��   b � �
 *	make the substitution by getting the selection, convertion RTF to string
 *	assembling a shell script, then executing the script and pasting result
 *	back into Xcode
     c � d dX 
   * 	 m a k e   t h e   s u b s t i t u t i o n   b y   g e t t i n g   t h e   s e l e c t i o n ,   c o n v e r t i o n   R T F   t o   s t r i n g 
   * 	 a s s e m b l i n g   a   s h e l l   s c r i p t ,   t h e n   e x e c u t i n g   t h e   s c r i p t   a n d   p a s t i n g   r e s u l t 
   * 	 b a c k   i n t o   X c o d e 
   a  e f e i     g h g I      �� i���� F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath i  j k j o      ���� 0 theselection theSelection k  l�� l o      ���� 0 
scriptpath 
scriptPath��  ��   h k     M m m  n o n r      p q p n      r s r I    �������� 00 copyselectionfromxcode copySelectionFromXcode��  ��   s  f      q o      ���� "0 selectedtextrtf selectedTextRTF o  t u t I   �� v��
�� .sysodelanull��� ��� nmbr v m    	 w w ?�      ��   u  x y x Q    3 z { | z k    & } }  ~  ~ I   �� ���
�� .JonspClpnull���     **** � n     � � � m    ��
�� 
TEXT � l    ����� � I   ���� �
�� .JonsgClp****    ��� null��   � �� ���
�� 
rtyp � m    ��
�� 
reco��  ��  ��  ��     ��� � r    & � � � I   $������
�� .JonsgClp****    ��� null��  ��   � o      ���� (0 plaintextselection plainTextSelection��   { R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg��   | I  . 3�� ���
�� .sysodlogaskr        TEXT � o   . /���� 0 errmsg errMsg��   y  � � � r   4 = � � � n   4 ; � � � I   5 ;�� ����� P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath �  � � � o   5 6���� (0 plaintextselection plainTextSelection �  ��� � o   6 7���� 0 
scriptpath 
scriptPath��  ��   �  f   4 5 � o      ���� 0 scriptcommand scriptCommand �  � � � r   > F � � � n   > D � � � I   ? D�� ����� 20 responsewithshellscript responseWithShellScript �  ��� � o   ? @���� 0 scriptcommand scriptCommand��  ��   �  f   > ? � o      ����  0 scriptresponse scriptResponse �  ��� � n   G M � � � I   H M�� ����� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument �  ��� � o   H I����  0 scriptresponse scriptResponse��  ��   �  f   G H��   f  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � L F
 *	Get the contents of the selection from Xcode onto the pasteboard
     � � � � � 
   * 	 G e t   t h e   c o n t e n t s   o f   t h e   s e l e c t i o n   f r o m   X c o d e   o n t o   t h e   p a s t e b o a r d 
   �  � � � i     � � � I      �������� 00 copyselectionfromxcode copySelectionFromXcode��  ��   � O      � � � O     � � � I   �� � �
�� .prcskprsnull���    utxt � m     � � � � �  c � �� ���
�� 
faal � J     � �  ��� � m    ��
�� eMdsKcmd��  ��   � 4    �� �
�� 
prcs � m     � � � � � 
 X c o d e � m      � ��                                                                                  sevs  alis    |  MadCow                     �.�H+    +System Events.app                                               +��7��        ����  	                CoreServices    �.�B      �8'7      +   �   �  4MadCow:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a d C o w  -System/Library/CoreServices/System Events.app   / ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � % 
 * Assemble the shell script
     � � � � > 
   *   A s s e m b l e   t h e   s h e l l   s c r i p t 
   �  � � � i     � � � I      �� ����� P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath �  � � � o      ���� (0 plaintextselection plainTextSelection �  ��� � o      ���� "0 shellscriptpath shellScriptPath��  ��   � k      � �  � � � r     	 � � � b      � � � b      � � � o     ���� "0 shellscriptpath shellScriptPath � m     � � � � �    � n     � � � 1    ��
�� 
strq � o    ���� (0 plaintextselection plainTextSelection � o      ���� (0 shellscriptcommand shellScriptCommand �  ��� � L   
  � � o   
 ���� (0 shellscriptcommand shellScriptCommand��   �  � � � l     ��������  ��  ��   �  � � � l      � � ��   � < 6
 *	Execute the shell script and return its response
     � � � � l 
   * 	 E x e c u t e   t h e   s h e l l   s c r i p t   a n d   r e t u r n   i t s   r e s p o n s e 
   �  � � � i     � � � I      �~ ��}�~ 20 responsewithshellscript responseWithShellScript �  ��| � o      �{�{  0 theshellscript theShellScript�|  �}   � k     
 � �  � � � r      � � � I    �z ��y
�z .sysoexecTEXT���     TEXT � o     �x�x  0 theshellscript theShellScript�y   � o      �w�w 0 response   �  ��v � L    
 � � o    	�u�u 0 response  �v   �  � � � l     �t�s�r�t  �s  �r   �  � � � l      �q � ��q   � d ^
 *	Paste modified (and original) text back into Xcode, replacing the original
 *	selection.
     � � � � � 
   * 	 P a s t e   m o d i f i e d   ( a n d   o r i g i n a l )   t e x t   b a c k   i n t o   X c o d e ,   r e p l a c i n g   t h e   o r i g i n a l 
   * 	 s e l e c t i o n . 
   �  ��p � i     � � � I      �o ��n�o 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument �  ��m � o      �l�l 0 modifiedtext modifiedText�m  �n   � k      � �  � � � I    �k ��j
�k .JonspClpnull���     **** � o     �i�i 0 modifiedtext modifiedText�j   �  ��h � O       O   
  I   �g
�g .prcskprsnull���    utxt m     �  v �f�e
�f 
faal J    		 
�d
 m    �c
�c eMdsKcmd�d  �e   4   
 �b
�b 
prcs m     � 
 X c o d e m    �                                                                                  sevs  alis    |  MadCow                     �.�H+    +System Events.app                                               +��7��        ����  	                CoreServices    �.�B      �8'7      +   �   �  4MadCow:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a d C o w  -System/Library/CoreServices/System Events.app   / ��  �h  �p       �a�a   �`�_�^�]�\�[�` V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�_ F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�^ 00 copyselectionfromxcode copySelectionFromXcode�] P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�\ 20 responsewithshellscript responseWithShellScript�[ 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument �Z �Y�X�W�Z V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�Y  �X   �V�U�V 0 	adocument 	aDocument�U 0 selectedrange selectedRange  [�T  �S�R�Q�P�O�N S�M�L�K�J
�T .miscactvnull��� ��� null
�S .sysodelanull��� ��� nmbr
�R 
docu
�Q 
kocl
�P 
cobj
�O .corecnte****       ****
�N 
xscr
�M .sysodlogaskr        TEXT�L��K  �J  �W W� P*j O�j O A*�-[��l kh   $��,E�O��k/��l/ �j 
O�Y �W X  h[OY��UO� �I h�H�G�F�I F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�H �E�E   �D�C�D 0 theselection theSelection�C 0 
scriptpath 
scriptPath�G   �B�A�@�?�>�=�<�B 0 theselection theSelection�A 0 
scriptpath 
scriptPath�@ "0 selectedtextrtf selectedTextRTF�? (0 plaintextselection plainTextSelection�> 0 errmsg errMsg�= 0 scriptcommand scriptCommand�<  0 scriptresponse scriptResponse �; w�:�9�8�7�6�5�4�3�2�1�0�/�; 00 copyselectionfromxcode copySelectionFromXcode
�: .sysodelanull��� ��� nmbr
�9 
rtyp
�8 
reco
�7 .JonsgClp****    ��� null
�6 
TEXT
�5 .JonspClpnull���     ****�4 0 errmsg errMsg�3  
�2 .sysodlogaskr        TEXT�1 P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�0 20 responsewithshellscript responseWithShellScript�/ 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument�F N)j+  E�O�j O *��l �,j O*j E�W X  	�j 
O)��l+ E�O)�k+ E�O)�k+  �. ��-�,�+�. 00 copyselectionfromxcode copySelectionFromXcode�-  �,      ��* � ��)�(�'
�* 
prcs
�) 
faal
�( eMdsKcmd
�' .prcskprsnull���    utxt�+ � *��/ ���kvl UU �& ��%�$�#�& P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�% �"�"   �!� �! (0 plaintextselection plainTextSelection�  "0 shellscriptpath shellScriptPath�$   ���� (0 plaintextselection plainTextSelection� "0 shellscriptpath shellScriptPath� (0 shellscriptcommand shellScriptCommand  ��
� 
strq�# ��%��,%E�O� � ��� !�� 20 responsewithshellscript responseWithShellScript� �"� "  ��  0 theshellscript theShellScript�    ���  0 theshellscript theShellScript� 0 response  ! �
� .sysoexecTEXT���     TEXT� �j  E�O� � ���#$�� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument� �%� %  �� 0 modifiedtext modifiedText�  # �� 0 modifiedtext modifiedText$ ��
�	��
� .JonspClpnull���     ****
�
 
prcs
�	 
faal
� eMdsKcmd
� .prcskprsnull���    utxt� �j  O� *��/ ���kvl UU ascr  ��ޭ