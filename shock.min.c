#include<stdarg.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#define m return
#define R int
#define F malloc
#define L strlen
#define C char
#define W while
#define U(left, right) strcmp(l2b(left),l2b(right))==0
typedef struct O{R s;struct O*l;}ll;ll E(R c,...){va_list _l;va_start(_l,c);ll __;__.s=c;__.l=F(16UL*c);for(R i=0;i<c;i++){__.l[i]=va_arg(_l,ll);}m __;}ll p(ll _l,ll e,R fl){ll nl;nl.s=_l.s+1;nl.l=F(16UL*nl.s);for(R i=0;i<nl.s;i++){nl.l[i]=_l.l[i];}nl.l[_l.s]=e;if(fl)free(_l.l);m nl;}C*l2b(ll _l){C*cs[_l.s];R l=2;for(R i=0;i<_l.s;i++){cs[i]=l2b(_l.l[i]);l+=L(cs[i]);}C*o=F(l);o[0]='0';R k=1;for(R i=0;i<_l.s;i++){for(R j=0;j<L(cs[i]);j++){o[k++]=cs[i][j];}}o[k++]='1';m o;}ll q[7];void N(){q[0]=E(0);q[1]=q[0];q[2]=E(1,q[0]);q[3]=E(2, q[0],q[0]);q[4]=E(3,q[0],q[0]);q[5]=E(3,q[2],q[2],q[0]);q[6]=E(3,q[2],q[2],q[2]);}ll r(ll t,ll v,ll s){if(U(t,v))m s;if(U(t.l[0],q[2])&&t.s==3&&U(v,t.l[1])){ll n=p(t.l[1],q[0],0);m E(3,q[2],n,r(t.l[2],t.l[1],n));}ll n=E(0);for(R i=0;i<t.s;i++){ll e=t.l[i];n=p(n,r(e,v,s),1);}m n;}ll b2l(C* c){R s=L(c);ll t=E(0);R i=0;W(i<s){C f=c[i];if(f=='0'){R z=0;C*d=F(z);R r=0;f=c[++i];W(i<z&&(f!='1'||r>0)){if(f=='0')r++;if(f=='1')r--;d=realloc(d,++z);if(d==NULL){exit(5);}d[z-1]=c[++i];}t=p(t,b2l(d),1);}i++;}m t;}C*bn(R n){C*o=F(n*2+2);o[0]='0';for(R i=0;i<n;i++){o[i*2+1]='0';o[i*2+2]='1';}o[n*2+1]='1';m o;}ll eval(ll t){if(t.s==0)m t;if(U(t.l[0],q[2])&&t.s==3){m E(3,q[2],t.l[1],eval(t.l[2]));}if(U(t.l[0],q[3])&&t.s==3){ll _l=t.l[1];ll _r=t.l[2];if(U(_l.l[0],q[2])&&_l.s==3)m r(_l.l[2],_l.l[1],_r);}m t;}R main(){N();C*s=NULL;size_t G=0;size_t I=0;R c;W((c=getchar())!=EOF){s=realloc(s,I+2);s[I++]=c;}s[I]='\0';printf("%s",l2b(eval(b2l(s))));}