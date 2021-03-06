FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Xcode-Doxyscript-Property.scpt
	
	Analyzes @property declaration in selected text in Xcode
	and generates Doxygen documentation block for the property,
	and pastes the block into the source file
	
     � 	 	� 
 	 X c o d e - D o x y s c r i p t - P r o p e r t y . s c p t 
 	 
 	 A n a l y z e s   @ p r o p e r t y   d e c l a r a t i o n   i n   s e l e c t e d   t e x t   i n   X c o d e 
 	 a n d   g e n e r a t e s   D o x y g e n   d o c u m e n t a t i o n   b l o c k   f o r   t h e   p r o p e r t y , 
 	 a n d   p a s t e s   t h e   b l o c k   i n t o   t h e   s o u r c e   f i l e 
 	 
   
  
 l     ��������  ��  ��        l     ��  ��     global shellScriptPath     �   , g l o b a l   s h e l l S c r i p t P a t h      l     ��������  ��  ��        l     ��  ��    D > NOTE: modify scriptLibraryPath to point to the shared library     �   |   N O T E :   m o d i f y   s c r i p t L i b r a r y P a t h   t o   p o i n t   t o   t h e   s h a r e d   l i b r a r y      l     ����  r         m        �   l ~ / D e v e l o p m e n t / g i t / X c o d e - D o x y S c r i p t s / D o x y S c r i p t L i b . s c p t  o      ���� &0 scriptlibrarypath scriptLibraryPath��  ��         l     ��������  ��  ��      ! " ! l     �� # $��   # J D NOTE: modify shellScriptPath to point to Doxygen-property.pl script    $ � % % �   N O T E :   m o d i f y   s h e l l S c r i p t P a t h   t o   p o i n t   t o   D o x y g e n - p r o p e r t y . p l   s c r i p t "  & ' & l    (���� ( r     ) * ) m     + + � , , n ~ / D e v e l o p m e n t / g i t / X c o d e - D o x y S c r i p t s / D o x y g e n - p r o p e r t y . p l * o      ���� "0 shellscriptpath shellScriptPath��  ��   '  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1 , & if the path includes tilde, expand it    2 � 3 3 L   i f   t h e   p a t h   i n c l u d e s   t i l d e ,   e x p a n d   i t 0  4 5 4 l    6���� 6 r     7 8 7 n     9 : 9 I   	 �� ;���� 0 expandtilde expandTilde ;  <�� < o   	 
���� &0 scriptlibrarypath scriptLibraryPath��  ��   :  f    	 8 o      ���� &0 expandedtildepath expandedTildePath��  ��   5  = > = l     �� ? @��   ?   load the shared library    @ � A A 0   l o a d   t h e   s h a r e d   l i b r a r y >  B C B l    D���� D r     E F E I   �� G��
�� .sysoloadscpt        file G c     H I H 4    �� J
�� 
psxf J o    ���� &0 expandedtildepath expandedTildePath I m    ��
�� 
alis��   F o      ���� 0 	scriptlib 	scriptLib��  ��   C  K L K l     ��������  ��  ��   L  M N M l   % O���� O r    % P Q P n    # R S R I    #�������� V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument��  ��   S o    ���� 0 	scriptlib 	scriptLib Q o      ����  0 xcodeselection xcodeSelection��  ��   N  T U T l  & 2 V���� V Z   & 2 W X���� W =  & ) Y Z Y o   & '����  0 xcodeselection xcodeSelection Z m   ' (����� X k   , . [ [  \ ] \ l  , ,�� ^ _��   ^   bail if no selection    _ � ` ` *   b a i l   i f   n o   s e l e c t i o n ]  a�� a L   , .����  ��  ��  ��  ��  ��   U  b c b l  3 : d���� d n   3 : e f e I   4 :�� g���� F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath g  h i h o   4 5����  0 xcodeselection xcodeSelection i  j�� j o   5 6���� "0 shellscriptpath shellScriptPath��  ��   f o   3 4���� 0 	scriptlib 	scriptLib��  ��   c  k l k l     ��������  ��  ��   l  m n m l      �� o p��   o ~ x
	Code for tilde expansion by Adrian Nier and is used here
	with attribution.
	URL:  http://www.mac-spezialist.de/code/
    p � q q � 
 	 C o d e   f o r   t i l d e   e x p a n s i o n   b y   A d r i a n   N i e r   a n d   i s   u s e d   h e r e 
 	 w i t h   a t t r i b u t i o n . 
 	 U R L :     h t t p : / / w w w . m a c - s p e z i a l i s t . d e / c o d e / 
 n  r�� r i      s t s I      �� u���� 0 expandtilde expandTilde u  v�� v o      ���� 0 
_posixpath 
_posixPath��  ��   t k     f w w  x y x Z     z {���� z H      | | C      } ~ } o     ���� 0 
_posixpath 
_posixPath ~ m       � � �  ~ { L    	 � � o    ���� 0 
_posixpath 
_posixPath��  ��   y  � � � r     � � � n     � � � 1    ��
�� 
psxp � l    ����� � I   �� ���
�� .earsffdralis        afdr � m    ��
�� afdrcusr��  ��  ��   � o      ���� "0 _homefolderpath _homeFolderPath �  � � � r     � � � 1    ��
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
�� .aevtoappnull  �   � **** � �� t���� � ����� 0 expandtilde expandTilde�� �� ���  �  ���� 0 
_posixpath 
_posixPath��   � �������� 0 
_posixpath 
_posixPath�� "0 _homefolderpath _homeFolderPath�� 0 _prvdlmt _prvDlmt �  ����~�} � ��|�{�z�y�x
�� afdrcusr
� .earsffdralis        afdr
�~ 
psxp
�} 
txdl
�| 
cha �{��
�z 
TEXT�y  �x  �� g�� �Y hO�j �,E�O*�,E�O�*�,FO�� �[�\[Zk\Z�2�&E�Y hO ��[�\[Zl\Zi2%�&E�W 
X 
 �E�O�*�,FO� � �w ��v�u � ��t
�w .aevtoappnull  �   � **** � k     : � �   � �  & � �  4 � �  B � �  M � �  T � �  b�s�s  �v  �u   �   �  �r +�q�p�o�n�m�l�k�j�i�h�g�r &0 scriptlibrarypath scriptLibraryPath�q "0 shellscriptpath shellScriptPath�p 0 expandtilde expandTilde�o &0 expandedtildepath expandedTildePath
�n 
psxf
�m 
alis
�l .sysoloadscpt        file�k 0 	scriptlib 	scriptLib�j V0 )getselectionfromactivexcodesourcedocument )getSelectionFromActiveXcodeSourceDocument�i  0 xcodeselection xcodeSelection�h��g F0 !substituteselectionwithscriptpath !substituteSelectionWithScriptPath�t ;�E�O�E�O)�k+ E�O*��/�&j E�O�j+ 
E�O��  hY hO���l+  ascr  ��ޭ