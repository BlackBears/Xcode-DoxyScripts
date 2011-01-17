FasdUAS 1.101.10   ��   ��    k             l      ��  ��    5 /
 *	Library of handlers common to DoxyScripts
      � 	 	 ^ 
   * 	 L i b r a r y   o f   h a n d l e r s   c o m m o n   t o   D o x y S c r i p t s 
     
  
 l     ��������  ��  ��        i         I      �������� V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument��  ��    k     Z       O     W    k    V       I   	������
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
      ?ə�������     !�� ! X    V "�� # " Q   " Q $ % & $ k   % H ' '  ( ) ( r   % * * + * n   % ( , - , 1   & (��
�� 
sele - o   % &���� 0 	adocument 	aDocument + o      ���� 0 testselection testSelection )  . / . l   + +�� 0 1��   0 S M
					make sure this is a real selection and not just an insertion point
				    1 � 2 2 � 
 	 	 	 	 	 m a k e   s u r e   t h i s   i s   a   r e a l   s e l e c t i o n   a n d   n o t   j u s t   a n   i n s e r t i o n   p o i n t 
 	 	 	 	 /  3 4 3 Q   + F 5 6 7 5 n   . 2 8 9 8 1   / 1��
�� 
pALL 9 o   . /���� 0 testselection testSelection 6 R      �� : ;
�� .ascrerr ****      � **** : o      ���� 0 errmsg errMsg ; �� <��
�� 
errn < o      ���� 0 errnum errNum��   7 Z   : F = >���� = =  : = ? @ ? o   : ;���� 0 errnum errNum @ m   ; <�����H > L   @ B A A o   @ A���� 0 testselection testSelection��  ��   4  B�� B l  G G��������  ��  ��  ��   % R      ������
�� .ascrerr ****      � ****��  ��   & l  P P�� C D��   C  
nothing			    D � E E  n o t h i n g 	 	 	�� 0 	adocument 	aDocument # 2    ��
�� 
docu��    m      F F�                                                                                      @ alis    H  MadCow                     �.�H+   #�	Xcode.app                                                       ,��L�        ����  	                Applications    �.�B      �MM�     #� #�  $MadCow:Xcode4:Applications:Xcode.app   	 X c o d e . a p p    M a d C o w  Xcode4/Applications/Xcode.app   / ��     G�� G L   X Z H H m   X Y�������     I J I l     ��������  ��  ��   J  K L K l      �� M N��   M � �
 *	make the substitution by getting the selection, convertion RTF to string
 *	assembling a shell script, then executing the script and pasting result
 *	back into Xcode
     N � O OX 
   * 	 m a k e   t h e   s u b s t i t u t i o n   b y   g e t t i n g   t h e   s e l e c t i o n ,   c o n v e r t i o n   R T F   t o   s t r i n g 
   * 	 a s s e m b l i n g   a   s h e l l   s c r i p t ,   t h e n   e x e c u t i n g   t h e   s c r i p t   a n d   p a s t i n g   r e s u l t 
   * 	 b a c k   i n t o   X c o d e 
   L  P Q P i     R S R I      �� T���� F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath T  U V U o      ���� 0 theselection theSelection V  W�� W o      ���� 0 
