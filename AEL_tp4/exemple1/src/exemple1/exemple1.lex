/* Exemple 1 */
package exemple1;

%%

%unicode


ENTIER_SIMPLE=[0-9]+
OPERATEUR=[-+*/]
IDENTIFICATEUR=[:letter:][[:letter:][0-9]]*
%% 

{ENTIER_SIMPLE}|{OPERATEUR}|{IDENTIFICATEUR}
      {return new Yytoken(yytext());}


[^[:letter:][0-9][-+*/]]
      {}  
