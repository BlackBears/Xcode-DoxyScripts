FasdUAS 1.101.10   ��   ��    k             p         ������ $0 currentsourcedoc currentSourceDoc��      	  p       
 
 ������ "0 shellscriptpath shellScriptPath��   	     l     ��������  ��  ��        l      ��  ��    f ` *** NOTE: this path needs to be modified to point to wherever your saved Doxygen-class.pl  ***      �   �   * * *   N O T E :   t h i s   p a t h   n e e d s   t o   b e   m o d i f i e d   t o   p o i n t   t o   w h e r e v e r   y o u r   s a v e d   D o x y g e n - c l a s s . p l     * * *        l     ����  r         m        �   L ~ / D e v e l o p m e n t / S c r i p t s / D o x y g e n - c l a s s . p l  o      ���� "0 shellscriptpath shellScriptPath��  ��        l     ��������  ��  ��        l   Y ����  O    Y    k    X      ! " ! I   ������
�� .miscactvnull��� ��� null��  ��   "  # $ # l    �� % &��   % � � 
		the Xcode dictionary appears not to expose the current source document being edited;
		so this workaround loops through every source document until finding one
		that has a selection.
	    & � ' 'z   
 	 	 t h e   X c o d e   d i c t i o n a r y   a p p e a r s   n o t   t o   e x p o s e   t h e   c u r r e n t   s o u r c e   d o c u m e n t   b e i n g   e d i t e d ; 
 	 	 s o   t h i s   w o r k a r o u n d   l o o p s   t h r o u g h   e v e r y   s o u r c e   d o c u m e n t   u n t i l   f i n d i n g   o n e 
 	 	 t h a t   h a s   a   s e l e c t i o n . 
 	 $  (�� ( X    X )�� * ) Q     S + , - + k   # J . .  / 0 / r   # ( 1 2 1 n   # & 3 4 3 1   $ &��
�� 
sele 4 o   # $���� 0 	adocument 	aDocument 2 o      ���� 0 testselection testSelection 0  5 6 5 l   ) )�� 7 8��   7 Q K
				make sure this is a real selection and not just an insertion point
			    8 � 9 9 � 
 	 	 	 	 m a k e   s u r e   t h i s   i s   a   r e a l   s e l e c t i o n   a n d   n o t   j u s t   a n   i n s e r t i o n   p o i n t 
 	 	 	 6  : ; : Q   ) H < = > < n   , 0 ? @ ? 1   - /��
