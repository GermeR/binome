package postfixees;

%%

%unicode
%line
%column

ENTIER_SIMPLE=[0-9]+
PLUS=[+]|plus
FIN_LIGNE=[\s\n]
MINUS=[-]|minus
MULT=[*]|mult
QUO=[/]|quo
OPP=opp
%%

{ENTIER_SIMPLE}
      { return new Valeur(yytext()); }

{PLUS}
      { return new Plus(yytext()); }

{FIN_LIGNE}
      { return new Plus(yytext()); }

{MINUS}
      { return new Plus(yytext()); }

{MULT}
      { return new Plus(yytext()); }

{QUO}
      { return new Plus(yytext()); }

{OPP}
      { return new Plus(yytext()); }

/* ajouter le cas des espaces et fins de ligne */

/* ajouter les autres tokens */
