
		$SP,"",BI=1$






























U0 SpriteText(U8 *elems)
{
  CSprite *tmpg=elems-offset(CSprite.start);
  U8 *st;
  while (tmpg->type&SPG_TYPE_MASK) {
//Study this routine $LK,"SpriteElem2Summary",A="MN:SpriteElem2Summary"$().
    st=SpriteElem2Summary(tmpg);
    "%s\n",st;
    Free(st);
    tmpg(U8 *)+=SpriteElemSize(tmpg);
  }
}

"$$PURPLE$$**** LINE SUMMARIES ****$$FG$$\n";
SpriteText($IB,"<1>",BI=1$);

"\n\n$$PURPLE$$**** ENTIRE SPRITE CODE ****$$FG$$\n";
Sprite2Code(,$IB,"<1>",BI=1$);
        �     ��������O   �          !                -                     
         )   
   5   	   5   
	   5      /   
   ����!      
      %      
       '       
!   '      9   
����#   ����1   
����   ����   	�  
   ?   �m۾}��y��I�$I�$I�$��4���}��}۾�۶m߶m۶m۶m��m۶m۶M۶m۶m۶mӶm��m��o߷}{����ֵې I$I�$I�,H� 	�$H�$A�$I$I�$I� I�$	� A� �]۶m۶m۶m۷m۶m۶o۶�۶m߶m��m۶}۶m��mo[�m�6o۶n۶m۶m�  