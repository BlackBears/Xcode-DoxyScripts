FasdUAS 1.101.10   ��   ��    k             l      ��  ��    5 /
 *	Library of handlers common to DoxyScripts
      � 	 	 ^ 
   * 	 L i b r a r y   o f   h a n d l e r s   c o m m o n   t o   D o x y S c r i p t s 
     
  
 l     ��������  ��  ��        i         I      �������� V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument��  ��    k     U       O     L    k    K       I   	������
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
      ?���������     !�� ! X    K "�� # " Q   " F $ % & $ k   % = ' '  ( ) ( l  % %�� * +��   * B < get the selected range, if 1st item > 2nd item then nothing    + � , , x   g e t   t h e   s e l e c t e d   r a n g e ,   i f   1 s t   i t e m   >   2 n d   i t e m   t h e n   n o t h i n g )  - . - l  % %�� / 0��   / 8 2 was selected, in which case notify user and bail.    0 � 1 1 d   w a s   s e l e c t e d ,   i n   w h i c h   c a s e   n o t i f y   u s e r   a n d   b a i l . .  2 3 2 l  % %�� 4 5��   4 I C if error -1728 generated, then there isn't even an insertion point    5 � 6 6 �   i f   e r r o r   - 1 7 2 8   g e n e r a t e d ,   t h e n   t h e r e   i s n ' t   e v e n   a n   i n s e r t i o n   p o i n t 3  7 8 7 l  % %�� 9 :��   9   in that document.    : � ; ; $   i n   t h a t   d o c u m e n t . 8  < = < r   % * > ? > l  % ( @���� @ n   % ( A B A 1   & (��
�� 
xscr B o   % &���� 0 	adocument 	aDocument��  ��   ? o      ���� 0 selectedrange selectedRange =  C�� C Z   + = D E���� D A   + 4 F G F n   + / H I H 4  , /�� J
�� 
cobj J m   - .����  I o   + ,���� 0 selectedrange selectedRange G n   / 3 K L K 4  0 3�� M
�� 
cobj M m   1 2����  L o   / 0���� 0 selectedrange selectedRange E L   7 9 N N o   7 8���� 0 selectedrange selectedRange��  ��  ��   % R      ������
�� .ascrerr ****      � ****��  ��   & l  E E�� O P��   O  
nothing			    P � Q Q  n o t h i n g 	 	 	�� 0 	adocument 	aDocument # 2    ��
�� 
docu��    m      R R�                                                                                      @ alis    H  MadCow                     �.�H+   #�	Xcode.app                                                       ,��L�        ����  	                Applications    �.�B      �MM�     #� #�  $MadCow:Xcode4:Applications:Xcode.app   	 X c o d e . a p p    M a d C o w  Xcode4/Applications/Xcode.app   / ��     S T S I  M R�� U��
�� .sysodlogaskr        TEXT U m   M N V V � W W   N o t h i n g   s e l e c t e d��   T  X�� X L   S U Y Y m   S T�������     Z [ Z l     ��������  ��  ��   [  \ ] \ l      �� ^ _��   ^ � �
 *	make the substitution by getting the selection, convertion RTF to string
 *	assembling a shell script, then executing the script and pasting result
 *	back into Xcode
     _ � ` `X 
   * 	 m a k e   t h e   s u b s t i t u t i o n   b y   g e t t i n g   t h e   s e l e c t i o n ,   c o n v e r t i o n   R T F   t o   s t r i n g 
   * 	 a s s e m b l i n g   a   s h e l l   s c r i p t ,   t h e n   e x e c u t i n g   t h e   s c r i p t   a n d   p a s t i n g   r e s u l t 
   * 	 b a c k   i n t o   X c o d e 
   ]  a b a i     c d c I      �� e���� F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath e  f g f o      ���� 0 theselection theSelection g  h�� h o      ���� 0 