�� 
pALL @ o   , -���� 0 testselection testSelection = R      �� A B
�� .ascrerr ****      � **** A o      ���� 0 errmsg errMsg B �� C��
�� 
errn C o      ���� 0 errnum errNum��   > Z   8 H D E���� D =  8 ; F G F o   8 9���� 0 errnum errNum G m   9 :�����H E n   > D H I H I   ? D�� J���� *0 substituteselection substituteSelection J  K�� K o   ? @���� 0 testselection testSelection��  ��   I  f   > ?��  ��   ;  L�� L l  I I��������  ��  ��  ��   , R      ������
�� .ascrerr ****      � ****��  ��   - l  R R�� M N��   M  
nothing			    N � O O  n o t h i n g 	 	 	�� 0 	adocument 	aDocument * 2    ��
�� 
docu��    m     P P�                                                                                      @ alis    H  MadCow                     �.�H+   #�	Xcode.app                                                       ,��L�        ����  	                Applications    �.�B      �MM�     #� #�  $MadCow:Xcode4:Applications:Xcode.app   	 X c o d e . a p p    M a d C o w  Xcode4/Applications/Xcode.app   / ��  ��  ��     Q R Q l     ��������  ��  ��   R  S T S l      �� U V��   U � �
 *	make the substitution by getting the selection, convertion RTF to string
 *	assembling a shell script, then executing the script and pasting result
 *	back into Xcode
     V � W WX 
   * 	 m a k e   t h e   s u b s t i t u t i o n   b y   g e t t i n g   t h e   s e l e c t i o n ,   c o n v e r t i o n   R T F   t o   s t r i n g 
   * 	 a s s e m b l i n g   a   s h e l l   s c r i p t ,   t h e n   e x e c u t i n g   t h e   s c r i p t   a n d   p a s t i n g   r e s u l t 
   * 	 b a c k   i n t o   X c o d e 
   T  X Y X i      Z [ Z I      �� \���� *0 substituteselection substituteSelection \  ]�� ] o      ���� 0 theselection theSelection��  ��   [ k     L ^ ^  _ ` _ r      a b a n      c d c I    �������� 00 copyselectionfromxcode copySelectionFromXcode��  ��   d  f      b o      ���� "0 selectedtextrtf selectedTextRTF `  e f e I   �� g��
�� .sysodelanull��� ��� nmbr g m    	 h h ?�      ��   f  i j i Q    3 k l m k k    & n n  o p o I   �� q��
�� .JonspClpnull���     **** q n     r s r m    ��
�� 
TEXT s l    t���� t I   ���� u
�� .JonsgClp****    ��� null��   u �� v��
�� 
rtyp v m    ��
�� 
reco��  ��  ��  ��   p  w�� w r    & x y x I   $������
�� .JonsgClp****    ��� null��  ��   y o      ���� (0 plaintextselection plainTextSelection��   l R      �� z��
�� .ascrerr ****      � **** z o      ���� 0 errmsg errMsg��   m I  . 3�� {��
�� .sysodlogaskr        TEXT { o   . /���� 0 errmsg errMsg��   j  | } | r   4 < ~  ~ n   4 : � � � I   5 :�� ����� 40 shellscriptwithselection shellScriptWithSelection �  ��� � o   5 6���� (0 plaintextselection plainTextSelection��  ��   �  f   4 5  o      ���� 0 scriptcommand scriptCommand }  � � � r   = E � � � n   = C � � � I   > C�� ����� 20 responsewithshellscript responseWithShellScript �  ��� � o   > ?���� 0 scriptcommand scriptCommand��  ��   �  f   = > � o      ����  0 scriptresponse scriptResponse �  ��� � n   F L � � � I   G L�� ����� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument �  ��� � o   G H����  0 scriptresponse scriptResponse��  ��   �  f   F G��   Y  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � L F
 *	Get the contents of the selection from Xcode onto the pasteboard
     � � � � � 
   * 	 G e t   t h e   c o n t e n t s   o f   t h e   s e l e c t i o n   f r o m   X c o d e   o n t o   t h e   p a s t e b o a r d 
   �  � � � i     � � � I      �������� 00 copyselectionfromxcode copySelectionFromXcode��  ��   � O      � � � O     � � � I   �� � �
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
   �  � � � i     � � � I      �� ����� 40 shellscriptwithselection shellScriptWithSelection �  ��� � o      ���� (0 plaintextselection plainTextSelection��  ��   � k      � �  � � � r     	 � � � b      � � � b      � � � o     ���� "0 shellscriptpath shellScriptPath � m     � � � � �    � n     � � � 1    ��
�� 
strq � o    ���� (0 plaintextselection plainTextSelection � o      ���� (0 shellscriptcommand shellScriptCommand �  ��� � L   
  � � o   
 ���� (0 shellscriptcommand shellScriptCommand��   �  � � � l     ��~�}�  �~  �}   �  � � � l      �| � ��|   � < 6
 *	Execute the shell script and return its response
     � � � � l 
   * 	 E x e c u t e   t h e   s h e l l   s c r i p t   a n d   r e t u r n   i t s   r e s p o n s e 
   �  � � � i     � � � I      �{ ��z�{ 20 responsewithshellscript responseWithShellScript �  ��y � o      �x�x  0 theshellscript theShellScript�y  �z   � k     
 � �  � � � r      � � � I    �w ��v
�w .sysoexecTEXT���     TEXT � o     �u�u  0 theshellscript theShellScript�v   � o      �t�t 0 response   �  ��s � L    
 � � o    	�r�r 0 response  �s   �  � � � l     �q�p�o�q  �p  �o   �  � � � l      �n � ��n   � d ^
 *	Paste modified (and original) text back into Xcode, replacing the original
 *	selection.
     � � � � � 
   * 	 P a s t e   m o d i f i e d   ( a n d   o r i g i n a l )   t e x t   b a c k   i n t o   X c o d e ,   r e p l a c i n g   t h e   o r i g i n a l 
   * 	 s e l e c t i o n . 
   �  ��m � i     � � � I      �l ��k�l 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument �  ��j � o      �i�i 0 modifiedtext modifiedText�j  �k   � k      � �  � � � I    �h ��g
�h .JonspClpnull���     **** � o     �f�f 0 modifiedtext modifiedText�g   �  ��e � O     � � � O   
  � � � I   �d � �
�d .prcskprsnull���    utxt � m     � � � � �  v � �c ��b
�c 
faal � J     � �  ��a � m    �`
�` eMdsKcmd�a  �b   � 4   
 �_ �
�_ 
prcs � m     � � � � � 
 X c o d e � m     � ��                                                                                  sevs  alis    |  MadCow                     �.�H+    +System Events.app                                               +��7��        ����  	                CoreServices    �.�B      �8'7      +   �   �  4MadCow:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a d C o w  -System/Library/CoreServices/System Events.app   / ��  �e  �m       �^ � � � � �^   � �]�\�[�Z�Y�X�] *0 substituteselection substituteSelection�\ 00 copyselectionfromxcode copySelectionFromXcode�[ 40 shellscriptwithselection shellScriptWithSelection�Z 20 responsewithshellscript responseWithShellScript�Y 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument
�X .aevtoappnull  �   � **** � �W [�V�U�T�W *0 substituteselection substituteSelection�V �S�S   �R�R 0 theselection theSelection�U   �Q�P�O�N�M�L�Q 0 theselection theSelection�P "0 selectedtextrtf selectedTextRTF�O (0 plaintextselection plainTextSelection�N 0 errmsg errMsg�M 0 scriptcommand scriptCommand�L  0 scriptresponse scriptResponse �K h�J�I�H�G�F�E�D�C�B�A�@�?�K 00 copyselectionfromxcode copySelectionFromXcode
�J .sysodelanull��� ��� nmbr
�I 
rtyp
�H 
reco
�G .JonsgClp****    ��� null
�F 
TEXT
�E .JonspClpnull���     ****�D 0 errmsg errMsg�C  
�B .sysodlogaskr        TEXT�A 40 shellscriptwithselection shellScriptWithSelection�@ 20 responsewithshellscript responseWithShellScript�? 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument�T M)j+  E�O�j O *��l �,j O*j E�W X  	�j 
O)�k+ E�O)�k+ E�O)�k+  � �> ��=�<�;�> 00 copyselectionfromxcode copySelectionFromXcode�=  �<      ��: � ��9�8�7
�: 
prcs
�9 
faal
�8 eMdsKcmd
�7 .prcskprsnull���    utxt�; � *��/ ���kvl UU � �6 ��5�4	�3�6 40 shellscriptwithselection shellScriptWithSelection�5 �2
�2 
  �1�1 (0 plaintextselection plainTextSelection�4   �0�/�0 (0 plaintextselection plainTextSelection�/ (0 shellscriptcommand shellScriptCommand	 �. ��-�. "0 shellscriptpath shellScriptPath
�- 
strq�3 ��%��,%E�O�  �, ��+�*�)�, 20 responsewithshellscript responseWithShellScript�+ �(�(   �'�'  0 theshellscript theShellScript�*   �&�%�&  0 theshellscript theShellScript�% 0 response   �$
�$ .sysoexecTEXT���     TEXT�) �j  E�O� �# ��"�!� �# 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument�" ��   �� 0 modifiedtext modifiedText�!   �� 0 modifiedtext modifiedText � �� � ����
� .JonspClpnull���     ****
� 
prcs
� 
faal
� eMdsKcmd
� .prcskprsnull���    utxt�  �j  O� *��/ ���kvl UU ����
� .aevtoappnull  �   � **** k     Y    ��  �  �   ���� 0 	adocument 	aDocument� 0 errmsg errMsg� 0 errnum errNum  � P�����
�	�������� "0 shellscriptpath shellScriptPath
� .miscactvnull��� ��� null
� 
docu
� 
kocl
� 
cobj
�
 .corecnte****       ****
�	 
sele� 0 testselection testSelection
� 
pALL� 0 errmsg errMsg �� ��
� 
errn�  0 errnum errNum��  ��H� *0 substituteselection substituteSelection�  �  � Z�E�O� R*j O I*�-[��l kh   ,��,E�O 	��,EW X  ��  )�k+ Y hOPW X  h[OY��Uascr  ��ޭ