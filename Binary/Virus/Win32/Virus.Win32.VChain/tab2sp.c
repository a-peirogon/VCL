#include <stdio.h>

void main() {

  FILE *fi, *fo;
  int i,c,p;	

	fi = fopen( "in.lst", "rt" );
	fo = fopen( "out.lst", "wt" );

	p=0;
	while( (c = fgetc(fi)) != EOF ) {
		if( c == 9 ) {
			for( i=8-p%8 ; i; i--) {
				fputc(32,fo);
				p++;
				}
			continue;
			}
		if( c == 13 ) {
			fputc(c,fo);
			continue;
			}
		if( c == 10 ) {
			fputc(c,fo);
			p=0;
			continue;
			}
		fputc(c,fo);
		p++;
		}

	fclose( fi );
	fclose( fo );

	}

