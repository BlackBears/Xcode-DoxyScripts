FasdUAS 1.101.10   ��   ��    k             p         ������ "0 shellscriptpath shellScriptPath��      	  l     ��������  ��  ��   	  
  
 l     ��  ��    D > NOTE: modify scriptLibraryPath to point to the shared library     �   |   N O T E :   m o d i f y   s c r i p t L i b r a r y P a t h   t o   p o i n t   t o   t h e   s h a r e d   l i b r a r y      l     ����  r         m        �   T ~ / L i b r a r y / S c r i p t s / X c o d e / D o x y S c r i p t L i b . s c p t  o      ���� &0 scriptlibrarypath scriptLibraryPath��  ��        l     ��������  ��  ��        l     ��  ��    G A NOTE: modify shellScriptPath to point to Doxygen-class.pl script     �   �   N O T E :   m o d i f y   s h e l l S c r i p t P a t h   t o   p o i n t   t o   D o x y g e n - c l a s s . p l   s c r i p t      l    ����  r       !   m     " " � # # N ~ / D e v e l o p m e n t / S c r i p t s / D o x y g e n - m e t h o d . p l ! o      ���� "0 shellscriptpath shellScriptPath��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( , & if the path includes tilde, expand it    ) � * * L   i f   t h e   p a t h   i n c l u d e s   t i l d e ,   e x p a n d   i t '  + , + l    -���� - r     . / . n     0 1 0 I   	 �� 2���� 0 expandtilde expandTilde 2  3�� 3 o   	 
���� &0 scriptlibrarypath scriptLibraryPath��  ��   1  f    	 / o      ���� &0 expandedtildepath expandedTildePath��  ��   ,  4 5 4 l     �� 6 7��   6   load the shared library    7 � 8 8 0   l o a d   t h e   s h a r e d   l i b r a r y 5  9 : 9 l    ;���� ; r     < = < I   �� >��
�� .sysoloadscpt        file > c     ? @ ? 4    �� A
�� 
psxf A o    ���� &0 expandedtildepath expandedTildePath @ m    ��
�� 
alis��   = o      ���� 0 	scriptlib 	scriptLib��  ��   :  B C B l     ��������  ��  ��   C  D E D l   % F���� F r    % G H G n    # I J I I    #�������� V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument��  ��   J o    ���� 0 	scriptlib 	scriptLib H o      ����  0 xcodeselection xcodeSelection��  ��   E  K L K l  & 2 M���� M Z   & 2 N O���� N =  & ) P Q P o   & '����  0 xcodeselection xcodeSelection Q m   ' (����� O k   , . R R  S T S l  , ,�� U V��   U   bail if no selection    V � W W *   b a i l   i f   n o   s e l e c t i o n T  X�� X L   , .����  ��  ��  ��  ��  ��   L  Y Z Y l  3 : [���� [ n   3 : \ ] \ I   4 :�� ^���� F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath ^  _ ` _ o   4 5����  0 xcodeselection xcodeSelection `  a�� a o   5 6���� "0 shellscriptpath shellScriptPath��  ��   ] o   3 4���� 0 	scriptlib 	scriptLib��  ��   Z  b c b l     ��������  ��  ��   c  d e d l      �� f g��   f ~ x
	Code for tilde expansion by Adrian Nier and is used here
	with attribution.
	URL:  http://www.mac-spezialist.de/code/
    g � h h � 
 	 C o d e   f o r   t i l d e   e x p a n s i o n   b y   A d r i a n   N i e r   a n d   i s   u s e d   h e r e 
 	 w i t h   a t t r i b u t i o n . 
 	 U R L :     h t t p : / / w w w . m a c - s p e z i a l i s t . d e / c o d e / 
 e  i�� i i      j k j I      �� l���� 0 expandtilde expandTilde l  m�� m o      ���� 0 