scriptpath 
scriptPath��  ��   d k     M i i  j k j r      l m l n      n o n I    �������� 00 copyselectionfromxcode copySelectionFromXcode��  ��   o  f      m o      ���� "0 selectedtextrtf selectedTextRTF k  p q p I   �� r��
�� .sysodelanull��� ��� nmbr r m    	 s s ?�      ��   q  t u t Q    3 v w x v k    & y y  z { z I   �� |��
�� .JonspClpnull���     **** | n     } ~ } m    ��
�� 
TEXT ~ l    ����  I   ���� �
�� .JonsgClp****    ��� null��   � �� ���
�� 
rtyp � m    ��
�� 
reco��  ��  ��  ��   {  ��� � r    & � � � I   $������
�� .JonsgClp****    ��� null��  ��   � o      ���� (0 plaintextselection plainTextSelection��   w R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg��   x I  . 3�� ���
�� .sysodlogaskr        TEXT � o   . /���� 0 errmsg errMsg��   u  � � � r   4 = � � � n   4 ; � � � I   5 ;�� ����� P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath �  � � � o   5 6���� (0 plaintextselection plainTextSelection �  ��� � o   6 7���� 0 
scriptpath 
scriptPath��  ��   �  f   4 5 � o      ���� 0 scriptcommand scriptCommand �  � � � r   > F � � � n   > D � � � I   ? D�� ����� 20 responsewithshellscript responseWithShellScript �  ��� � o   ? @���� 0 scriptcommand scriptCommand��  ��   �  f   > ? � o      ����  0 scriptresponse scriptResponse �  ��� � n   G M � � � I   H M�� ����� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument �  ��� � o   H I����  0 scriptresponse scriptResponse��  ��   �  f   G H��   b  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � L F
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
 ���� (0 shellscriptcommand shellScriptCommand��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � < 6
 *	Execute the shell script and return its response
     � � � � l 
   * 	 E x e c u t e   t h e   s h e l l   s c r i p t   a n d   r e t u r n   i t s   r e s p o n s e 
   �  � � � i     � � � I      � ��~� 20 responsewithshellscript responseWithShellScript �  ��} � o      �|�|  0 theshellscript theShellScript�}  �~   � k     
 � �  � � � r      � � � I    �{ ��z
�{ .sysoexecTEXT���     TEXT � o     �y�y  0 theshellscript theShellScript�z   � o      �x�x 0 response   �  ��w � L    
 � � o    	�v�v 0 response  �w   �  � � � l     �u�t�s�u  �t  �s   �  � � � l      �r � ��r   � d ^
 *	Paste modified (and original) text back into Xcode, replacing the original
 *	selection.
     � � � � � 
   * 	 P a s t e   m o d i f i e d   ( a n d   o r i g i n a l )   t e x t   b a c k   i n t o   X c o d e ,   r e p l a c i n g   t h e   o r i g i n a l 
   * 	 s e l e c t i o n . 
   �  ��q � i     � � � I      �p ��o�p 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument �  ��n � o      �m�m 0 modifiedtext modifiedText�n  �o   � k      � �  � � � I    �l ��k
�l .JonspClpnull���     **** � o     �j�j 0 modifiedtext modifiedText�k   �  ��i � O     � � � O   
  � � � I   �h 
�h .prcskprsnull���    utxt  m     �  v �g�f
�g 
faal J     �e m    �d
�d eMdsKcmd�e  �f   � 4   
 �c
�c 
prcs m     �		 
 X c o d e � m    

�                                                                                  sevs  alis    |  MadCow                     �.�H+    +System Events.app                                               +��7��        ����  	                CoreServices    �.�B      �8'7      +   �   �  4MadCow:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a d C o w  -System/Library/CoreServices/System Events.app   / ��  �i  �q       �b�b   �a�`�_�^�]�\�a V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�` F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�_ 00 copyselectionfromxcode copySelectionFromXcode�^ P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�] 20 responsewithshellscript responseWithShellScript�\ 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument �[ �Z�Y�X�[ V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�Z  �Y   �W�V�W 0 	adocument 	aDocument�V 0 selectedrange selectedRange  R�U  �T�S�R�Q�P�O�N�M V�L�K
�U .miscactvnull��� ��� null
�T .sysodelanull��� ��� nmbr
�S 
docu
�R 
kocl
�Q 
cobj
�P .corecnte****       ****
�O 
xscr�N  �M  
�L .sysodlogaskr        TEXT�K��X V� I*j O�j O :*�-[��l kh   ��,E�O��k/��l/ �Y hW X 	 
h[OY��UO�j O� �J d�I�H�G�J F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�I �F�F   �E�D�E 0 theselection theSelection�D 0 
scriptpath 
scriptPath�H   �C�B�A�@�?�>�=�C 0 theselection theSelection�B 0 
scriptpath 
scriptPath�A "0 selectedtextrtf selectedTextRTF�@ (0 plaintextselection plainTextSelection�? 0 errmsg errMsg�> 0 scriptcommand scriptCommand�=  0 scriptresponse scriptResponse �< s�;�:�9�8�7�6�5�4�3�2�1�0�< 00 copyselectionfromxcode copySelectionFromXcode
�; .sysodelanull��� ��� nmbr
�: 
rtyp
�9 
reco
�8 .JonsgClp****    ��� null
�7 
TEXT
�6 .JonspClpnull���     ****�5 0 errmsg errMsg�4  
�3 .sysodlogaskr        TEXT�2 P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�1 20 responsewithshellscript responseWithShellScript�0 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument�G N)j+  E�O�j O *��l �,j O*j E�W X  	�j 
O)��l+ E�O)�k+ E�O)�k+  �/ ��.�-�,�/ 00 copyselectionfromxcode copySelectionFromXcode�.  �-      ��+ � ��*�)�(
�+ 
prcs
�* 
faal
�) eMdsKcmd
�( .prcskprsnull���    utxt�, � *��/ ���kvl UU �' ��&�%�$�' P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�& �#�#   �"�!�" (0 plaintextselection plainTextSelection�! "0 shellscriptpath shellScriptPath�%   � ���  (0 plaintextselection plainTextSelection� "0 shellscriptpath shellScriptPath� (0 shellscriptcommand shellScriptCommand  ��
� 
strq�$ ��%��,%E�O� � ����� 20 responsewithshellscript responseWithShellScript� ��   ��  0 theshellscript theShellScript�   ���  0 theshellscript theShellScript� 0 response   �
� .sysoexecTEXT���     TEXT� �j  E�O� � ��� �� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument� �!� !  �� 0 modifiedtext modifiedText�   �� 0 modifiedtext modifiedText  �
��
�	�
� .JonspClpnull���     ****
� 
prcs
�
 
faal
�	 eMdsKcmd
� .prcskprsnull���    utxt� �j  O� *��/ ���kvl UUascr  ��ޭ