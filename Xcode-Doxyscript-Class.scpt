FasdUAS 1.101.10   ��   ��    k             p         ������ "0 shellscriptpath shellScriptPath��      	  l     ��������  ��  ��   	  
  
 l     ��  ��    D > NOTE: modify scriptLibraryPath to point to the shared library     �   |   N O T E :   m o d i f y   s c r i p t L i b r a r y P a t h   t o   p o i n t   t o   t h e   s h a r e d   l i b r a r y      l     ����  r         m        �   l ~ / D e v e l o p m e n t / g i t / X c o d e - D o x y S c r i p t s / D o x y S c r i p t L i b . s c p t  o      ���� &0 scriptlibrarypath scriptLibraryPath��  ��        l     ��������  ��  ��        l     ��  ��    G A NOTE: modify shellScriptPath to point to Doxygen-class.pl script     �   �   N O T E :   m o d i f y   s h e l l S c r i p t P a t h   t o   p o i n t   t o   D o x y g e n - c l a s s . p l   s c r i p t      l    ����  r       !   m     " " � # # h ~ / D e v e l o p m e n t / g i t / X c o d e - D o x y S c r i p t s / D o x y g e n - c l a s s . p l ! o      ���� "0 shellscriptpath shellScriptPath��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( , & if the path includes tilde, expand it    ) � * * L   i f   t h e   p a t h   i n c l u d e s   t i l d e ,   e x p a n d   i t '  + , + l    -���� - r     . / . n     0 1 0 I   	 �� 2���� 0 expandtilde expandTilde 2  3�� 3 o   	 
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
_posixPath��  ��       �� � � ���   � ������ 0 expandtilde expandTilde
�� .aevtoappnull  �   � **** � �� k���� � ����� 0 expandtilde expandTilde�� �� ���  �  ���� 0 
_posixpath 
_posixPath��   � �������� 0 
_posixpath 
_posixPath�� "0 _homefolderpath _homeFolderPath�� 0 _prvdlmt _prvDlmt �  v�������� � ���~�}�|�{
�� afdrcusr
�� .earsffdralis        afdr
�� 
psxp
�� 
txdl
� 
cha �~��
�} 
TEXT�|  �{  �� g�� �Y hO�j �,E�O*�,E�O�*�,FO�� �[�\[Zk\Z�2�&E�Y hO ��[�\[Zl\Zi2%�&E�W 
X 
 �E�O�*�,FO� � �z ��y�x � ��w
�z .aevtoappnull  �   � **** � k     : � �   � �   � �  + � �  9 � �  D � �  K � �  Y�v�v  �y  �x   �   �  �u "�t�s�r�q�p�o�n�m�l�k�j�u &0 scriptlibrarypath scriptLibraryPath�t "0 shellscriptpath shellScriptPath�s 0 expandtilde expandTilde�r &0 expandedtildepath expandedTildePath
�q 
psxf
�p 
alis
�o .sysoloadscpt        file�n 0 	scriptlib 	scriptLib�m V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�l  0 xcodeselection xcodeSelection�k��j F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�w ;�E�O�E�O)�k+ E�O*��/�&j E�O�j+ 
E�O��  hY hO���l+ ascr  ��ޭ