_posixpath 
_posixPath��  ��   k k     f n n  o p o Z     q r���� q H      s s C      t u t o     ���� 0 
_posixpath 
_posixPath u m     v v � w w  ~ r L    	 x x o    ���� 0 
_posixpath 
_posixPath��  ��   p  y z y r     { | { n     } ~ } 1    ��
�� 
psxp ~ l    ����  I   �� ���
�� .earsffdralis        afdr � m    ��
�� afdrcusr��  ��  ��   | o      ���� "0 _homefolderpath _homeFolderPath z  � � � r     � � � 1    ��
�� 
txdl � o      ���� 0 _prvdlmt _prvDlmt �  � � � r    # � � � m     � � � � �   � 1    "��
�� 
txdl �  � � � Z   $ = � ����� � D   $ ' � � � o   $ %���� "0 _homefolderpath _homeFolderPath � m   % & � � � � �  / � r   * 9 � � � c   * 7 � � � n   * 5 � � � 7  + 5�� � �
�� 
cha  � m   / 1����  � m   2 4������ � o   * +���� "0 _homefolderpath _homeFolderPath � m   5 6��
�� 
TEXT � o      ���� "0 _homefolderpath _homeFolderPath��  ��   �  � � � Q   > ] � � � � r   A R � � � c   A P � � � b   A N � � � o   A B���� "0 _homefolderpath _homeFolderPath � n   B M � � � 7  C M�� � �
�� 
cha  � m   G I����  � m   J L������ � o   B C���� 0 
_posixpath 
_posixPath � m   N O��
�� 
TEXT � o      ���� 0 
_posixpath 
_posixPath � R      ������
�� .ascrerr ****      � ****��  ��   � r   Z ] � � � o   Z [���� "0 _homefolderpath _homeFolderPath � o      ���� 0 
_posixpath 
_posixPath �  � � � r   ^ c � � � o   ^ _���� 0 _prvdlmt _prvDlmt � 1   _ b��
�� 
txdl �  ��� � L   d f � � o   d e���� 0 
_posixpath 
_posixPath��  ��       
�� � � �  " � � �����   � ������������������ 0 expandtilde expandTilde
�� .aevtoappnull  �   � ****�� &0 scriptlibrarypath scriptLibraryPath�� "0 shellscriptpath shellScriptPath�� &0 expandedtildepath expandedTildePath�� 0 	scriptlib 	scriptLib��  0 xcodeselection xcodeSelection��   � �� k���� � ����� 0 expandtilde expandTilde�� �� ���  �  ���� 0 
_posixpath 
_posixPath��   � ��~�}� 0 
_posixpath 
_posixPath�~ "0 _homefolderpath _homeFolderPath�} 0 _prvdlmt _prvDlmt �  v�|�{�z�y � ��x�w�v�u�t
�| afdrcusr
�{ .earsffdralis        afdr
�z 
psxp
�y 
txdl
�x 
cha �w��
�v 
TEXT�u  �t  �� g�� �Y hO�j �,E�O*�,E�O�*�,FO�� �[�\[Zk\Z�2�&E�Y hO ��[�\[Zl\Zi2%�&E�W 
X 
 �E�O�*�,FO� � �s ��r�q � ��p
�s .aevtoappnull  �   � **** � k     : � �   � �   � �  + � �  9 � �  D � �  K � �  Y�o�o  �r  �q   �   �  �n "�m�l�k�j�i�h�g�f�e�d�c�n &0 scriptlibrarypath scriptLibraryPath�m "0 shellscriptpath shellScriptPath�l 0 expandtilde expandTilde�k &0 expandedtildepath expandedTildePath
�j 
psxf
�i 
alis
�h .sysoloadscpt        file�g 0 	scriptlib 	scriptLib�f V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�e  0 xcodeselection xcodeSelection�d��c F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�p ;�E�O�E�O)�k+ E�O*��/�&j E�O�j+ 
E�O��  hY hO���l+  � � � � h / U s e r s / a l a n / L i b r a r y / S c r i p t s / X c o d e / D o x y S c r i p t L i b . s c p t � �b �  ��b   � k       � �  � � � l      �a � ��a   � 5 /
 *	Library of handlers common to DoxyScripts
     � � � � ^ 
   * 	 L i b r a r y   o f   h a n d l e r s   c o m m o n   t o   D o x y S c r i p t s 
   �  � � � l     �`�_�^�`  �_  �^   �  � � � i      � � � I      �]�\�[�] V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�\  �[   � k     V � �  � � � O     S � � � k    R � �  � � � I   	�Z�Y�X
�Z .miscactvnull��� ��� null�Y  �X   �  � � � l   
 
�W � ��W   � � � 
			the Xcode dictionary appears not to expose the current source document being edited;
			so this workaround loops through every source document until finding one
			that has a selection.
		    � � � ��   
 	 	 	 t h e   X c o d e   d i c t i o n a r y   a p p e a r s   n o t   t o   e x p o s e   t h e   c u r r e n t   s o u r c e   d o c u m e n t   b e i n g   e d i t e d ; 
 	 	 	 s o   t h i s   w o r k a r o u n d   l o o p s   t h r o u g h   e v e r y   s o u r c e   d o c u m e n t   u n t i l   f i n d i n g   o n e 
 	 	 	 t h a t   h a s   a   s e l e c t i o n . 
 	 	 �  � � � I  
 �V ��U
�V .sysodelanull��� ��� nmbr � m   
  � � ?ə������U   �  ��T � X    R ��S � � Q   " M � � � � k   % D � �  � � � l  % %�R � ��R   � B < get the selected range, if 1st item > 2nd item then nothing    � � � � x   g e t   t h e   s e l e c t e d   r a n g e ,   i f   1 s t   i t e m   >   2 n d   i t e m   t h e n   n o t h i n g �  � � � l  % %�Q � ��Q   � 8 2 was selected, in which case notify user and bail.    � � � � d   w a s   s e l e c t e d ,   i n   w h i c h   c a s e   n o t i f y   u s e r   a n d   b a i l . �  � � � l  % %�P � ��P   � I C if error -1728 generated, then there isn't even an insertion point    � � � � �   i f   e r r o r   - 1 7 2 8   g e n e r a t e d ,   t h e n   t h e r e   i s n ' t   e v e n   a n   i n s e r t i o n   p o i n t �  � � � l  % %�O � ��O   �   in that document.    � � � � $   i n   t h a t   d o c u m e n t . �    r   % * l  % (�N�M n   % ( 1   & (�L
�L 
xscr o   % &�K�K 0 	adocument 	aDocument�N  �M   o      �J�J 0 selectedrange selectedRange �I Z   + D	�H
 ?   + 4 n   + / 4  , /�G
�G 
cobj m   - .�F�F  o   + ,�E�E 0 selectedrange selectedRange n   / 3 4  0 3�D
�D 
cobj m   1 2�C�C  o   / 0�B�B 0 selectedrange selectedRange	 k   7 ?  I  7 <�A�@
�A .sysodlogaskr        TEXT m   7 8 �   N o t h i n g   s e l e c t e d�@   �? L   = ? m   = >�>�>��?  �H  
 L   B D o   B C�=�= 0 selectedrange selectedRange�I   � R      �<�;�:
�< .ascrerr ****      � ****�;  �:   � l  L L�9�9    
nothing			    �  n o t h i n g 	 	 	�S 0 	adocument 	aDocument � 2    �8
�8 
docu�T   � m     �                                                                                      @ alis    H  MadCow                     �.�H+   #�	Xcode.app                                                       ,��L�        ����  	                Applications    �.�B      �MM�     #� #�  $MadCow:Xcode4:Applications:Xcode.app   	 X c o d e . a p p    M a d C o w  Xcode4/Applications/Xcode.app   / ��   �  �7  L   T V!! m   T U�6�6��7   � "#" l     �5�4�3�5  �4  �3  # $%$ l      �2&'�2  & � �
 *	make the substitution by getting the selection, convertion RTF to string
 *	assembling a shell script, then executing the script and pasting result
 *	back into Xcode
    ' �((X 
   * 	 m a k e   t h e   s u b s t i t u t i o n   b y   g e t t i n g   t h e   s e l e c t i o n ,   c o n v e r t i o n   R T F   t o   s t r i n g 
   * 	 a s s e m b l i n g   a   s h e l l   s c r i p t ,   t h e n   e x e c u t i n g   t h e   s c r i p t   a n d   p a s t i n g   r e s u l t 
   * 	 b a c k   i n t o   X c o d e 
  % )*) i    +,+ I      �1-�0�1 F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath- ./. o      �/�/ 0 theselection theSelection/ 0�.0 o      �-�- 0 
scriptpath 
scriptPath�.  �0  , k     M11 232 r     454 n     676 I    �,�+�*�, 00 copyselectionfromxcode copySelectionFromXcode�+  �*  7  f     5 o      �)�) "0 selectedtextrtf selectedTextRTF3 898 I   �(:�'
�( .sysodelanull��� ��� nmbr: m    	;; ?�      �'  9 <=< Q    3>?@> k    &AA BCB I   �&D�%
�& .JonspClpnull���     ****D n    EFE m    �$
�$ 
TEXTF l   G�#�"G I   �!� H
�! .JonsgClp****    ��� null�   H �I�
� 
rtypI m    �
� 
reco�  �#  �"  �%  C J�J r    &KLK I   $���
� .JonsgClp****    ��� null�  �  L o      �� (0 plaintextselection plainTextSelection�  ? R      �M�
� .ascrerr ****      � ****M o      �� 0 errmsg errMsg�  @ I  . 3�N�
� .sysodlogaskr        TEXTN o   . /�� 0 errmsg errMsg�  = OPO r   4 =QRQ n   4 ;STS I   5 ;�U�� P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPathU VWV o   5 6�� (0 plaintextselection plainTextSelectionW X�X o   6 7�� 0 
scriptpath 
scriptPath�  �  T  f   4 5R o      �� 0 scriptcommand scriptCommandP YZY r   > F[\[ n   > D]^] I   ? D�_�
� 20 responsewithshellscript responseWithShellScript_ `�	` o   ? @�� 0 scriptcommand scriptCommand�	  �
  ^  f   > ?\ o      ��  0 scriptresponse scriptResponseZ a�a n   G Mbcb I   H M�d�� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocumentd e�e o   H I��  0 scriptresponse scriptResponse�  �  c  f   G H�  * fgf l     �� ���  �   ��  g hih l      ��jk��  j L F
 *	Get the contents of the selection from Xcode onto the pasteboard
    k �ll � 
   * 	 G e t   t h e   c o n t e n t s   o f   t h e   s e l e c t i o n   f r o m   X c o d e   o n t o   t h e   p a s t e b o a r d 
  i mnm i    opo I      �������� 00 copyselectionfromxcode copySelectionFromXcode��  ��  p O     qrq O    sts I   ��uv
�� .prcskprsnull���    utxtu m    ww �xx  cv ��y��
�� 
faaly J    zz {��{ m    ��
�� eMdsKcmd��  ��  t 4    ��|
�� 
prcs| m    }} �~~ 
 X c o d er m     �                                                                                  sevs  alis    |  MadCow                     �.�H+    +System Events.app                                               +��7��        ����  	                CoreServices    �.�B      �8'7      +   �   �  4MadCow:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a d C o w  -System/Library/CoreServices/System Events.app   / ��  n ��� l     ��������  ��  ��  � ��� l      ������  � % 
 * Assemble the shell script
    � ��� > 
   *   A s s e m b l e   t h e   s h e l l   s c r i p t 
  � ��� i    ��� I      ������� P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath� ��� o      ���� (0 plaintextselection plainTextSelection� ���� o      ���� "0 shellscriptpath shellScriptPath��  ��  � k     �� ��� r     	��� b     ��� b     ��� o     ���� "0 shellscriptpath shellScriptPath� m    �� ���   � n    ��� 1    ��
�� 
strq� o    ���� (0 plaintextselection plainTextSelection� o      ���� (0 shellscriptcommand shellScriptCommand� ���� L   
 �� o   
 ���� (0 shellscriptcommand shellScriptCommand��  � ��� l     ��������  ��  ��  � ��� l      ������  � < 6
 *	Execute the shell script and return its response
    � ��� l 
   * 	 E x e c u t e   t h e   s h e l l   s c r i p t   a n d   r e t u r n   i t s   r e s p o n s e 
  � ��� i    ��� I      ������� 20 responsewithshellscript responseWithShellScript� ���� o      ����  0 theshellscript theShellScript��  ��  � k     
�� ��� r     ��� I    �����
�� .sysoexecTEXT���     TEXT� o     ����  0 theshellscript theShellScript��  � o      ���� 0 response  � ���� L    
�� o    	���� 0 response  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � d ^
 *	Paste modified (and original) text back into Xcode, replacing the original
 *	selection.
    � ��� � 
   * 	 P a s t e   m o d i f i e d   ( a n d   o r i g i n a l )   t e x t   b a c k   i n t o   X c o d e ,   r e p l a c i n g   t h e   o r i g i n a l 
   * 	 s e l e c t i o n . 
  � ���� i    ��� I      ������� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument� ���� o      ���� 0 modifiedtext modifiedText��  ��  � k     �� ��� I    �����
�� .JonspClpnull���     ****� o     ���� 0 modifiedtext modifiedText��  � ���� O    ��� O   
 ��� I   ����
�� .prcskprsnull���    utxt� m    �� ���  v� �����
�� 
faal� J    �� ���� m    ��
�� eMdsKcmd��  ��  � 4   
 ���
�� 
prcs� m    �� ��� 
 X c o d e� m    ���                                                                                  sevs  alis    |  MadCow                     �.�H+    +System Events.app                                               +��7��        ����  	                CoreServices    �.�B      �8'7      +   �   �  4MadCow:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a d C o w  -System/Library/CoreServices/System Events.app   / ��  ��  ��   � �����������  � �������������� V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�� F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�� 00 copyselectionfromxcode copySelectionFromXcode�� P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�� 20 responsewithshellscript responseWithShellScript�� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument� �� ����������� V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument��  ��  � ������ 0 	adocument 	aDocument�� 0 selectedrange selectedRange� �� ���������������������
�� .miscactvnull��� ��� null
�� .sysodelanull��� ��� nmbr
�� 
docu
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
xscr
�� .sysodlogaskr        TEXT�����  ��  �� W� P*j O�j O A*�-[��l kh   $��,E�O��k/��l/ �j 
O�Y �W X  h[OY��UO�� ��,���������� F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�� ����� �  ������ 0 theselection theSelection�� 0 
scriptpath 
scriptPath��  � ���������������� 0 theselection theSelection�� 0 
scriptpath 
scriptPath�� "0 selectedtextrtf selectedTextRTF�� (0 plaintextselection plainTextSelection�� 0 errmsg errMsg�� 0 scriptcommand scriptCommand��  0 scriptresponse scriptResponse� ��;�������������������������� 00 copyselectionfromxcode copySelectionFromXcode
�� .sysodelanull��� ��� nmbr
�� 
rtyp
�� 
reco
�� .JonsgClp****    ��� null
�� 
TEXT
�� .JonspClpnull���     ****�� 0 errmsg errMsg��  
�� .sysodlogaskr        TEXT�� P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�� 20 responsewithshellscript responseWithShellScript�� 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument�� N)j+  E�O�j O *��l �,j O*j E�W X  	�j 
O)��l+ E�O)�k+ E�O)�k+ � ��p���������� 00 copyselectionfromxcode copySelectionFromXcode��  ��  �  � ��}w������
�� 
prcs
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���    utxt�� � *��/ ���kvl UU� ������������� P0 &shellscriptwithselectionwithscriptpath &shellScriptWithSelectionWithScriptPath�� ����� �  ������ (0 plaintextselection plainTextSelection�� "0 shellscriptpath shellScriptPath��  � �������� (0 plaintextselection plainTextSelection�� "0 shellscriptpath shellScriptPath�� (0 shellscriptcommand shellScriptCommand� ��
� 
strq�� ��%��,%E�O�� �~��}�|���{�~ 20 responsewithshellscript responseWithShellScript�} �z��z �  �y�y  0 theshellscript theShellScript�|  � �x�w�x  0 theshellscript theShellScript�w 0 response  � �v
�v .sysoexecTEXT���     TEXT�{ �j  E�O�� �u��t�s���r�u 80 pastetextintoxcodedocument pasteTextIntoXcodeDocument�t �q��q �  �p�p 0 modifiedtext modifiedText�s  � �o�o 0 modifiedtext modifiedText� �n��m���l�k�j
�n .JonspClpnull���     ****
�m 
prcs
�l 
faal
�k eMdsKcmd
�j .prcskprsnull���    utxt�r �j  O� *��/ ���kvl UU � �i��i �  �h�g�h ��g ���   ascr  ��ޭ