scriptpath 
scriptPath��  ��   S k     M X X  Y Z Y r      [ \ [ n      ] ^ ] I    �������� 00 copyselectionfromxcode copySelectionFromXcode��  ��   ^  f      \ o      ���� "0 selectedtextrtf selectedTextRTF Z  _ ` _ I   �� a��
�� .sysodelanull��� ��� nmbr a m    	 b b ?�      ��   `  c d c Q    3 e f g e k    & h h  i j i I   �� k��
�� .JonspClpnull���     **** k n     l m l m    ��
�� 
TEXT m l    n���� n I   ���� o
�� .JonsgClp****    ��� null��   o �� p��
�� 
rtyp p m    ��
�� 
reco��  ��  ��  ��   j  q�� q r    & r s r I   $������
�� .JonsgClp****    ��� null��  ��   s o      ���� (0 plaintextselection plainTextSelection��   f R      �� t��
�� .ascrerr ****      � **** t o      ���� 0 errmsg errMsg��   g I  . 3�� u��
�� .sysodlogaskr        TEXT u o   . /���� 0 errmsg errMsg��   d  v w v r   4 = x y x n   4 ; z { z I   5 ;�� |���� P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath |  } ~ } o   5 6���� (0 plaintextselection plainTextSelection ~  ��  o   6 7���� 0 
scriptpath 
scriptPath��  ��   {  f   4 5 y o      ���� 0 scriptcommand scriptCommand w  � � � r   > F � � � n   > D � � � I   ? D�� ����� 20 responsewithshellscript responseWithShellScript �  ��� � o   ? @���� 0 scriptcommand scriptCommand��  ��   �  f   > ? � o      ����  0 scriptresponse scriptResponse �  ��� � n   G M � � � I   H M�� ����� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument �  ��� � o   H I����  0 scriptresponse scriptResponse��  ��   �  f   G H��   Q  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � L F
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
   �  � � � i     � � � I      �� ���� 20 responsewithshellscript responseWithShellScript �  ��~ � o      �}�}  0 theshellscript theShellScript�~  �   � k     
 � �  � � � r      � � � I    �| ��{
�| .sysoexecTEXT���     TEXT � o     �z�z  0 theshellscript theShellScript�{   � o      �y�y 0 response   �  ��x � L    
 � � o    	�w�w 0 response  �x   �  � � � l     �v�u�t�v  �u  �t   �  � � � l      �s � ��s   � d ^
 *	Paste modified (and original) text back into Xcode, replacing the original
 *	selection.
     � � � � � 
   * 	 P a s t e   m o d i f i e d   ( a n d   o r i g i n a l )   t e x t   b a c k   i n t o   X c o d e ,   r e p l a c i n g   t h e   o r i g i n a l 
   * 	 s e l e c t i o n . 
   �  ��r � i     � � � I      �q ��p�q 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument �  ��o � o      �n�n 0 modifiedtext modifiedText�o  �p   � k      � �  � � � I    �m ��l
�m .JonspClpnull���     **** � o     �k�k 0 modifiedtext modifiedText�l   �  ��j � O     � � � O   
  � � � I   �i � �
�i .prcskprsnull���    utxt � m     � � � � �  v � �h ��g
�h 
faal � J     � �  ��f � m    �e
�e eMdsKcmd�f  �g   � 4   
 �d �
�d 
prcs � m     � � � � � 
 X c o d e � m     � ��                                                                                  sevs  alis    |  MadCow                     �.�H+    +System Events.app                                               +��7��        ����  	                CoreServices    �.�B      �8'7      +   �   �  4MadCow:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a d C o w  -System/Library/CoreServices/System Events.app   / ��  �j  �r       �c � � � � � � �c   � �b�a�`�_�^�]�b V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�a F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�` 00 copyselectionfromxcode copySelectionFromXcode�_ P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�^ 20 responsewithshellscript responseWithShellScript�] 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument � �\ �[�Z�Y�\ V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�[  �Z   �X�W�V�U�X 0 	adocument 	aDocument�W 0 testselection testSelection�V 0 errmsg errMsg�U 0 errnum errNum  F�T  �S�R�Q�P�O�N�M�L�K�J�I�H
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
sele
�M 
pALL�L 0 errmsg errMsg �G�F�E
�G 
errn�F 0 errnum errNum�E  �K�H�J  �I  �H��Y [� T*j O�j O E*�-[��l kh   (��,E�O 	��,EW X 
 ��  �Y hOPW X  h[OY��UO� � �D S�C�B�A�D F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�C �@�@   �?�>�? 0 theselection theSelection�> 0 
scriptpath 
scriptPath�B   �=�<�;�:�9�8�7�= 0 theselection theSelection�< 0 
scriptpath 
scriptPath�; "0 selectedtextrtf selectedTextRTF�: (0 plaintextselection plainTextSelection�9 0 errmsg errMsg�8 0 scriptcommand scriptCommand�7  0 scriptresponse scriptResponse �6 b�5�4�3�2�1�0�/�.�-�,�+�*�6 00 copyselectionfromxcode copySelectionFromXcode
�5 .sysodelanull��� ��� nmbr
�4 
rtyp
�3 
reco
�2 .JonsgClp****    ��� null
�1 
TEXT
�0 .JonspClpnull���     ****�/ 0 errmsg errMsg�.  
�- .sysodlogaskr        TEXT�, P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�+ 20 responsewithshellscript responseWithShellScript�* 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument�A N)j+  E�O�j O *��l �,j O*j E�W X  	�j 
O)��l+ E�O)�k+ E�O)�k+  � �) ��(�'�&�) 00 copyselectionfromxcode copySelectionFromXcode�(  �'      ��% � ��$�#�"
�% 
prcs
�$ 
faal
�# eMdsKcmd
�" .prcskprsnull���    utxt�& � *��/ ���kvl UU � �! �� �	
��! P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�  ��   ��� (0 plaintextselection plainTextSelection� "0 shellscriptpath shellScriptPath�  	 ���� (0 plaintextselection plainTextSelection� "0 shellscriptpath shellScriptPath� (0 shellscriptcommand shellScriptCommand
  ��
� 
strq� ��%��,%E�O� � � ����� 20 responsewithshellscript responseWithShellScript� ��   ��  0 theshellscript theShellScript�   ���  0 theshellscript theShellScript� 0 response   �
� .sysoexecTEXT���     TEXT� �j  E�O�  � ����
� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument� �	�	   �� 0 modifiedtext modifiedText�   �� 0 modifiedtext modifiedText � �� � ����
� .JonspClpnull���     ****
� 
prcs
� 
faal
� eMdsKcmd
� .prcskprsnull���    utxt�
 �j  O� *��/ ���kvl UUascr  ��ޭ